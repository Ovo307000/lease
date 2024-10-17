package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.common.exception.LeaseException;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.module.entity.*;
import com.ovo307000.lease.module.enums.ItemType;
import com.ovo307000.lease.web.admin.mapper.*;
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
import org.springframework.transaction.annotation.Transactional;

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
    private final GraphInfoMapper              graphInfoMapper;
    private final LabelInfoMapper              labelInfoMapper;
    private final ApartmentFeeValueMapper      apartmentFeeValueMapper;
    private final ApartmentFacilityMapper      apartmentFacilityMapper;
    private final RoomInfoMapper               roomInfoMapper;

    /**
     * 保存或更新公寓信息
     *
     * @param apartmentSubmitVo 保存或更新的公寓信息
     * @return 保存或更新的结果
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
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
     * @param page    分页对象，用于接收分页查询结果
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
     * @param apartmentId 公寓ID
     * @return 返回公寓详细信息对象
     */
    @Override
    public ApartmentDetailVo getDetailById(final Long apartmentId)
    {
        // 异步获取公寓基本信息
        final CompletableFuture<ApartmentInfo> apartmentInfo = this.getApartmentInfoAsync(apartmentId);
        // 异步获取公寓图表信息
        final CompletableFuture<List<GraphVo>> graphVoList = this.getGraphVosAsync(apartmentId);
        // 异步获取公寓标签信息
        final CompletableFuture<List<LabelInfo>> labelInfoList = this.getLabelInfoListAsync(apartmentId);
        // 异步获取公寓设施信息
        final CompletableFuture<List<FacilityInfo>> apartmentFacilityList = this.getFacilityListAsync(apartmentId);
        // 异步获取公寓费用信息
        final CompletableFuture<List<FeeValueVo>> apartmentFeeValueList = this.getFeeValueVoListAsync(apartmentId);

        final ApartmentDetailVo apartmentDetailVo = new ApartmentDetailVo();
        // 将异步获取的公寓基本信息复制到详细信息对象中
        BeanUtils.copyProperties(Objects.requireNonNull(apartmentInfo.join(), "公寓信息不存在"), apartmentDetailVo);

        // 设置公寓图表信息
        apartmentDetailVo.setGraphVoList(Objects.requireNonNull(graphVoList.join(), "公寓图表信息不存在"));
        // 设置公寓标签信息
        apartmentDetailVo.setLabelInfoList(Objects.requireNonNull(labelInfoList.join(), "公寓标签信息不存在"));
        // 设置公寓设施信息
        apartmentDetailVo.setFacilityInfoList(Objects.requireNonNull(apartmentFacilityList.join(),
                "公寓设施信息不存在"));
        // 设置公寓费用信息
        apartmentDetailVo.setFeeValueVoList(Objects.requireNonNull(apartmentFeeValueList.join(), "公寓费用信息不存在"));

        return apartmentDetailVo;
    }

    /**
     * 根据公寓ID删除公寓相关信息
     * 此方法首先检查指定的公寓ID是否存在，如果不存在，则抛出异常
     * 接着，异步删除与公寓ID相关的各种信息，包括公寓基本信息、设施信息、标签信息、费用信息和图形信息
     * 只有当所有相关信息都被成功删除时，此方法才返回true
     *
     * @param apartmentId 公寓ID，用于标识需要删除信息的公寓
     * @return 表示是否成功删除所有相关信息的布尔值
     * @throws LeaseException 如果未找到指定的公寓信息，则抛出此异常
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean removeByApartmentId(final Long apartmentId)
    {
        // 检查公寓是否存在，如果不存在则抛出异常
        if (this.getApartmentInfoAsync(apartmentId)
                .join() == null)
        {
            throw new LeaseException(ResultCodeEnum.DATA_NOT_FOUND);
        }

        final LambdaQueryWrapper<RoomInfo> roomInfoQueryWrapper = new LambdaQueryWrapper<>();
        roomInfoQueryWrapper.eq(RoomInfo::getApartmentId, apartmentId);
        if (this.roomInfoMapper.selectCount(roomInfoQueryWrapper) > 0)
        {
            throw new LeaseException(ResultCodeEnum.APARTMENT_HAS_ROOM);
        }

        // 异步删除公寓基本信息、设施信息、标签信息、费用信息和图形信息
        final CompletableFuture<Boolean> removeApartmentInfoFuture     = this.removeApartmentInfoAsync(apartmentId);
        final CompletableFuture<Boolean> removeApartmentFacilityFuture = this.removeApartmentFacilityAsync(apartmentId);
        final CompletableFuture<Boolean> removeApartmentLabelFuture    = this.removeApartmentLabelAsync(apartmentId);
        final CompletableFuture<Boolean> removeApartmentFeeValueFuture = this.removeApartmentFeeValueAsync(apartmentId);
        final CompletableFuture<Boolean> removeGraphInfoFuture         = this.removeGraphInfoAsync(apartmentId);

        // 等待所有删除操作完成，并返回所有操作是否成功的布尔值
        return removeApartmentInfoFuture.join() &&
               removeApartmentFacilityFuture.join() &&
               removeApartmentLabelFuture.join() &&
               removeApartmentFeeValueFuture.join() &&
               removeGraphInfoFuture.join();
    }

    /**
     * 异步删除公寓信息
     *
     * @param apartmentId 公寓ID，用于标识要删除的公寓信息
     * @return 返回一个CompletableFuture对象，该对象的结果表明公寓信息是否被成功删除
     * 结果为true表示成功删除，false表示删除失败
     * <p>
     * 此方法使用异步处理来删除指定ID的公寓信息它通过调用super.removeById方法来实现删除操作，
     * 并使用CompletableFuture.supplyAsync来异步执行该操作这种方法的选择是为了避免在删除操作
     * 过程中阻塞当前线程，特别是在删除操作可能消耗较多时间的场景下
     */
    private CompletableFuture<Boolean> removeApartmentInfoAsync(final Long apartmentId)
    {
        return CompletableFuture.supplyAsync(() -> super.removeById(apartmentId));
    }

    /**
     * 异步获取公寓基本信息
     *
     * @param apartmentId 公寓ID
     * @return 返回公寓信息的CompletableFuture对象
     */
    private CompletableFuture<ApartmentInfo> getApartmentInfoAsync(final Long apartmentId)
    {
        return CompletableFuture.supplyAsync(() -> super.getById(apartmentId));
    }

    /**
     * 异步获取公寓图表信息
     *
     * @param apartmentId 公寓ID
     * @return 返回公寓图表信息列表的CompletableFuture对象
     */
    private CompletableFuture<List<GraphVo>> getGraphVosAsync(final Long apartmentId)
    {
        return CompletableFuture.supplyAsync(() -> this.graphInfoMapper.selectListByItemTypeAndApartmentId(ItemType.APARTMENT,
                apartmentId));
    }

    /**
     * 异步获取公寓标签信息
     *
     * @param apartmentId 公寓ID
     * @return 返回公寓标签信息列表的CompletableFuture对象
     */
    private CompletableFuture<List<LabelInfo>> getLabelInfoListAsync(final Long apartmentId)
    {
        return CompletableFuture.supplyAsync(() -> this.labelInfoMapper.selectListByApartmentId(apartmentId));
    }

    /**
     * 异步获取公寓设施信息
     *
     * @param apartmentId 公寓ID
     * @return 返回公寓设施信息列表的CompletableFuture对象
     */
    private CompletableFuture<List<FacilityInfo>> getFacilityListAsync(final Long apartmentId)
    {
        return CompletableFuture.supplyAsync(() -> this.apartmentFacilityMapper.selectListByApartmentId(apartmentId));
    }

    /**
     * 异步获取公寓费用信息
     *
     * @param apartmentId 公寓ID
     * @return 返回公寓费用信息列表的CompletableFuture对象
     */
    private CompletableFuture<List<FeeValueVo>> getFeeValueVoListAsync(final Long apartmentId)
    {
        return CompletableFuture.supplyAsync(() -> this.apartmentFeeValueMapper.selectListByApartmentId(apartmentId));
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
