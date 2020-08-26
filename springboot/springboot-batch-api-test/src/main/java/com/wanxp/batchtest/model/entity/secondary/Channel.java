package com.wanxp.batchtest.model.entity.secondary;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SYS_CHANNEL")
@Data
public class Channel {
	@Id
	@Column(name = "CHANNEL_ID", unique = false, nullable = false, updatable = true)
	private Integer channelId;
	@Column(name = "NAME", length = 30, unique = true, nullable = false, updatable = true)
	private String name;
	@Column(name = "AGGREGATOR", unique = false, nullable = false, updatable = true)
	private Integer aggregator;
	@Column(name = "PROVIDER_CLASS", length = 255, unique = false, nullable = false, updatable = true, columnDefinition = "CHAR(255) CHARACTER SET 'latin1' COLLATE 'latin1_bin'")
	private String providerClass;
	@Column(name = "LABEL", unique = false, nullable = false)
	private Boolean label;
	@Column(name = "SCAN", unique = false, nullable = false)
	private Boolean scan;
	@Column(name = "LINE_HAUL", unique = false, nullable = false)
	private Boolean lineHaul;
	@Column(name = "CUSTOMS", unique = false, nullable = false)
	private Boolean customs;
	@Column(name = "RETURN_ADDRESS", unique = false, nullable = true, updatable = true, length = 27, columnDefinition = "CHAR(27) CHARACTER SET 'latin1' COLLATE 'latin1_bin'")
	private String returnAddressHash;
	@Column(name = "RESEND_CHANNEL", unique = false, nullable = true, updatable = true)
	private Integer resendChannel;
	@Column(name = "DESCRIPTION", length = 255, unique = false, nullable = false, updatable = true)
	private String description;
	@Column(name = "LEVEL", columnDefinition = "tinyint(1) DEFAULT '0'")
	private Integer level;
	@Column(name = "DESTINATION", unique = false, nullable = false, updatable = true)
	private String destination;
	@Column(name = "LABEL_TYPE", unique = false, nullable = false, updatable = true)
	private Integer labelType;
	@Column(name = "RETURN_CHANNEL", unique = false, nullable = true, updatable = true)
	private Integer returnChannel;
	@Column(name = "ORIGIN", length = 255, unique = false, nullable = false, updatable = true)
	private String origin;
	@Column(name = "CONFIGURED_URL", length = 255, unique = false, nullable = true, updatable = true)
	private String configuredUrl;
	@Column(name = "CONFIGURED_TITLE", length = 255, unique = false, nullable = true, updatable = true)
	private String configuredTitle;
	@Column(name = "PROVIDED_URL", length = 255, unique = false, nullable = true, updatable = true)
	private String providedUrl;
	@Column(name = "PROVIDED_TITLE", length = 255, unique = false, nullable = true, updatable = true)
	private String providedTitle;
	@Column(name = "PROVISIONED_URL", length = 255, unique = false, nullable = true, updatable = true)
	private String provisionedUrl;
	@Column(name = "PROVISIONED_TITLE", length = 255, unique = false, nullable = true, updatable = true)
	private String provisionedTitle;
	@Column(name = "CODE", length = 64, unique = false, nullable = true, updatable = true)
	private String code;
	@Column(name = "CHANNEL_GROUP", length = 20, unique = false, nullable = true, updatable = true)
	private String channelGroup;
	@Column(name = "BIZ_TYPE")
	private Integer bizType;
	@Column(name = "ACTIVE")
	private Boolean active;
	@Column(name = "WHITE_LABEL")
	private Boolean whiteLabel;
	@Column(name = "WHITE_LABEL_TYPE")
	private Integer whiteLabelType;
	@Column(name = "REMARK")
	private String remark;

}
