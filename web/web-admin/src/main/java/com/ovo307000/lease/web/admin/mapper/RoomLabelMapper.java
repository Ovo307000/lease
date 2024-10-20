package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ovo307000.lease.module.entity.LabelInfo;
import com.ovo307000.lease.module.entity.RoomLabel;

import java.util.List;

/**
 * RoomLabelMapper接口，用于处理房间与标签之间的关联数据访问操作。
 *
 * <p>该接口继承自BaseMapper<RoomLabel>，提供了基础的增删改查等数据库操作方法。</p>
 *
 * <p>
 *  示例：
 *  <pre>
 *  {@code
 *  @Service
 *  public class RoomLabelServiceImpl extends ServiceImpl<RoomLabelMapper, RoomLabel> implements RoomLabelService {
 *      @Override
 *      public CompletableFuture<List<LabelInfo>> selectListByRoomIdAsync(final Long roomId) {
 *          return CompletableFuture.supplyAsync(() -> this.baseMapper.listLabelInfoByRoomId(roomId));
 *      }
 *  }
 *  }
 *  </pre>
 * </p>
 *
 * @see RoomLabel
 * @see LabelInfo
 */
public interface RoomLabelMapper extends BaseMapper<RoomLabel>
{

    /**
     * 根据房间ID查找关联的标签信息。
     *
     * <p>从数据库中查询指定房间ID所关联的所有标签信息，并返回包含这些标签信息的列表。</p>
     *
     * @param roomId 房间ID，用于查询相关联的标签信息
     * @return 包含与指定房间ID关联的标签信息的列表
     *
     * @see LabelInfo
     * @see RoomLabel
     */
    List<LabelInfo> listLabelInfoByRoomId(Long roomId);
}




