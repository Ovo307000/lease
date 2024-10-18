package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.*;
import com.ovo307000.lease.module.enums.ItemType;
import com.ovo307000.lease.web.admin.mapper.RoomInfoMapper;
import com.ovo307000.lease.web.admin.service.RoomInfoService;
import com.ovo307000.lease.web.admin.vo.graph.GraphVo;
import com.ovo307000.lease.web.admin.vo.room.RoomSubmitVo;
import lombok.RequiredArgsConstructor;
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

    @Override
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

    private boolean isNewRoom(final RoomSubmitVo roomSubmitVo)
    {
        return roomSubmitVo.getId() == null;
    }

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
    private CompletableFuture<Boolean> saveOrUpdateAsync(final RoomSubmitVo roomSubmitVo)
    {
        return CompletableFuture.supplyAsync(() -> this.saveOrUpdate(roomSubmitVo));
    }

    /**
     * 异步保存图形信息列表的方法。
     *
     * @param roomSubmitVo 包含图形信息和房间ID的对象
     * @return 一个包含布尔值的CompletableFuture，表示保存操作是否成功
     * @throws NullPointerException 如果传入的roomSubmitVo为null
     * @throws CompletionException 如果保存操作过程出现异常
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
}