package com.ovo307000.lease.web.admin.schedule;

import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.ovo307000.lease.module.entity.LeaseAgreement;
import com.ovo307000.lease.module.enums.LeaseStatus;
import com.ovo307000.lease.web.admin.service.impl.LeaseAgreementServiceImpl;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;

@Slf4j
@Component
@RequiredArgsConstructor
public class ScheduleTasks
{
    private static Long                      checkCount = 0L;
    private final  LeaseAgreementServiceImpl leaseAgreementServiceImpl;

    @Scheduled(cron = "0 0 0 * * *")
    public void checkLeaseStatus()
    {
        final Date now = new Date();

        log.info("检查租约状态，当前时间: {} - 第 {} 次检查", now, ++checkCount);

        final LambdaUpdateWrapper<LeaseAgreement> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.set(LeaseAgreement::getStatus, LeaseStatus.EXPIRED)
                     .le(LeaseAgreement::getLeaseEndDate, now)
                     // 只更新状态为已签约或撤约中的租约
                     .in(LeaseAgreement::getStatus, LeaseStatus.SIGNED, LeaseStatus.WITHDRAWING);

        final boolean updated = this.leaseAgreementServiceImpl.update(updateWrapper);

        log.info("更新租约状态完成，更新结果: {}", updated ? "成功" : "失败");
    }
}
