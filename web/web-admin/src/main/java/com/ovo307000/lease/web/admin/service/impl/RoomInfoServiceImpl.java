package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.common.exception.LeaseException;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.module.entity.*;
import com.ovo307000.lease.module.enums.ItemType;
import com.ovo307000.lease.web.admin.mapper.RoomInfoMapper;
import com.ovo307000.lease.web.admin.service.RoomInfoService;
import com.ovo307000.lease.web.admin.vo.attr.AttrValueVo;
import com.ovo307000.lease.web.admin.vo.graph.GraphVo;
import com.ovo307000.lease.web.admin.vo.room.RoomDetailVo;
import com.ovo307000.lease.web.admin.vo.room.RoomItemVo;
import com.ovo307000.lease.web.admin.vo.room.RoomQueryVo;
import com.ovo307000.lease.web.admin.vo.room.RoomSubmitVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionException;

/**
 * 针对表【room_info(房间信息表)】的数据库操作Service实现
 *
 * @author liubo
 * @createDate 2023-07-24 15:48:00
 */
@Service
@RequiredArgsConstructor
public class RoomInfoServiceImpl extends ServiceImpl<RoomInfoMapper, RoomInfo> implements RoomInfoService
{
    private final ApartmentInfoServiceImpl   apartmentInfoServiceImpl;
    private final GraphInfoServiceImpl       graphInfoServiceImpl;
    private final RoomAttrValueServiceImpl   roomAttrValueServiceImpl;
    private final RoomFacilityServiceImpl    roomFacilityServiceImpl;
    private final RoomLabelServiceImpl       roomLabelServiceImpl;
    private final RoomLeaseTermServiceImpl   roomLeaseTermServiceImpl;
    private final RoomPaymentTypeServiceImpl roomPaymentTypeServiceImpl;
    private final AttrValueServiceImpl       attrValueServiceImpl;

    /**
     * 获取指定房间ID的详细信息。
     *
     * @param roomId 房间的唯一标识符。
     * @return 包含房间详细信息的RoomDetailVo对象。
     * @throws LeaseException 当房间信息未找到时抛出异常。
     */
    @Override
    public RoomDetailVo getDetailByRoomId(final Long roomId)
    {
        final CompletableFuture<RoomInfo> roomInfoFuture = this.getRoomInfoAsync(roomId)
                                                               .thenApply(roomInfo ->
                                                               {
                                                                   if (roomInfo == null)
                                                                   {
                                                                       throw new LeaseException(ResultCodeEnum.ROOM_NOT_FOUND);
                                                                   }
                                                                   return roomInfo;
                                                               });

        final RoomDetailVo roomDetailVo = new RoomDetailVo();
        BeanUtils.copyProperties(roomInfoFuture.join(), roomDetailVo);

        final CompletableFuture<ApartmentInfo> apartmentInfoFuture = this.getApartmentInfoAsync(roomId);

        final CompletableFuture<List<GraphVo>> graphVoFuture = this.graphInfoServiceImpl.selectListByItemTypeAndApartmentIdAsync(
                ItemType.ROOM,
                roomId);

        final CompletableFuture<List<AttrValueVo>> attrValueVoFuture = this.attrValueServiceImpl.selectListByRoomIdAsync(
                roomId);
        final CompletableFuture<List<FacilityInfo>> facilityInfoFuture = this.roomFacilityServiceImpl.selectListByRoomIdAsync(
                roomId);

        final CompletableFuture<List<LabelInfo>> labelInfoFuture = this.roomLabelServiceImpl.selectListByRoomIdAsync(
                roomId);

        final CompletableFuture<List<PaymentType>> paymentTypeInfoFuture = this.roomPaymentTypeServiceImpl.selectListByRoomIdAsync(
                roomId);

        final CompletableFuture<List<LeaseTerm>> leaseTermInfoFuture = this.roomLeaseTermServiceImpl.selectListByRoomIdAsync(
                roomId);


        roomDetailVo.setApartmentInfo(apartmentInfoFuture.join());
        roomDetailVo.setGraphVoList(graphVoFuture.join());
        roomDetailVo.setAttrValueVoList(attrValueVoFuture.join());
        roomDetailVo.setFacilityInfoList(facilityInfoFuture.join());
        roomDetailVo.setLabelInfoList(labelInfoFuture.join());
        roomDetailVo.setPaymentTypeList(paymentTypeInfoFuture.join());
        roomDetailVo.setLeaseTermList(leaseTermInfoFuture.join());

        return roomDetailVo;
    }

    /**
     * 异步获取指定房间的详细信息。
     *
     * @param roomId 需要查询的房间唯一标识符。
     * @return 包含房间信息的CompletableFuture对象。
     * <p>
     * 使用示例：
     * <pre>{@code
     *    Long roomId = 123L;
     *    CompletableFuture<RoomInfo> roomInfoFuture = getRoomInfoAsync(roomId);
     *    roomInfoFuture.thenAccept(roomInfo -> {
     *        // 处理房间信息
     *        System.out.println(roomInfo);
     *    });
     * }</pre>
     */
    private CompletableFuture<RoomInfo> getRoomInfoAsync(final Long roomId)
    {
        return CompletableFuture.supplyAsync(() -> this.baseMapper.selectById(roomId));
    }

    /**
     * 异步获取公寓信息
     *
     * @param apartmentId 公寓ID
     * @return 返回公寓信息的CompletableFuture对象
     */
    private CompletableFuture<ApartmentInfo> getApartmentInfoAsync(final Long apartmentId)
    {
        return CompletableFuture.supplyAsync(() ->
        {
            final LambdaQueryWrapper<ApartmentInfo> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(ApartmentInfo::getId, apartmentId);
            return this.apartmentInfoServiceImpl.getOne(queryWrapper);
        });
    }

    /**
     * 分页查询房间信息的方法。
     *
     * <p>此方法接收分页对象和查询条件对象，并返回分页查询结果，包含房间信息列表及总记录数等。</p>
     *
     * @param page    分页对象，用于指定当前页码和页面大小
     * @param queryVo 查询条件对象，封装了房间信息的查询参数
     * @return 返回分页查询结果，包含房间信息列表及总记录数等信息
     */
    @Override
    public IPage<RoomItemVo> pageItem(final Page<RoomItemVo> page, final RoomQueryVo queryVo)
    {
        return this.baseMapper.pageItem(page, queryVo);
    }

    /**
     * 保存或更新房间信息的方法。
     *
     * <p>此方法根据房间信息的ID判断是新房间还是已有房间，并分别调用不同的处理方法。
     * 如果是新房间，则调用{@link #handleNewRoom(RoomSubmitVo, Long)}方法处理；
     * 如果是已有房间，则调用{@link #handleExistingRoom(RoomSubmitVo)}方法处理。</p>
     *
     * @param roomSubmitVo 包含房间相关信息的对象，包括图表信息、属性值、设施、标签、支付类型以及租赁期限等。
     * @return 返回一个布尔值，表示保存或更新操作是否成功。
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean saveOrUpdateRoom(final RoomSubmitVo roomSubmitVo)
    {
        if (this.isNewRoom(roomSubmitVo))
        {
            return this.handleNewRoom(roomSubmitVo, roomSubmitVo.getId());
        }
        else
        {
            return this.handleExistingRoom(roomSubmitVo);
        }
    }

    @Override
    public boolean removeRoomById(final Long roomId)
    {
        final CompletableFuture<Boolean> removeRoomFuture            = this.removeRoomByIdAsync(roomId);
        final CompletableFuture<Boolean> removeGraphInfoFuture       = this.removeGraphInfoListAsync(roomId);
        final CompletableFuture<Boolean> removeRoomAttrValueFuture   = this.removeRoomAttrValueListAsync(roomId);
        final CompletableFuture<Boolean> removeRoomFacilityFuture    = this.removeRoomFacilityListAsync(roomId);
        final CompletableFuture<Boolean> removeRoomLabelFuture       = this.removeRoomLabelListAsync(roomId);
        final CompletableFuture<Boolean> removeRoomPaymentTypeFuture = this.removeRoomPaymentTypeList(roomId);
        final CompletableFuture<Boolean> removeRoomLeaseTermFuture   = this.removeRoomLeaseTermList(roomId);

        CompletableFuture.allOf(removeGraphInfoFuture,
                                 removeRoomAttrValueFuture,
                                 removeRoomFacilityFuture,
                                 removeRoomLabelFuture,
                                 removeRoomPaymentTypeFuture,
                                 removeRoomLeaseTermFuture,
                                 removeRoomFuture)
                         .join();

        return true;
    }

    private CompletableFuture<Boolean> removeRoomByIdAsync(final Long roomId)
    {
        return CompletableFuture.supplyAsync(() -> this.removeById(roomId));
    }

    /**
     * 判断给定的房间提交对象是否为新房间。
     *
     * @param roomSubmitVo 包含房间信息的提交对象。这个参数包含房间的ID、名称、描述等信息。
     * @return 如果房间的ID为空，表示这是一个新房间，返回true；否则返回false。
     */
    private boolean isNewRoom(final RoomSubmitVo roomSubmitVo)
    {
        return roomSubmitVo.getId() == null;
    }

    /**
     * 处理新房间的相关信息。
     *
     * <p>此方法会并行地异步删除旧房间信息，并保存新房间的图表信息、属性值、设施、标签、支付类型和租赁期限信息。</p>
     *
     * @param roomSubmitVo 包含新房间相关信息的对象，包括图表信息、属性值、设施、标签、支付类型和租赁期限等。
     * @param roomId       需要处理的房间ID。
     * @return 返回一个布尔值，表示处理操作是否成功。此处总是返回true，因为所有的异步任务在执行时已被显式等待完成。
     */
    @Transactional(rollbackFor = Exception.class)
    public boolean handleNewRoom(final RoomSubmitVo roomSubmitVo, final Long roomId)
    {
        final List<CompletableFuture<Boolean>> removeTasks = List.of(this.removeGraphInfoListAsync(roomId),
                this.removeRoomAttrValueListAsync(roomId),
                this.removeRoomFacilityListAsync(roomId),
                this.removeRoomLabelListAsync(roomId),
                this.removeRoomPaymentTypeList(roomId),
                this.removeRoomLeaseTermList(roomId));
        CompletableFuture.allOf(removeTasks.toArray(new CompletableFuture[0]))
                         .join();

        final List<CompletableFuture<Boolean>> saveTasks = List.of(this.saveOrUpdateAsync(roomSubmitVo),
                this.saveGraphInfoListAsync(roomSubmitVo),
                this.saveRoomAttrValueListAsync(roomSubmitVo),
                this.saveRoomFacilityListAsync(roomSubmitVo),
                this.saveRoomLabelListAsync(roomSubmitVo),
                this.saveRoomPaymentTypeListAsync(roomSubmitVo),
                this.saveRoomLeaseTermListAsync(roomSubmitVo));
        return this.executeTasks(saveTasks);
    }

    /**
     * 处理已有房间的相关信息。
     *
     * <p>此方法会并行地异步保存房间的图表信息、属性值、设施、标签、支付类型和租赁期限信息。</p>
     *
     * @param roomSubmitVo 包含房间相关信息的对象，包括图表信息、属性值、设施、标签、支付类型和租赁期限等。
     * @return 返回一个布尔值，表示处理操作是否成功。此处总是返回true，因为所有的异步任务在执行时已被显式等待完成。
     */
    private boolean handleExistingRoom(final RoomSubmitVo roomSubmitVo)
    {
        final List<CompletableFuture<Boolean>> saveTasks = List.of(this.saveGraphInfoListAsync(roomSubmitVo),
                this.saveRoomAttrValueListAsync(roomSubmitVo),
                this.saveRoomFacilityListAsync(roomSubmitVo),
                this.saveRoomLabelListAsync(roomSubmitVo),
                this.saveRoomPaymentTypeListAsync(roomSubmitVo),
                this.saveRoomLeaseTermListAsync(roomSubmitVo));
        CompletableFuture.allOf(saveTasks.toArray(new CompletableFuture[0]))
                         .join();
        return true;
    }

    /**
     * 异步删除房间相关的图表信息列表
     *
     * @param roomId 房间ID，用于标识要删除信息的房间
     * @return 返回一个CompletableFuture对象，包含删除操作的结果
     */
    private CompletableFuture<Boolean> removeGraphInfoListAsync(final Long roomId)
    {
        // 构建查询条件，用于精确查询要删除的图表信息
        final LambdaQueryWrapper<GraphInfo> graphInfoQueryWrapper = new LambdaQueryWrapper<>();
        graphInfoQueryWrapper.eq(GraphInfo::getItemType, ItemType.ROOM)
                             .eq(GraphInfo::getItemId, roomId);

        // 异步执行删除操作，并返回删除结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.graphInfoServiceImpl.remove(graphInfoQueryWrapper));
    }

    /**
     * 异步删除房间属性值列表
     *
     * @param roomId 房间ID，用于标识要删除属性值的房间
     * @return 返回一个CompletableFuture对象，包含删除操作的结果
     */
    private CompletableFuture<Boolean> removeRoomAttrValueListAsync(final Long roomId)
    {
        // 构建查询条件，用于精确查询要删除的房间属性值
        final LambdaQueryWrapper<RoomAttrValue> roomAttrValueQueryWrapper = new LambdaQueryWrapper<>();
        roomAttrValueQueryWrapper.eq(RoomAttrValue::getRoomId, roomId);

        // 异步执行删除操作，并返回删除结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.roomAttrValueServiceImpl.remove(roomAttrValueQueryWrapper));
    }

    /**
     * 异步删除房间设施列表
     *
     * @param roomId 房间ID，用于标识要删除设施的房间
     * @return 返回一个CompletableFuture对象，包含删除操作的结果
     */
    private CompletableFuture<Boolean> removeRoomFacilityListAsync(final Long roomId)
    {
        // 构建查询条件，用于精确查询要删除的房间设施
        final LambdaQueryWrapper<RoomFacility> apartmentFacilityQueryWrapper = new LambdaQueryWrapper<>();
        apartmentFacilityQueryWrapper.eq(RoomFacility::getRoomId, roomId);

        // 异步执行删除操作，并返回删除结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.roomFacilityServiceImpl.remove(apartmentFacilityQueryWrapper));
    }

    /**
     * 异步删除房间标签列表
     *
     * @param roomId 房间ID，用于标识要删除标签的房间
     * @return 返回一个CompletableFuture对象，包含删除操作的结果
     */
    private CompletableFuture<Boolean> removeRoomLabelListAsync(final Long roomId)
    {
        // 构建查询条件，用于精确查询要删除的房间标签
        final LambdaQueryWrapper<RoomLabel> roomLabelQueryWrapper = new LambdaQueryWrapper<>();
        roomLabelQueryWrapper.eq(RoomLabel::getRoomId, roomId);

        // 异步执行删除操作，并返回删除结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.roomLabelServiceImpl.remove(roomLabelQueryWrapper));
    }

    /**
     * 异步删除房间支付类型列表
     *
     * @param roomId 房间ID，用于标识要删除支付类型的房间
     * @return 返回一个CompletableFuture对象，包含删除操作的结果
     */
    private CompletableFuture<Boolean> removeRoomPaymentTypeList(final Long roomId)
    {
        // 构建查询条件，用于精确查询要删除的房间支付类型
        final LambdaQueryWrapper<RoomPaymentType> paymentTypeQueryWrapper = new LambdaQueryWrapper<>();
        paymentTypeQueryWrapper.eq(RoomPaymentType::getRoomId, roomId);

        // 异步执行删除操作，并返回删除结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.roomPaymentTypeServiceImpl.remove(paymentTypeQueryWrapper));
    }

    /**
     * 异步删除房间租赁期限列表
     *
     * @param roomId 房间ID，用于标识要删除租赁期限的房间
     * @return 返回一个CompletableFuture对象，包含删除操作的结果
     */
    private CompletableFuture<Boolean> removeRoomLeaseTermList(final Long roomId)
    {
        // 构建查询条件，用于精确查询要删除的房间租赁期限
        final LambdaQueryWrapper<RoomLeaseTerm> leaseTermQueryWrapper = new LambdaQueryWrapper<>();
        leaseTermQueryWrapper.eq(RoomLeaseTerm::getRoomId, roomId);

        // 异步执行删除操作，并返回删除结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.roomLeaseTermServiceImpl.remove(leaseTermQueryWrapper));
    }

    /**
     * 异步保存或更新房间信息的方法。
     *
     * <p>此方法会异步调用 方法，保存或更新房间信息。
     * 使用CompletableFuture异步处理，可以提高并发性能，避免阻塞主线程。</p>
     *
     * @param roomSubmitVo 包含房间信息的对象，包括图片列表、属性信息列表、配套信息列表、标签信息列表、支付方式列表和可选租期列表。
     * @return 返回一个CompletableFuture对象，其结果为布尔值，表示保存或更新操作是否成功。
     */
    @Transactional(rollbackFor = Exception.class)
    public CompletableFuture<Boolean> saveOrUpdateAsync(final RoomSubmitVo roomSubmitVo)
    {
        return CompletableFuture.supplyAsync(() -> this.saveOrUpdate(roomSubmitVo));
    }

    /**
     * 异步保存图形信息列表的方法。
     *
     * @param roomSubmitVo 包含图形信息和房间ID的对象
     * @return 一个包含布尔值的CompletableFuture，表示保存操作是否成功
     * @throws NullPointerException 如果传入的roomSubmitVo为null
     * @throws CompletionException  如果保存操作过程出现异常
     */
    private CompletableFuture<Boolean> saveGraphInfoListAsync(final RoomSubmitVo roomSubmitVo)
    {
        final List<GraphVo> graphVoList = roomSubmitVo.getGraphVoList();

        if (graphVoList == null || graphVoList.isEmpty())
        {
            return CompletableFuture.completedFuture(false);
        }

        final List<GraphInfo> graphInfoList = graphVoList.stream()
                                                         .map(graphVo -> GraphInfo.builder()
                                                                                  .name(graphVo.getName())
                                                                                  .url(graphVo.getUrl())
                                                                                  .itemType(ItemType.ROOM)
                                                                                  .itemId(roomSubmitVo.getId())
                                                                                  .build())
                                                         .toList();

        return CompletableFuture.supplyAsync(() -> this.graphInfoServiceImpl.saveBatch(graphInfoList));
    }

    /**
     * 异步保存房间属性值列表的方法。
     *
     * <p>此方法会根据传入的房间提交对象，提取属性值ID列表并构建房间属性值对象列表。
     * 如果属性值ID列表中存在空值，方法会立即返回false。否则，会异步将房间属性值对象列表保存到数据库中。</p>
     *
     * @param roomSubmitVo 包含房间ID和属性值ID列表的对象
     * @return 一个包含布尔值的CompletableFuture，表示保存操作是否成功
     */
    private CompletableFuture<Boolean> saveRoomAttrValueListAsync(final RoomSubmitVo roomSubmitVo)
    {
        final List<Long> attrValueIds = roomSubmitVo.getAttrValueIds();

        if (attrValueIds.stream()
                        .anyMatch(Objects::isNull))
        {
            return CompletableFuture.completedFuture(false);
        }

        final List<RoomAttrValue> roomAttrValueList = attrValueIds.stream()
                                                                  .map(attrValueId -> RoomAttrValue.builder()
                                                                                                   .attrValueId(
                                                                                                           attrValueId)
                                                                                                   .roomId(roomSubmitVo.getId())
                                                                                                   .build())
                                                                  .toList();

        return CompletableFuture.supplyAsync(() -> this.roomAttrValueServiceImpl.saveBatch(roomAttrValueList));
    }

    /**
     * 异步保存房间设施列表的方法。
     *
     * <p>此方法接收一个RoomSubmitVo对象，从中提取设施ID列表，并通过ID构建RoomFacility对象列表。
     * 然后异步地批量保存这些RoomFacility对象。</p>
     *
     * @param roomSubmitVo 包含房间提交信息的对象，包括设施ID列表。
     * @return 返回一个CompletableFuture对象，其结果为布尔值，表示保存操作是否成功。
     * @throws NullPointerException 如果传入的roomSubmitVo或其中的设施ID列表为null。
     * @throws CompletionException  如果批量保存操作过程中发生异常。
     */
    private CompletableFuture<Boolean> saveRoomFacilityListAsync(final RoomSubmitVo roomSubmitVo)
    {
        final List<Long> facilityIds = roomSubmitVo.getFacilityInfoIds();

        if (facilityIds.stream()
                       .anyMatch(Objects::isNull))
        {
            return CompletableFuture.completedFuture(false);
        }

        final List<RoomFacility> roomFacilityList = facilityIds.stream()
                                                               .map(facilityId -> RoomFacility.builder()
                                                                                              .facilityId(facilityId)
                                                                                              .roomId(roomSubmitVo.getId())
                                                                                              .build())
                                                               .toList();

        return CompletableFuture.supplyAsync(() -> this.roomFacilityServiceImpl.saveBatch(roomFacilityList));
    }

    /**
     * 异步保存房间标签列表数据。
     *
     * <p>此方法首先获取房间提交对象中的标签ID列表，然后验证列表中是否有空值。
     * 如果存在空值，则立即返回包含false的已完成的 {@link CompletableFuture} 对象。
     * 否则，将标签ID列表转换为房间标签对象列表并异步保存。</p>
     *
     * @param roomSubmitVo 房间提交对象，包含房间ID和标签ID列表
     * @return {@link CompletableFuture} 返回异步计算的结果，表示保存是否成功
     */
    private CompletableFuture<Boolean> saveRoomLabelListAsync(final RoomSubmitVo roomSubmitVo)
    {
        final List<Long> labelIds = roomSubmitVo.getLabelInfoIds();

        if (labelIds.stream()
                    .anyMatch(Objects::isNull))
        {
            return CompletableFuture.completedFuture(false);
        }

        final List<RoomLabel> roomLabelList = labelIds.stream()
                                                      .map(labelId -> RoomLabel.builder()
                                                                               .labelId(labelId)
                                                                               .roomId(roomSubmitVo.getId())
                                                                               .build())
                                                      .toList();

        return CompletableFuture.supplyAsync(() -> this.roomLabelServiceImpl.saveBatch(roomLabelList));
    }

    /**
     * 异步保存房间付款类型列表的方法。
     *
     * @param roomSubmitVo 包含房间提交信息的对象，包括要保存的付款类型ID的列表。
     * @return 一个包含布尔值的CompletableFuture对象。返回true表示操作成功，false表示操作失败。
     * @throws NullPointerException 如果房间提交对象或付款类型ID列表中的任意元素为空，则抛出该异常。
     * @see RoomSubmitVo
     * @see CompletableFuture
     * @see RoomPaymentTypeServiceImpl#saveBatch
     */
    private CompletableFuture<Boolean> saveRoomPaymentTypeListAsync(final RoomSubmitVo roomSubmitVo)
    {
        final List<Long> paymentTypeIds = roomSubmitVo.getPaymentTypeIds();

        if (paymentTypeIds.stream()
                          .anyMatch(Objects::isNull))
        {
            return CompletableFuture.completedFuture(false);
        }

        final List<RoomPaymentType> roomPaymentTypeList = paymentTypeIds.stream()
                                                                        .map(paymentTypeId -> RoomPaymentType.builder()
                                                                                                             .paymentTypeId(
                                                                                                                     paymentTypeId)
                                                                                                             .roomId(roomSubmitVo.getId())
                                                                                                             .build())
                                                                        .toList();

        return CompletableFuture.supplyAsync(() -> this.roomPaymentTypeServiceImpl.saveBatch(roomPaymentTypeList));
    }

    /**
     * 异步保存房间租赁条款列表的方法。
     *
     * @param roomSubmitVo 包含房间信息和租赁条款ID的对象。
     *                     该对象用于从房间提交表单中获取相关数据。
     * @return 一个CompletableFuture, 它在操作完成后返回布尔值，标示保存是否成功。如果输入的租赁条款ID列表中有null值，则返回false。
     * @throws NullPointerException 如果roomSubmitVo或其需要的属性为null，可能会抛出此异常。
     */
    private CompletableFuture<Boolean> saveRoomLeaseTermListAsync(final RoomSubmitVo roomSubmitVo)
    {
        final List<Long> leaseTermIds = roomSubmitVo.getLeaseTermIds();

        if (leaseTermIds.stream()
                        .anyMatch(Objects::isNull))
        {
            return CompletableFuture.completedFuture(false);
        }

        final List<RoomLeaseTerm> roomLeaseTermList = leaseTermIds.stream()
                                                                  .map(leaseTermId -> RoomLeaseTerm.builder()
                                                                                                   .leaseTermId(
                                                                                                           leaseTermId)
                                                                                                   .roomId(roomSubmitVo.getId())
                                                                                                   .build())
                                                                  .toList();

        return CompletableFuture.supplyAsync(() -> this.roomLeaseTermServiceImpl.saveBatch(roomLeaseTermList));
    }

    /**
     * 执行给定的所有异步任务，并等待所有任务完成。
     *
     * @param tasks 要执行的 {@link CompletableFuture} 列表，每个任务返回一个 {@code Boolean} 值。
     * @return 如果所有任务成功完成，返回 {@code true}；如果在执行过程中发生异常，返回 {@code false}。
     */
    private boolean executeTasks(final List<CompletableFuture<Boolean>> tasks)
    {
        try
        {
            CompletableFuture.allOf(tasks.toArray(new CompletableFuture[0]))
                             .join();
            return true;
        }
        catch (final Exception e)
        {
            return false;
        }
    }
}