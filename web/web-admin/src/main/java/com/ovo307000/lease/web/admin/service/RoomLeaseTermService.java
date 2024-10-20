package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.module.entity.LeaseTerm;
import com.ovo307000.lease.module.entity.RoomLeaseTerm;

import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * 房间租期管理服务接口，提供对房间租期相关数据的操作方法。
 * 该接口继承了IService<RoomLeaseTerm>，利用MyBatis-Plus提供的CRUD基本操作方法。
 *
 * <p>该接口主要用于房间租期记录的查询、创建、更新和删除操作。
 * 通过这个服务接口，开发者可以方便地操作房间租期数据，同时可以扩展更多自定义方法。
 * </p>
 *
 * <p>使用示例：</p>
 *
 * <pre>{@code
 * @Service
 * public class RoomLeaseTermServiceImpl extends ServiceImpl<RoomLeaseTermMapper, RoomLeaseTerm>
 *         implements RoomLeaseTermService {
 * }
 * }</pre>
 *
 * <p>示例类 RoomLeaseTerm 和 LeaseTerm：</p>
 *
 * <pre>{@code
 * @TableName("room_lease_term")
 * @Data
 * @Schema(description = "房间租期关系表")
 * public class RoomLeaseTerm extends BaseEntity {
 *     @Schema(description = "房间id")
 *     private Long roomId;
 *
 *     @Schema(description = "租期id")
 *     private Long leaseTermId;
 * }
 * }</pre>
 *
 * <pre>{@code
 * @TableName("lease_term")
 * @Data
 * @Schema(description = "租期信息")
 * public class LeaseTerm extends BaseEntity {
 *     @Schema(description = "租期月数")
 *     private Integer monthCount;
 *
 *     @Schema(description = "租期单位:月")
 *     private String unit;
 * }
 * }</pre>
 *
 * @see RoomLeaseTerm
 * @see LeaseTerm
 * @see RoomLeaseTermMapper
 * @see BaseEntity
 */
public interface RoomLeaseTermService extends IService<RoomLeaseTerm>
{

    /**
     * 异步根据房间ID查询租期列表
     * <p>
     * 此方法将根据传入的房间ID异步从数据库中查询相关的租期信息，并返回一个包含结果的CompletableFuture对象。
     *
     * @param roomId 房间ID，需要查询租期信息的房间唯一标识
     * @return CompletableFuture<List < LeaseTerm>>，异步返回租期信息列表的CompletableFuture对象
     */
    CompletableFuture<List<LeaseTerm>> selectListByRoomIdAsync(Long roomId);
}
