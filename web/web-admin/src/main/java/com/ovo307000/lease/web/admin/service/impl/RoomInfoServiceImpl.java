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

import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;
import java.util.function.Supplier;

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
        final Long roomId = roomSubmitVo.getId();

        final boolean isNew = roomId == null;

        // 如果新增，则先删除相关数据
        if (isNew)
        {
            final CompletableFuture<Boolean> removeGraphInfoListFuture;
            removeGraphInfoListFuture = this.removeGraphInfoListAsync(roomId);

            final CompletableFuture<Boolean> removeRoomAttrValueListFuture;
            removeRoomAttrValueListFuture = this.removeRoomAttrValueListAsync(roomId);

            final CompletableFuture<Boolean> removeRoomFacilityListFuture;
            removeRoomFacilityListFuture = this.removeRoomFacilityListAsync(roomId);

            final CompletableFuture<Boolean> removeRoomLabelListFuture;
            removeRoomLabelListFuture = this.removeRoomLabelListAsync(roomId);

            final CompletableFuture<Boolean> removeRoomPaymentTypeListFuture;
            removeRoomPaymentTypeListFuture = this.removeRoomPaymentTypeList(roomId);

            final CompletableFuture<Boolean> removeRoomLeaseTermListFuture;
            removeRoomLeaseTermListFuture = this.removeRoomLeaseTermList(roomId);

            CompletableFuture.allOf(removeGraphInfoListFuture,
                                     removeRoomAttrValueListFuture,
                                     removeRoomFacilityListFuture,
                                     removeRoomLabelListFuture,
                                     removeRoomPaymentTypeListFuture,
                                     removeRoomLeaseTermListFuture)
                             .join();

        }
        else
        {
            final CompletableFuture<Boolean> saveGraphInfoListFuture;
            saveGraphInfoListFuture = this.saveGraphInfoListAsync(roomSubmitVo);

            final CompletableFuture<Boolean> saveRoomAttrValueListFuture;
            saveRoomAttrValueListFuture = this.saveRoomAttrValueListAsync(roomSubmitVo);

            final CompletableFuture<Boolean> saveRoomFacilityListFuture;
            saveRoomFacilityListFuture = this.saveRoomFacilityListAsync(roomSubmitVo);

            final CompletableFuture<Boolean> saveRoomLabelListFuture;
            saveRoomLabelListFuture = this.saveRoomLabelListAsync(roomSubmitVo);

            final CompletableFuture<Boolean> saveRoomPaymentTypeListFuture;
            saveRoomPaymentTypeListFuture = this.saveRoomPaymentTypeListAsync(roomSubmitVo);

            final CompletableFuture<Boolean> saveRoomLeaseTermListFuture;
            saveRoomLeaseTermListFuture = this.saveRoomLeaseTermListAsync(roomSubmitVo);

            CompletableFuture.allOf(saveGraphInfoListFuture,
                                     saveRoomAttrValueListFuture,
                                     saveRoomFacilityListFuture,
                                     saveRoomLabelListFuture,
                                     saveRoomPaymentTypeListFuture,
                                     saveRoomLeaseTermListFuture)
                             .join();
        }

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
        final LambdaQueryWrapper<GraphInfo> graphInfoQueryWrapper = new LambdaQueryWrapper<GraphInfo>();
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
        final LambdaQueryWrapper<RoomAttrValue> roomAttrValueQueryWrapper = new LambdaQueryWrapper<RoomAttrValue>();
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
        final LambdaQueryWrapper<RoomFacility> apartmentFacilityQueryWrapper = new LambdaQueryWrapper<RoomFacility>();
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
        final LambdaQueryWrapper<RoomLabel> roomLabelQueryWrapper = new LambdaQueryWrapper<RoomLabel>();
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
        final LambdaQueryWrapper<RoomPaymentType> paymentTypeQueryWrapper = new LambdaQueryWrapper<RoomPaymentType>();
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
        final LambdaQueryWrapper<RoomLeaseTerm> leaseTermQueryWrapper = new LambdaQueryWrapper<RoomLeaseTerm>();
        leaseTermQueryWrapper.eq(RoomLeaseTerm::getRoomId, roomId);

        // 异步执行删除操作，并返回删除结果的CompletableFuture
        return CompletableFuture.supplyAsync(() -> this.roomLeaseTermServiceImpl.remove(leaseTermQueryWrapper));
    }

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

    private void executeAsyncTasks(final Supplier<CompletableFuture<Boolean>>... tasks) throws Exception
    {

        Arrays.stream(tasks)
              .map(Supplier::get)
              .map(CompletableFuture::join)
              .filter(Boolean.FALSE::equals)
              .findAny()
              .ifPresent(task ->
              {
                  throw new RuntimeException("Task failed");
              });


/*
        final List<CompletableFuture<Boolean>> futures = new ArrayList<>();
        for (final Supplier<CompletableFuture<Boolean>> task : tasks)
        {
            futures.add(task.get());
        }

        CompletableFuture.allOf(futures.toArray(new CompletableFuture[0]))
                         .join();

        // 检查每个任务的结果
        for (final CompletableFuture<Boolean> future : futures)
        {
            if (!future.isCompletedExceptionally() && !future.join())
            {
                throw new RuntimeException("Task failed");
            }
        }
*/
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
            final LambdaQueryWrapper<ApartmentInfo> queryWrapper = new LambdaQueryWrapper<ApartmentInfo>();
            queryWrapper.eq(ApartmentInfo::getId, apartmentId);
            return this.apartmentInfoServiceImpl.getOne(queryWrapper);
        });
    }
}