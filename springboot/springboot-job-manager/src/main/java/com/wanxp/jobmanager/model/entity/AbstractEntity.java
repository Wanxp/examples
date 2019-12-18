package com.wanxp.jobmanager.model.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@MappedSuperclass
public class AbstractEntity implements Serializable {
    private static final long serialVersionUID = 607415834012939242L;
    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    @Column(name = "uuid", length = 64)
    private String uuid;
    @CreatedDate
    private Date dateCreated;
    @LastModifiedDate
    private Date dateModified;
    private Integer tenantId;
}
