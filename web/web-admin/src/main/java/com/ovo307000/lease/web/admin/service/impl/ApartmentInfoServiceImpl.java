package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.*;
import com.ovo307000.lease.module.enums.ItemType;
import com.ovo307000.lease.web.admin.mapper.ApartmentInfoMapper;
import com.ovo307000.lease.web.admin.service.ApartmentInfoService;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentSubmitVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
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

    @Override
    public boolean saveOrUpdateApartment(final ApartmentSubmitVo apartmentSubmitVo)
    {
        final boolean isInDatabase = this.isApartmentExist(apartmentSubmitVo.getId());
        CompletableFuture.runAsync(() -> super.saveOrUpdate(apartmentSubmitVo));

        if (isInDatabase)
        {
            CompletableFuture.allOf(this.removeGraphInfoAsync(apartmentSubmitVo.getId()),
                                     this.removeApartmentFacilityAsync(apartmentSubmitVo.getId()),
                                     this.removeApartmentLabelAsync(apartmentSubmitVo.getId()),
                                     this.removeApartmentFeeValueAsync(apartmentSubmitVo.getId()))
                             .join();
        }
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

    private boolean isApartmentExist(final Long id)
    {
        return id == null || super.getById(id) != null;
    }

    private CompletableFuture<Boolean> removeGraphInfoAsync(final Long id)
    {
        final LambdaQueryWrapper<GraphInfo> graphInfoQueryWrapper = new LambdaQueryWrapper<>();
        graphInfoQueryWrapper.eq(GraphInfo::getItemType, ItemType.APARTMENT)
                             .eq(GraphInfo::getItemId, id);

        return CompletableFuture.supplyAsync(() -> this.graphInfoServiceImpl.remove(graphInfoQueryWrapper));
    }

    private CompletableFuture<Boolean> removeApartmentFacilityAsync(final Long id)
    {
        final LambdaQueryWrapper<ApartmentFacility> apartmentFacilityQueryWrapper = new LambdaQueryWrapper<>();
        apartmentFacilityQueryWrapper.eq(ApartmentFacility::getApartmentId, id);

        return CompletableFuture.supplyAsync(() -> this.apartmentFacilityServiceImpl.remove(
                apartmentFacilityQueryWrapper));
    }

    private CompletableFuture<Boolean> removeApartmentLabelAsync(final Long id)
    {
        final LambdaQueryWrapper<ApartmentLabel> apartmentLabelQueryWrapper = new LambdaQueryWrapper<>();
        apartmentLabelQueryWrapper.eq(ApartmentLabel::getApartmentId, id);


        return CompletableFuture.supplyAsync(() -> this.apartmentLabelServiceImpl.remove(apartmentLabelQueryWrapper));
    }

    private CompletableFuture<Boolean> removeApartmentFeeValueAsync(final Long id)
    {
        final LambdaQueryWrapper<ApartmentFeeValue> apartmentFeeValueQueryWrapper = new LambdaQueryWrapper<>();
        apartmentFeeValueQueryWrapper.eq(ApartmentFeeValue::getApartmentId, id);

        return CompletableFuture.supplyAsync(() -> this.apartmentFeeValueServiceImpl.remove(
                apartmentFeeValueQueryWrapper));
    }

    private CompletableFuture<Boolean> saveGraphInfoListAsync(final ApartmentSubmitVo apartmentSubmitVo)
    {
        final List<GraphInfo> graphInfoList = Covert.covertToGraphInfo(apartmentSubmitVo);

        return CompletableFuture.supplyAsync(() -> this.graphInfoServiceImpl.saveBatch(graphInfoList));
    }

    private CompletableFuture<Boolean> saveApartmentFacilityListAsync(final ApartmentSubmitVo apartmentSubmitVo)
    {
        final List<ApartmentFacility> apartmentFacilityList = Covert.covertToFacilityInfo(apartmentSubmitVo);

        return CompletableFuture.supplyAsync(() -> this.apartmentFacilityServiceImpl.saveBatch(apartmentFacilityList));
    }

    private CompletableFuture<Boolean> saveApartmentLabelListAsync(final ApartmentSubmitVo apartmentSubmitVo)
    {
        final List<ApartmentLabel> apartmentLabelList = Covert.covertToApartmentLabel(apartmentSubmitVo);

        return CompletableFuture.supplyAsync(() -> this.apartmentLabelServiceImpl.saveBatch(apartmentLabelList));
    }

    private CompletableFuture<Boolean> saveApartmentFeeValueListAsync(final ApartmentSubmitVo apartmentSubmitVo)
    {
        final List<ApartmentFeeValue> apartmentFeeValueList = Covert.covertToFeeValue(apartmentSubmitVo);

        return CompletableFuture.supplyAsync(() -> this.apartmentFeeValueServiceImpl.saveBatch(apartmentFeeValueList));
    }

    private static final class Covert
    {
        public static List<GraphInfo> covertToGraphInfo(final ApartmentSubmitVo apartmentSubmitVo)
        {
            if (apartmentSubmitVo.getGraphVoList() == null ||
                apartmentSubmitVo.getGraphVoList()
                                 .isEmpty())
            {
                return List.of();
            }

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

        public static List<ApartmentFacility> covertToFacilityInfo(final ApartmentSubmitVo apartmentSubmitVo)
        {
            if (isListEmpty(apartmentSubmitVo.getFacilityInfoIds()))
            {
                return List.of();
            }

            return apartmentSubmitVo.getFacilityInfoIds()
                                    .stream()
                                    .map(facilityId -> ApartmentFacility.builder()
                                                                        .apartmentId(apartmentSubmitVo.getId())
                                                                        .facilityId(facilityId)
                                                                        .build())
                                    .toList();
        }

        private static <T> boolean isListEmpty(final List<T> list)
        {
            return list == null || list.isEmpty();
        }

        public static List<ApartmentLabel> covertToApartmentLabel(final ApartmentSubmitVo apartmentSubmitVo)
        {
            if (isListEmpty(apartmentSubmitVo.getLabelIds()))
            {
                return List.of();
            }

            return apartmentSubmitVo.getLabelIds()
                                    .stream()
                                    .map(labelId -> ApartmentLabel.builder()
                                                                  .apartmentId(apartmentSubmitVo.getId())
                                                                  .labelId(labelId)
                                                                  .build())
                                    .toList();
        }

        public static List<ApartmentFeeValue> covertToFeeValue(final ApartmentSubmitVo apartmentSubmitVo)
        {
            if (isListEmpty(apartmentSubmitVo.getFeeValueIds()))
            {
                return List.of();
            }

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




