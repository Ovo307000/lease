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

/**
 * 定时任务类，用于处理租约状态的检查和更新
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class ScheduleTasks
{
    /**
     * 检查次数计数器
     */
    private static Long checkCount = 0L;

    /**
     * 租约服务实现类
     */
    private final LeaseAgreementServiceImpl leaseAgreementServiceImpl;

    /**
     * 定时任务方法，每天午夜执行一次，检查并更新租约状态
     * <p>
     * 使用 @Scheduled 注解配置定时任务，cron 表达式 "0 0 0 * * *" 表示每天午夜 0 点执行
     * </p>
     */
    @Scheduled(cron = "0 0 0 * * *")
    public void checkLeaseStatus()
    {
        // 获取当前时间
        final Date now = new Date();

        // 记录日志，输出当前时间和检查次数
        log.info("检查租约状态，当前时间: {} - 第 {} 次检查", now, ++checkCount);

        // 创建更新条件包装器
        final LambdaUpdateWrapper<LeaseAgreement> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.set(LeaseAgreement::getStatus, LeaseStatus.EXPIRED)
                     .le(LeaseAgreement::getLeaseEndDate, now)
                     // 只更新状态为已签约或撤约中的租约
                     .in(LeaseAgreement::getStatus, LeaseStatus.SIGNED, LeaseStatus.WITHDRAWING);

        // 执行更新操作
        final boolean updated = this.leaseAgreementServiceImpl.update(updateWrapper);

        // 记录日志，输出更新结果
        log.info("��新租约状态完成，更新结果: {}", updated ? "成功" : "失败");
    }
}