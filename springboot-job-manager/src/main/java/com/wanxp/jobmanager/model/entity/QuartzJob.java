package com.wanxp.jobmanager.model.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.MappedSuperclass;
import java.util.Date;

@Data
@Entity
public class QuartzJob extends AbstractEntity {

    private static final long serialVersionUID = 607415834012939222L;

    /**
     * 任务名称
     */
    private String jobName;

    /**
     * 任务分组，任务名称+组名称应该是唯一的
     */
    private String jobGroup;

    /**
     * 任务初始状态 0禁用 1启用 2删除
     */
    private String jobStatus;

    /**
     * 任务是否有状态（并发与否）
     */
    private String isConcurrent;

    /**
     * 任务运行时间表达式
     */
    private String cronExpression;

    /**
     * 任务描述
     */
    private String description;

    /**
     * 任务调用类在spring中注册的bean id，如果spingId不为空，则按springId查找
     */
    private String springId;

    /**
     * 任务调用类名，包名+类名，通过类反射调用 ，如果spingId为空，则按jobClass查找
     */
    private String jobClass;

    /**
     * 任务调用的方法名
     */
    private String methodName;

    /**
     * 启动时间
     */
    private Date startTime;

    /**
     * 前一次运行时间
     */
    private Date previousTime;

    /**
     * 下次运行时间
     */
    private Date nextTime;

    public QuartzJob() {
        super();
    }

    public QuartzJob(String jobName, String jobGroup) {
        super();
        this.jobName = jobName;
        this.jobGroup = jobGroup;
    }

    public QuartzJob(String jobName, String jobGroup, String jobStatus, String isConcurrent,
                     String cronExpression, String description, String springId, String jobClass, String methodName) {
        super();
        this.jobName = jobName;
        this.jobGroup = jobGroup;
        this.jobStatus = jobStatus;
        this.isConcurrent = isConcurrent;
        this.cronExpression = cronExpression;
        this.description = description;
        this.springId = springId;
        this.jobClass = jobClass;
        this.methodName = methodName;
    }

    // getter, setter

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder(120);
        sb.append("QuartzJobBean [jobId=").append(getUuid()).append(", jobName=").append(jobName)
                .append(", jobGroup=").append(jobGroup).append(", jobStatus=").append(jobStatus)
                .append(", isConcurrent=").append(isConcurrent).append(", cronExpression=").append(cronExpression)
                .append(", jobClass=").append(jobClass).append(", methodName=").append(methodName).append("]");
        return sb.toString();
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 31 * hash + jobName.hashCode();
        hash = 31 * hash + jobGroup.hashCode();
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null || (obj.getClass() != this.getClass())) {
            return false;
        }
        QuartzJob oBean = (QuartzJob) obj;
        if (this.jobName.equals(oBean.jobName) && this.jobGroup.equals(oBean.jobGroup)) {
            return true;
        }
        return false;
    }
}
