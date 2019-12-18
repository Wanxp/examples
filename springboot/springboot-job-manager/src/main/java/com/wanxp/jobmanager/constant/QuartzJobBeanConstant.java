package com.wanxp.jobmanager.constant;

public class QuartzJobBeanConstant {
    /**
     * 使用Quartz定时调度Job，经常需要实时监控Job的执行状态。在这里，Quartz提供了getTriggerState方法来获取当前执行状态。
     * 其中返回值分别代表意思如下：
     * **STATE_BLOCKED 4 阻塞
     * STATE_COMPLETE 2 完成
     * STATE_ERROR 3 错误
     * STATE_NONE -1 不存在
     * STATE_NORMAL 0 正常
     * STATE_PAUSED 1 暂停**
     */
    public static final String STATUS_RUNNING = "1";
    public static final String STATUS_NOT_RUNNING = "0";
    public static final String STATUS_DELETED = "2";
    public static final String CONCURRENT_IS = "1";
    public static final String CONCURRENT_NOT = "0";
}
