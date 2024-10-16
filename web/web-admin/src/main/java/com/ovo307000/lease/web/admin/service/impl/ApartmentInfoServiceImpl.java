package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.*;
import com.ovo307000.lease.module.enums.ItemType;
import com.ovo307000.lease.web.admin.mapper.ApartmentInfoMapper;
import com.ovo307000.lease.web.admin.service.ApartmentInfoService;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentDetailVo;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentItemVo;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentQueryVo;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentSubmitVo;
import com.ovo307000.lease.web.admin.vo.fee.FeeValueVo;
import com.ovo307000.lease.web.admin.vo.graph.GraphVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【apartment_info(公寓信息表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
@RequiredArgsConstructor
public class ApartmentInfoServiceImpl extends ServiceImpl<ApartmentInfoMapper, ApartmentInfo>
        implements ApartmentInfoService
{
    private final GraphInfoServiceImpl         graphInfoServiceImpl;
    private final ApartmentLabelServiceImpl    apartmentLabelServiceImpl;
    private final ApartmentFacilityServiceImpl apartmentFacilityServiceImpl;
    private final ApartmentFeeValueServiceImpl apartmentFeeValueServiceImpl;
    private final ApartmentInfoMapper          apartmentInfoMapper;
    private final LabelInfoServiceImpl         labelInfoServiceImpl;
    private final FacilityInfoServiceImpl      facilityInfoServiceImpl;
    private final FeeValueServiceImpl          feeValueServiceImpl;

    /**
     * 保存或更新公寓信息
     *
     * @param apartmentSubmitVo 保存或更新的公寓信息
     * @return 保存或更新的结果
     */
    @Override
    public boolean saveOrUpdateApartment(final ApartmentSubmitVo apartmentSubmitVo)
    {
        // 判断公寓是否已经存在
        final boolean isInDatabase = this.isApartmentExist(apartmentSubmitVo.getId());

        // 异步保存或更新公寓信息
        CompletableFuture.runAsync(() -> super.saveOrUpdate(apartmentSubmitVo));

        // 如果公寓已经存在，则删除原有的图表信息、设施信息、标签信息和费用信息，然后保存新的信息
        if (isInDatabase)
        {
            CompletableFuture.allOf(this.removeGraphInfoAsync(apartmentSubmitVo.getId()),
                                     this.removeApartmentFacilityAsync(apartmentSubmitVo.getId()),
                                     this.removeApartmentLabelAsync(apartmentSubmitVo.getId()),
                                     this.removeApartmentFeeValueAsync(apartmentSubmitVo.getId()))
                             .join();

            CompletableFuture.allOf(this.saveGraphInfoListAsync(apartmentSubmitVo),
                    this.saveApartmentFacilityListAsync(apartmentSubmitVo),
                    this.saveApartmentLabelListAsync(apartmentSubmitVo),
                    this.saveApartmentFeeValueListAsync(apartmentSubmitVo));
        }
        // 如果公寓不存在，则直接保存新的图表信息、设施信息、标签信息和费用信息
        else
        {
            CompletableFuture.allOf(this.saveGraphInfoListAsync(apartmentSubmitVo),
                                     this.saveApartmentFacilityListAsync(apartmentSubmitVo),
                                     this.saveApartmentLabelListAsync(apartmentSubmitVo),
                                     this.saveApartmentFeeValueListAsync(apartmentSubmitVo))
                             .join();
        }

        return true;
    }
    /**
     * 分页查询公寓物品信息
     *
     * @param page 分页对象，用于接收分页查询结果
     * @param queryVo 查询条件对象，用于指定查询条件
     * @return 返回分页查询结果，包含公寓物品信息
     */
    @Override
    public IPage<ApartmentItemVo> pageItem(final Page<ApartmentItemVo> page, final ApartmentQueryVo queryVo)
    {
        return this.apartmentInfoMapper.pageItem(page, queryVo);
    }

    /**
     * 根据ID获取公寓详细信息
     *
     * @param id 公寓ID
     * @return 返回公寓详细信息对象
     */
    @Override
    public ApartmentDetailVo getDetailById(final Long id)
    {
        // 异步获取公寓基本信息
        final CompletableFuture<ApartmentInfo>      apartmentInfoFuture = this.getApartmentInfoAsync(id);
        // 异步获取公寓设施信息
        final CompletableFuture<List<FacilityInfo>> facilityInfoFuture  = this.getFacilityInfoAsync(id);
        // 异步获取公寓图表信息
        final CompletableFuture<List<GraphVo>>      graphInfoFuture     = this.getGraphInfoAsync(id);
        // 异步获取公寓标签信息
        final CompletableFuture<List<LabelInfo>>    labelInfoFuture     = this.getLabelInfoAsync(id);
        // 异步获取公寓费用信息
        final CompletableFuture<List<FeeValueVo>>   feeValueVoFuture    = this.getFeeValueVoAsync(id);

        // 创建公寓详细信息对象
        final ApartmentDetailVo apartmentDetailVo = new ApartmentDetailVo();
        // 将异步获取的公寓基本信息复制到公寓详细信息对象中
        BeanUtils.copyProperties(Objects.requireNonNull(apartmentInfoFuture.join()), apartmentDetailVo);
        // 设置公寓设施信息
        apartmentDetailVo.setFacilityInfoList(facilityInfoFuture.join());
        // 设置公寓图表信息
        apartmentDetailVo.setGraphVoList(graphInfoFuture.join());
        // 设置公寓标签信息
        apartmentDetailVo.setLabelInfoList(labelInfoFuture.join());
        // 设置公寓费用信息
        apartmentDetailVo.setFeeValueVoList(feeValueVoFuture.join());

        // 返回公寓详细信息对象
        return apartmentDetailVo;
    }

    /**
     * 根据ID删除公寓信息
     *
     * @param id 公寓ID
     * @return 返回删除操作是否成功
     */
    @Override
    public boolean removeApartmentById(final Long id)
    {
        // 异步删除公寓相关的图表信息、设施信息、标签信息和费用信息
        CompletableFuture.allOf(this.removeGraphInfoAsync(id),
                               this.removeApartmentFacilityAsync(id),
                               this.removeApartmentLabelAsync(id),
                               this.removeApartmentFeeValueAsync(id))
                       .join();

        // 调用父类方法删除公寓信息
        return super.removeById(id);
    }

    /**
     * 异步获取公寓基本信息
     *
     * @param id 公寓ID
     * @return 返回公寓基本信息的CompletableFuture对象
     */
    private CompletableFuture<ApartmentInfo> getApartmentInfoAsync(final Long id)
    {
        return CompletableFuture.supplyAsync(() -> super.getById(id));
    }
    private CompletableFuture<List<FacilityInfo>> getFacilityInfoAsync(final Long id)
    {
        final LambdaQueryWrapper<ApartmentFacility> apartmentFacilityQueryWrapper = new LambdaQueryWrapper<>();
        apartmentFacilityQueryWrapper.eq(ApartmentFacility::getApartmentId, id);
        final List<ApartmentFacility> apartmentFacilityList = this.apartmentFacilityServiceImpl.list(
                apartmentFacilityQueryWrapper);

        final List<Long> facilityIdList = apartmentFacilityList.stream()
                                                               .map(ApartmentFacility::getFacilityId)
                                                               .toList();
        final LambdaQueryWrapper<FacilityInfo> facilityInfoQueryWrapper = new LambdaQueryWrapper<>();
        facilityInfoQueryWrapper.in(FacilityInfo::getId, facilityIdList);

        return CompletableFuture.supplyAsync(() -> this.facilityInfoServiceImpl.list(facilityInfoQueryWrapper));
    }
    /**
     * 异步获取图表信息
     *
     * @param id 项目ID，用于查询对应图表信息
     * @return 返回一个CompletableFuture，包含图表信息列表
     */
    private CompletableFuture<List<GraphVo>> getGraphInfoAsync(final Long id)
    {
        // 构建查询包装器，用于精确查询图表信息
        final LambdaQueryWrapper<GraphInfo> graphInfoQueryWrapper = new LambdaQueryWrapper<>();
        graphInfoQueryWrapper.eq(GraphInfo::getItemType, ItemType.APARTMENT)
                             .eq(GraphInfo::getItemId, id);

        // 异步获取图表信息，并转换为GraphVo对象列表
        return CompletableFuture.supplyAsync(() -> this.graphInfoServiceImpl.list(graphInfoQueryWrapper))
                                .thenApply(graphInfoList -> graphInfoList.stream()
                                                                         .map(graphInfo -> GraphVo.builder()
                                                                                                  .name(graphInfo.getName())
                                                                                                  .url(graphInfo.getUrl())
                                                                                                  .build())
                                                                         .toList());
    }

    /**
     * 异步获取标签信息
     *
     * @param id 项目ID，用于查询对应的标签信息
     * @return 返回一个CompletableFuture，包含标签信息列表
     */
    private CompletableFuture<List<LabelInfo>> getLabelInfoAsync(final Long id)
    {
        // 构建查询包装器，用于查询公寓标签信息
        final LambdaQueryWrapper<ApartmentLabel> apartmentLabelQueryWrapper = new LambdaQueryWrapper<>();
        apartmentLabelQueryWrapper.eq(ApartmentLabel::getApartmentId, id);
        // 同步获取公寓标签列表
        final List<ApartmentLabel> apartmentLabelList = this.apartmentLabelServiceImpl.list(apartmentLabelQueryWrapper);

        // 提取标签ID列表，用于后续查询
        final List<Long> labelIdList = apartmentLabelList.stream()
                                                         .map(ApartmentLabel::getLabelId)
                                                         .toList();
        // 构建查询包装器，用于根据ID列表查询标签信息
        final LambdaQueryWrapper<LabelInfo> labelInfoQueryWrapper = new LambdaQueryWrapper<>();
        labelInfoQueryWrapper.in(LabelInfo::getId, labelIdList);

        // 异步获取标签信息列表
        return CompletableFuture.supplyAsync(() -> this.labelInfoServiceImpl.list(labelInfoQueryWrapper));
    }

    /**
     * 异步获取费用信息
     *
     * @param id 项目ID，用于查询对应的费用信息
     * @return 返回一个CompletableFuture，包含费用信息列表
     */
    private CompletableFuture<List<FeeValueVo>> getFeeValueVoAsync(final Long id)
    {
        // 构建查询包装器，用于查询公寓费用值信息
        final LambdaQueryWrapper<ApartmentFeeValue> apartmentFeeValueQueryWrapper = new LambdaQueryWrapper<>();
        apartmentFeeValueQueryWrapper.eq(ApartmentFeeValue::getApartmentId, id);
        // 同步获取公寓费用值列表
        final List<ApartmentFeeValue> apartmentFeeValueList = this.apartmentFeeValueServiceImpl.list(
                apartmentFeeValueQueryWrapper);

        // 提取费用值ID列表，用于后续查询
        final List<Long> feeValueIdList = apartmentFeeValueList.stream()
                                                               .map(ApartmentFeeValue::getFeeValueId)
                                                               .toList();
        // 构建查询包装器，用于根据ID列表查询费用信息
        final LambdaQueryWrapper<FeeValue> feeValueVoQueryWrapper = new LambdaQueryWrapper<>();
        feeValueVoQueryWrapper.in(FeeValue::getId, feeValueIdList);

        // 异步获取费用信息，并转换为FeeValueVo对象列表
        return CompletableFuture.supplyAsync(() -> this.feeValueServiceImpl.list(feeValueVoQueryWrapper))
                                .thenApply(feeValueList -> feeValueList.stream()
                                                                       .map(feeValue -> FeeValueVo.builder()
                                                                                                  .feeKeyName(feeValue.getName())
                                                                                                  .build())
                                                                       .toList());
    }
    /**
     * 判断公寓是否存在
     *
     * @param id 公寓ID
     * @return 公寓是否存在
     */
    private boolean isApartmentExist(final Long id)
    {
        return id == null || super.getById(id) != null;
    }

    /**
     * 异步删除指定公寓的图表信息
     *
     * @param id 公寓ID
     * @return 返回一个CompletableFuture，表示异步删除操作的结果
     */
    private CompletableFuture<Boolean> removeGraphInfoAsync(final Long id)
    {
        // 创建查询包装器，用于精确查询图表信息
        final LambdaQueryWrapper<GraphInfo> graphInfoQueryWrapper = new LambdaQueryWrapper<>();
        graphInfoQueryWrapper.eq(GraphInfo::getItemType, ItemType.APARTMENT)
                             .eq(GraphInfo::getItemId, id);

        // 异步执行删除操作，并返回删除结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.graphInfoServiceImpl.remove(graphInfoQueryWrapper));
    }

    /**
     * 异步删除指定公寓的设施信息
     *
     * @param id 公寓ID
     * @return 返回一个CompletableFuture，表示异步删除操作的结果
     */
    private CompletableFuture<Boolean> removeApartmentFacilityAsync(final Long id)
    {
        // 创建查询包装器，用于查询指定公寓的设施信息
        final LambdaQueryWrapper<ApartmentFacility> apartmentFacilityQueryWrapper = new LambdaQueryWrapper<>();
        apartmentFacilityQueryWrapper.eq(ApartmentFacility::getApartmentId, id);

        // 异步执行删除操作，并返回删除结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.apartmentFacilityServiceImpl.remove(
                apartmentFacilityQueryWrapper));
    }

    /**
     * 异步删除指定公寓的标签信息
     *
     * @param id 公寓ID
     * @return 返回一个CompletableFuture，表示异步删除操作的结果
     */
    private CompletableFuture<Boolean> removeApartmentLabelAsync(final Long id)
    {
        // 创建查询包装器，用于查询指定公寓的标签信息
        final LambdaQueryWrapper<ApartmentLabel> apartmentLabelQueryWrapper = new LambdaQueryWrapper<>();
        apartmentLabelQueryWrapper.eq(ApartmentLabel::getApartmentId, id);

        // 异步执行删除操作，并返回删除结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.apartmentLabelServiceImpl.remove(apartmentLabelQueryWrapper));
    }

    /**
     * 异步删除指定公寓的费用信息
     *
     * @param id 公寓ID
     * @return 返回一个CompletableFuture，表示异步删除操作的结果
     */
    private CompletableFuture<Boolean> removeApartmentFeeValueAsync(final Long id)
    {
        // 创建查询包装器，用于查询指定公寓的费用信息
        final LambdaQueryWrapper<ApartmentFeeValue> apartmentFeeValueQueryWrapper = new LambdaQueryWrapper<>();
        apartmentFeeValueQueryWrapper.eq(ApartmentFeeValue::getApartmentId, id);

        // 异步执行删除操作，并返回删除结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.apartmentFeeValueServiceImpl.remove(
                apartmentFeeValueQueryWrapper));
    }

    /**
     * 异步保存公寓的图表信息列表
     *
     * @param apartmentSubmitVo 包含公寓信息的提交对象
     * @return 返回一个CompletableFuture，表示异步保存操作的结果
     */
    private CompletableFuture<Boolean> saveGraphInfoListAsync(final ApartmentSubmitVo apartmentSubmitVo)
    {
        // 将提交对象转换为图表信息列表
        final List<GraphInfo> graphInfoList = Covert.covertToGraphInfo(apartmentSubmitVo);

        // 异步执行保存操作，并返回保存结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.graphInfoServiceImpl.saveBatch(graphInfoList));
    }

    /**
     * 异步保存公寓的设施信息列表
     *
     * @param apartmentSubmitVo 包含公寓信息的提交对象
     * @return 返回一个CompletableFuture，表示异步保存操作的结果
     */
    private CompletableFuture<Boolean> saveApartmentFacilityListAsync(final ApartmentSubmitVo apartmentSubmitVo)
    {
        // 将提交对象转换为设施信息列表
        final List<ApartmentFacility> apartmentFacilityList = Covert.covertToFacilityInfo(apartmentSubmitVo);

        // 异步执行保存操作，并返回保存结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.apartmentFacilityServiceImpl.saveBatch(apartmentFacilityList));
    }

    /**
     * 异步保存公寓的标签信息列表
     *
     * @param apartmentSubmitVo 包含公寓信息的提交对象
     * @return 返回一个CompletableFuture，表示异步保存操作的结果
     */
    private CompletableFuture<Boolean> saveApartmentLabelListAsync(final ApartmentSubmitVo apartmentSubmitVo)
    {
        // 将提交对象转换为标签信息列表
        final List<ApartmentLabel> apartmentLabelList = Covert.covertToApartmentLabel(apartmentSubmitVo);

        // 异步执行保存操作，并返回保存结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.apartmentLabelServiceImpl.saveBatch(apartmentLabelList));
    }

    /**
     * 异步保存公寓的费用信息列表
     *
     * @param apartmentSubmitVo 包含公寓信息的提交对象
     * @return 返回一个CompletableFuture，表示异步保存操作的结果
     */
    private CompletableFuture<Boolean> saveApartmentFeeValueListAsync(final ApartmentSubmitVo apartmentSubmitVo)
    {
        // 将提交对象转换为费用信息列表
        final List<ApartmentFeeValue> apartmentFeeValueList = Covert.covertToFeeValue(apartmentSubmitVo);

        // 异步执行保存操作，并返回保存结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.apartmentFeeValueServiceImpl.saveBatch(apartmentFeeValueList));
    }

    /**
     * 用于将提交的公寓信息转换为各种实体类的工具类
     */
    private static final class Covert
    {
        /**
         * 将ApartmentSubmitVo中的图形信息转换为GraphInfo对象列表
         *
         * @param apartmentSubmitVo 包含公寓提交信息的VO对象
         * @return GraphInfo对象列表，如果没有图形信息则返回空列表
         */
        public static List<GraphInfo> covertToGraphInfo(final ApartmentSubmitVo apartmentSubmitVo)
        {
            // 检查提交的图形信息列表是否为空或null
            if (apartmentSubmitVo.getGraphVoList() == null ||
                apartmentSubmitVo.getGraphVoList()
                                 .isEmpty())
            {
                return List.of();
            }

            // 将图形信息VO列表转换为GraphInfo对象列表
            return apartmentSubmitVo.getGraphVoList()
                                    .stream()
                                    .map(graphVo -> GraphInfo.builder()
                                                             .name(graphVo.getName())
                                                             .itemType(ItemType.APARTMENT)
                                                             .itemId(apartmentSubmitVo.getId())
                                                             .url(graphVo.getUrl())
                                                             .build())
                                    .toList();
        }

        /**
         * 将ApartmentSubmitVo中的设施信息ID转换为ApartmentFacility对象列表
         *
         * @param apartmentSubmitVo 包含公寓提交信息的VO对象
         * @return ApartmentFacility对象列表，如果没有设施信息ID则返回空列表
         */
        public static List<ApartmentFacility> covertToFacilityInfo(final ApartmentSubmitVo apartmentSubmitVo)
        {
            // 检查设施信息ID列表是否为空或null
            if (isListEmpty(apartmentSubmitVo.getFacilityInfoIds()))
            {
                return List.of();
            }

            // 将设施信息ID列表转换为ApartmentFacility对象列表
            return apartmentSubmitVo.getFacilityInfoIds()
                                    .stream()
                                    .map(facilityId -> ApartmentFacility.builder()
                                                                        .apartmentId(apartmentSubmitVo.getId())
                                                                        .facilityId(facilityId)
                                                                        .build())
                                    .toList();
        }

        /**
         * 检查给定的列表是否为空或null
         *
         * @param list 要检查的列表
         * @return 如果列表为空或null，则返回true；否则返回false
         */
        private static <T> boolean isListEmpty(final List<T> list)
        {
            return list == null || list.isEmpty();
        }

        /**
         * 将ApartmentSubmitVo中的标签信息ID转换为ApartmentLabel对象列表
         *
         * @param apartmentSubmitVo 包含公寓提交信息的VO对象
         * @return ApartmentLabel对象列表，如果没有标签信息ID则返回空列表
         */
        public static List<ApartmentLabel> covertToApartmentLabel(final ApartmentSubmitVo apartmentSubmitVo)
        {
            // 检查标签信息ID列表是否为空或null
            if (isListEmpty(apartmentSubmitVo.getLabelIds()))
            {
                return List.of();
            }

            // 将标签信息ID列表转换为ApartmentLabel对象列表
            return apartmentSubmitVo.getLabelIds()
                                    .stream()
                                    .map(labelId -> ApartmentLabel.builder()
                                                                  .apartmentId(apartmentSubmitVo.getId())
                                                                  .labelId(labelId)
                                                                  .build())
                                    .toList();
        }

        /**
         * 将ApartmentSubmitVo中的费用信息ID转换为ApartmentFeeValue对象列表
         *
         * @param apartmentSubmitVo 包含公寓提交信息的VO对象
         * @return ApartmentFeeValue对象列表，如果没有费用信息ID则返回空列表
         */
        public static List<ApartmentFeeValue> covertToFeeValue(final ApartmentSubmitVo apartmentSubmitVo)
        {
            // 检查费用信息ID列表是否为空或null
            if (isListEmpty(apartmentSubmitVo.getFeeValueIds()))
            {
                return List.of();
            }

            // 将费用信息ID列表转换为ApartmentFeeValue对象列表
            return apartmentSubmitVo.getFeeValueIds()
                                    .stream()
                                    .map(feeValueId -> ApartmentFeeValue.builder()
                                                                        .apartmentId(apartmentSubmitVo.getId())
                                                                        .feeValueId(feeValueId)
                                                                        .build())
                                    .toList();
        }
    }
}
