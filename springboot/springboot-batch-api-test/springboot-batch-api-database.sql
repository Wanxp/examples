CREATE TABLE `SYS_CHANNEL`
(
    `CHANNEL_ID`        int(11)      NOT NULL,
    `CODE`              varchar(64)                                       DEFAULT NULL,
    `NAME`              varchar(80)  NOT NULL,
    `AGGREGATOR`        int(11)      NOT NULL,
    `PROVIDER_CLASS`    char(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
    `LABEL`             tinyint(1)                                        DEFAULT '1',
    `SCAN`              tinyint(1)                                        DEFAULT '1',
    `LINE_HAUL`         tinyint(1)                                        DEFAULT '1',
    `CUSTOMS`           tinyint(1)                                        DEFAULT '1',
    `LABEL_TYPE`        int(11)      NOT NULL,
    `RESEND_CHANNEL`    int(11)      NOT NULL                             DEFAULT '0',
    `RETURN_ADDRESS`    char(27) CHARACTER SET latin1 COLLATE latin1_bin  DEFAULT NULL,
    `DESCRIPTION`       varchar(255) NOT NULL,
    `DESTINATION`       varchar(255)                                      DEFAULT NULL,
    `LEVEL`             int(11)                                           DEFAULT '0',
    `ORIGIN`            varchar(255)                                      DEFAULT '',
    `RETURN_CHANNEL`    int(11)      NOT NULL,
    `CONFIGURED_TITLE`  varchar(255) DEFAULT NULL,
    `CONFIGURED_URL`    varchar(255) DEFAULT NULL,
    `PROVIDED_TITLE`    varchar(255) DEFAULT NULL,
    `PROVIDED_URL`      varchar(255) DEFAULT NULL,
    `PROVISIONED_TITLE` varchar(255) DEFAULT NULL,
    `PROVISIONED_URL`   varchar(255) DEFAULT NULL,
    `CHANNEL_GROUP`     varchar(64)  DEFAULT NULL,
    `BIZ_TYPE`          int(11)      DEFAULT '1',
    `ACTIVE`            int(1)       DEFAULT '1',
    `WHITE_LABEL`       int(1)       DEFAULT '0',
    `WHITE_LABEL_TYPE`  int(11)      DEFAULT '0',
    `REMARK`            varchar(256) DEFAULT NULL,
    PRIMARY KEY (`CHANNEL_ID`),
    KEY `IDX_SYS_CHANNEL_CHANNEL_ID` (`CHANNEL_ID`),
    KEY `IDX_SYS_CHANNEL_CODE` (`CODE`),
    KEY `IDX_SYS_CHANNEL_AGGREGATOR` (`AGGREGATOR`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (1, 'UBI.CN2AU.AUPOST', 'China-Australia STI', 100, 'com.walltech.core.ubi.CnHk2AuChannelProvider', 1, 1, 1, 1,
        0, 4, 'ohik0kpTzYZPFMJWc5fDRVCefnI', 'UBI China to Australia, non-eBay3', 'AU', 1, 'CN', 0,
        'AUClientServiceConfig', 'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig',
        'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (2, 'UBI.AU2AU.AUPOST', 'Australia Direct AU Post', 100, 'com.walltech.core.ubi.DirectAuPostChannelProvider', 1,
        0, 0, 1, 0, 4, null, 'WINIT and Others?', 'AU', 1, 'CN', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp',
        'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0,
        null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (3, 'UBI.ALL2AU.6RX.AUPOST', 'AU Domestic/International 6RX', 100,
        'com.walltech.core.ubi.DomesticChannelProvider', 1, 0, 0, 1, 0, 4, 'm5sNq4AIvPlm8yQ3TzxqFNlnzDc',
        'UBI SYD Office Use ONLY', 'AU', 1, 'AU', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp', 'AUAccountConfig',
        'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 0, 1, 1, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (4, 'UBI.RESEND.AUPOST', 'AU Post Resend Service', 100, 'com.walltech.core.ubi.ResendChannelProvider', 1, 1, 1,
        1, 0, 4, 'Ba07wSE6wQClPCD1053zohzmNiY', 'UBI AUSTRALIA RESEND', 'AU', 0, 'CN', 0, 'AUClientServiceConfig',
        'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp',
        'EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (5, 'STI.CN2AU.AUPOST', 'STI AUSTRALIA', 258, 'com.walltech.core.startrack.AuPostChannelProvider', 1, 0, 0, 1, 1,
        71, 'WFpeYljgfuhAwDHYvF5AjH4nFjg', 'Star Track International AU Post delivery', 'AU', 1, 'CN', 0,
        'AUClientServiceConfig', 'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig',
        'provisionedAu.jsp', 'STI.EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (6, 'UBI.US2AU.AUPOST', 'USA-Australia INACTIVE', 100, 'com.walltech.core.ubi.Us2AuChannelProvider', 1, 1, 1, 1,
        0, 4, '7PwLk8EdnD4evsUpDTmgjBBV3sQ', 'UBI US TO AUSTRALIA', 'AU', 1, 'US', 0, 'AUClientServiceConfig',
        'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp',
        'EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (7, 'UBI.UK2AU.AUPOST', 'UK-Australia INACTIVE', 100, 'com.walltech.core.ubi.Uk2AuChannelProvider', 1, 1, 1, 1,
        0, 4, '7PwLk8EdnD4evsUpDTmgjBBV3sQ', 'UBI UK TO Australia', 'AU', 1, 'CN', 0, 'AUClientServiceConfig',
        'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp',
        'EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (8, 'UBI.QTM.AUPOST', 'Quantium Line-Haul', 100, 'com.walltech.core.ubi.QuantiumChannelProvider', 1, 1, 1, 1, 0,
        0, null, 'Quantium Line Haul scan & track', 'AU,TH.PH,SG,MY,HK,ID,PH,TH', 1, 'CN', 0, 'AUClientServiceConfig',
        'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp',
        'LHL.QUANTIUM', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (9, 'SFS.ALL2CN', 'SFS', 297, 'com.walltech.core.sfs.ChinaChannelProvider', 1, 1, 1, 1, 0, 0,
        'wNv1RDrpI2K-uVnhawGaQDpxBi0', 'SFS PHARMA LOGISTICS', 'CN', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'DATACOLLECT', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (10, 'UBI.CN2NZ.HASTE', 'China-New Zealand haste', 100, 'com.walltech.core.ubi.NewZealandChannelProvider', 1, 1,
        1, 1, 0, 0, null, 'China to New Zealand', 'NZ', 0, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'NZHASTE',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (11, 'UBI.AU2NZ.AUPOST', 'AU-NZ Post Haste', 100, 'com.walltech.core.ubi.NewZealandChannelProvider', 1, 1, 1, 1,
        0, 0, null, 'Australia to New Zealand Post Haste', 'NZ', 0, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'NZHASTE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (12, 'UBI.CN2EU.ROYALMAIL', 'China-Europe', 100, 'com.walltech.core.ubi.EUChannelProvider', 1, 1, 1, 1, 0, 0,
        null, 'China to New Zealand', 'GB', 0, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'ROYALMAIL', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (13, 'UBI.CN2CL.CLPOST', 'China-Chile', 100, 'com.walltech.core.ubi.CLChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'China to Chile', 'CL', 0, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'CLPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (14, 'UBI.RETURN.AUPOST', 'AU Post Returns', 100, 'com.walltech.core.ubi.ApRmsChannelProvider', 1, 0, 0, 0, 0, 0,
        null, 'Australia Post returns', 'AU', 0, 'CN', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp',
        'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0,
        null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (15, 'UBI.CN2CA.LANDMARK', 'China-Canada Landmark INACTIVE', 100, 'com.walltech.core.ubi.CanadaChannelProvider',
        1, 1, 1, 1, 0, 0, 'JrSKvabfU7PYc8ZiDe2StFxWSDU', 'China to Canada', 'CA', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'CA.LANDMARK', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (16, 'UBI.CN2NZ.NZPOST', 'China-New Zealand NZPost', 100, 'com.walltech.core.ubi.NZPostChannelProvider', 1, 1, 1,
        1, 0, 185, '89pQYguwrZwQTZSadQIxtf1CD-E', 'China to New Zealand NZ Post', 'NZ', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'NZPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (17, 'UBI.ALL2ALL.DC', 'Data collection channel INACTIVE', 100,
        'com.walltech.core.ubi.DataCollectionChannelProvider', 0, 0, 0, 0, 2, 0, null, 'Data collection channel',
        'AU,NZ', 1, 'CN', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp',
        'AUProvisionedConfig', 'provisionedAu.jsp', 'UBI.DATACOLLECT', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (18, 'NZP.CN2NZ.NZPOST', 'China-New Zealand', 462, 'com.walltech.core.ubi.NZPostChannelProvider', 1, 1, 1, 1, 0,
        0, null, 'NZP CHINA-NEW ZEALAND', 'NZ', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'NZPOST',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (19, 'UBI.CA2US.CAPOST', 'China-USA CPC', 97, 'com.walltech.core.ubi.CA2USChannelProvider', 1, 1, 1, 1, 0, 0,
        null, 'CHINA-USA VIA CANADA', 'US', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'QA.USCPC', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (20, 'UBI.EZY2SHIP', 'Ezy2Ship SingPost INACTIVE', 100, 'com.walltech.core.ubi.Ezy2ShipAuPostChannelProvider', 1,
        0, 0, 0, 0, 0, '7PwLk8EdnD4evsUpDTmgjBBV3sQ', 'Quantium ezy2ship', 'AU', 1, 'CN', 0, 'AUClientServiceConfig',
        'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp',
        'EZY2SHIP.SGPOST', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (21, 'UBI.CN2GE.DHL', 'Canada Direct Landmark INACTIVE', 100, 'com.walltech.core.ubi.CanadaChannelProvider', 1,
        0, 0, 0, 0, 0, 'JrSKvabfU7PYc8ZiDe2StFxWSDU', 'Landmark Canada Without Air Lift', 'CA', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'CA.LANDMARK', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (22, 'UBI.SPSR', 'China-Russia SPSR', 100, 'com.walltech.core.ubi.SPSRChannelProvider', 1, 1, 1, 1, 0, 0,
        'JrSKvabfU7PYc8ZiDe2StFxWSDU', 'China to Russia using SPSR Locker and Courier', 'RU', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'RUSPSR', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (23, 'UBI.AU2NZ.NZPOST', 'AU-NZ NZPost', 100, 'com.walltech.core.ubi.NZPostChannelProvider', 1, 1, 1, 1, 0, 0,
        '89pQYguwrZwQTZSadQIxtf1CD-E', 'AU to NZ via New Zealand Post', 'NZ', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'NZPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (24, 'UBI.CN2EU.BPOST', 'CN-EU MiniPak EU BIS INACTIVE', 100, 'com.walltech.core.ubi.BPostEUChannelProvider', 1,
        1, 1, 1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'MiniPak EU bpost Hong Kong injection',
        'AT,BE,BG,CY,CZ,DE,DK,EE,ES,FI,FR,GR,HR,HU,IE,IT,LT,LU,LV,MT,NL,PL,PT,RO,SE,SI,SK,GB', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'BIS.MINIPAKEU.BPOST', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (25, 'UBI.CN2EU.LANDMARK', 'China-Europe Landmark ADS INACTIVE', 100,
        'com.walltech.core.ubi.LandMarkADSEUChannelProvider', 1, 1, 1, 1, 0, 0, 'a57srOa27mws2NiDCs8nRseVSU4',
        'China-Europe Landmark ADS',
        'AT,BE,BG,CY,CZ,DE,DK,EE,ES,FI,FR,GR,HR,HU,IE,IT,LT,LU,LV,MT,NL,PL,PT,RO,SE,SI,SK,GB', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'ADS.LANDMARK', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (26, 'UBI.CN2US.LANDMARK', 'China-USA Landmark ADS INACTIVE', 100,
        'com.walltech.core.ubi.LandMarkADSUSChannelProvider', 1, 1, 1, 1, 0, 0, '7-ki8JCjmnyUDWD9BFpZLVNTh4A',
        'China-USA Landmark ADS', 'US', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'ADS.LANDMARK', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (27, 'UBI.ASP.CN2AU.AUPOST', 'ASP China-Australia', 100, 'com.walltech.core.ubi.CnHk2AuChannelEbayProvider', 1,
        1, 1, 1, 0, 4, 'ohik0kpTzYZPFMJWc5fDRVCefnI', 'UBI China to Australia, eBay ASP', 'AU', 1, 'CN', 0,
        'AUClientServiceConfig', 'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig',
        'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (28, 'PPS', 'Packet Plus', 563, 'com.walltech.core.dhl.channel.PacketPlusStandadChannelProvider', 1, 1, 1, 1, 0,
        0, null, 'Packet Plus Standard', '*', 1, 'CN', 0, 'DHLClientServiceConfig', 'clientConfigDHL.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DHLProvisionedConfig', 'provisionedDHL.jsp', 'PPS.DHL', 1, 1,
        0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (29, 'PLT', 'Parcel Direct', 563, 'com.walltech.core.dhl.channel.ParcelDirectChannelProvider', 1, 1, 1, 1, 0, 0,
        null, 'Parcel Direct US, GB', 'US,GB,AU', 1, 'CN', 0, 'DHLClientServiceConfig', 'clientConfigDHL.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DHLProvisionedConfig', 'provisionedDHL.jsp', 'PLT.DHL', 1, 1,
        0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (30, 'UBI.JD.SPSR', 'CN-RU SPSR JD INACTIVE', 100, 'com.walltech.core.ubi.SPSRChannelProvider', 1, 1, 1, 1, 0, 0,
        null, 'China-SPSR-RUS for JD', 'RU', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'RUSPSR',
        1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (31, 'SAI.CN2AU', 'Sai Cheng CN-AU', 927, 'com.walltech.core.saicheng.AuPostChannelProvider', 1, 1, 1, 1, 0, 0,
        '5AUdtdGxd1ITx0QxqOjDRXzWego', 'Sai Cheng CN-AU via AU Post', 'AU', 1, 'CN', 0, 'AUClientServiceConfig',
        'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp',
        'EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (32, 'UBI.ALL2HK.COE', 'HK COE', 100, 'com.walltech.core.ubi.COEChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'AU/US/UK-HK COE Channel', 'HK', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'HKCOE',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (33, 'UBI.UCL.CN2AU.AUPOST', 'China-Australia Cainiao', 100, 'com.walltech.core.ubi.CN2AUChannelProviderUCL', 1,
        1, 1, 1, 0, 4, 'ohik0kpTzYZPFMJWc5fDRVCefnI', 'UBI China to Australia, Cainiao', 'AU', 1, 'CN', 0,
        'AUClientServiceConfig', 'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig',
        'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (34, 'UBI.SG2AU.AUPOST', 'Singapore-Australia', 100, 'com.walltech.core.ubi.SG2AUChannelProvider', 1, 1, 1, 1, 0,
        4, 'm5sNq4AIvPlm8yQ3TzxqFNlnzDc', 'UBI Singapore to Australia, under 30kg', 'AU', 1, 'SG', 0,
        'AUClientServiceConfig', 'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig',
        'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (35, 'PKD', 'Packet', 563, 'com.walltech.core.dhl.channel.PacketStandadChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'Packet Standad', '*', 1, 'CN', 0, 'DHLClientServiceConfig', 'clientConfigDHL.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DHLProvisionedConfig', 'provisionedDHL.jsp', 'PKD.DHL', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (36, 'PKM', 'Packet (Simplified Manifest)', 563,
        'com.walltech.core.dhl.channel.PacketPriorityManifestChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'Packet (Simplified Manifest)', 'DE', 1, 'CN', 0, 'DHLClientServiceConfig', 'clientConfigDHL.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DHLProvisionedConfig', 'provisionedDHL.jsp', 'PKM.DHL', 1, 1,
        0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (37, 'PPM', 'Packet Plus (Simplified Manifest)', 563,
        'com.walltech.core.dhl.channel.PacketPlusPriorityManifestChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'Packet Plus (Simplified Manifest)', 'DE', 1, 'CN', 0, 'DHLClientServiceConfig', 'clientConfigDHL.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DHLProvisionedConfig', 'provisionedDHL.jsp', 'PPM.DHL', 1, 1,
        0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (38, 'UBI.OMNIVA', 'China-Russian OMNIVA INACTIVE', 100, 'com.walltech.core.omniva.OmnivaChannelProvider', 1, 1,
        1, 1, 0, 0, 'cu1ANMli99ZDv3GMwHYPkV1nwCk', 'China-Russian Federation Omniva Service', 'RU', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'RUOMNIVA', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (39, 'UBI.SGP', 'SingPost Service INACTIVE', 100, 'com.walltech.core.singpost.SingPostChannelProvider', 1, 1, 1,
        1, 0, 0, 'Mujwj1jiMZJWvd-6rl3QV_8ob4w', 'UBI China to BR/MX/US/IN/MY service', 'BR,MX,US,MY,IN', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'SGPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (40, 'STI.CN2NZ.NZP', 'STI China to NZ Service', 258, 'com.walltech.core.startrack.NZPostChannelProvider', 1, 1,
        1, 1, 0, 0, null, 'STI China to New Zealand Service', 'NZ', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'NZPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (41, 'UBI.CN2CA.CPC', 'CN-CA service CPC', 100, 'com.walltech.core.capost.CAPostChannelProvider', 1, 1, 1, 1, 0,
        70, '9rMk2zHQ5IOHuzVEFOzKBOKyFF0', 'China to Canada under 20CAD', 'CA', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (42, 'STI.PRM.CN2AU', 'STI China to Australia Preminum Service', 258,
        'com.walltech.core.startrack.STIPreminumServiceChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'STI China to Australia Preminum Service', 'AU', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'PRM.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (43, 'UBI.CN2EU.CNBPOST', 'BPost CN MiniPak EU INACTIVE', 100, 'com.walltech.core.bpost.CnToolChannelProvider',
        1, 1, 1, 1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'MiniPak EU',
        'AT,BE,BG,CY,CZ,DE,DK,EE,ES,FI,FR,GR,HR,HU,IE,IT,LT,LU,LV,MT,NL,PL,PT,RO,SE,SI,SK,GB', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'MINIPAKEU.BPOST', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (44, 'UBI.ALL2SG.FAFFL', 'UBI.FAF-FLYING INACTIVE', 100, 'com.walltech.core.fafflying.FafFlyingChannelProvider',
        1, 1, 1, 1, 0, 0, null, 'UBI.FAF-FLYING', 'SG,MY', 1, 'US', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'FAF.FLYING', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (45, 'STI.CN2AU.AUPOST.WITHOUT-STRICT-ADDRESS-CHECK', 'STI AUSTRALIA WITHOUT STRICT ADDRESS CHECK', 258,
        'com.walltech.core.startrack.AUPostWithoutStrictCheckAddressChannelProvider', 1, 0, 0, 1, 1, 0,
        'WFpeYljgfuhAwDHYvF5AjH4nFjg', 'Star Track International AU Post delivery', 'AU', 1, 'CN', 0,
        'AUClientServiceConfig', 'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig',
        'provisionedAu.jsp', 'STI.EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (46, 'STI.CN2NZ.NZP.WITHOUT-STRICT-ADDRESS-CHECK', 'STI NZP WITHOUT STRICT ADDRESS CHECK', 258,
        'com.walltech.core.startrack.NZPostWithoutStrictCheckAddressChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'STI China to New Zealand Service', 'NZ', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'NZPOST',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (47, 'UBI.CNDIRECT2CA.CPC', 'CPC recovery service', 100, 'com.walltech.core.capost.CAPostDirectChannelProvider',
        1, 0, 1, 1, 0, 70, null, 'Canada Recovery service', 'CA', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (48, 'UBI.CN2AU.UBIF', 'CN2AU Semi Tracked Service INACTIVE', 100,
        'com.walltech.core.freipost.FreiPostChannelProvider', 1, 0, 1, 1, 0, 0, null, 'CN2AU Semi Tracked Service',
        'AU', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'FREIPOST', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (49, 'UBI.PPS', 'Packet Plus', 100, 'com.walltech.core.dhl.channel.PacketPlusStandadChannelProvider', 1, 1, 1, 1,
        0, 0, null, 'Packet Plus DHL exSHA', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'PPS.DHL',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (50, 'UBI.PKD', 'Packet', 100, 'com.walltech.core.dhl.channel.PacketStandadChannelProvider', 1, 1, 1, 1, 0, 0,
        null, 'Packet Standard DHL exSHA', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'PKD.DHL',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (51, 'UBI.DTDC', 'China-India DTDC Service INACTIVE', 100, 'com.walltech.core.dtdc.DtdcChannelProvider', 1, 0, 1,
        1, 0, 0, null, 'China-India DTDC Service', 'IN', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'DTDC', 1,
        0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (52, 'UBI.CN2AU.FREIT2', 'CN2AU Semi Tracked Service T2 INACTIVE', 100,
        'com.walltech.core.freipost.FreiPostChannelProvider', 1, 0, 1, 1, 0, 0, null, 'CN2AU Semi Tracked Service T2',
        'AU', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'FREIPOST', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (53, 'UBI.CN2EU.BPOST.EMC', 'MiniPak EU Direct Injection', 100, 'com.walltech.core.ubi.BPostEUChannelProvider',
        1, 1, 1, 1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'Bpost MiniPak EU exBRU Injection',
        'AT,BE,BG,CY,CZ,DE,DK,EE,ES,FI,FR,GR,HR,HU,IE,IT,LT,LU,LV,MT,NL,PL,PT,RO,SE,SI,SK,GB', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'EMC.MINIPAKEU.BPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (54, 'UBI.CNDIRECT2CA.CPC.20CAD', 'CPC Recovery service 20CAD+', 100,
        'com.walltech.core.capost.CAPostDirect20CADChannelProvider', 1, 0, 1, 1, 0, 70, null,
        'CPC Recovery service 20CAD+', 'CA', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'CAPOST',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (55, 'STI.NZ.LEGACY.NZP', 'LEGACY NZ POST', 258, 'com.walltech.core.stinzpost.StinzpostChannelProvider', 1, 1, 1,
        1, 0, 0, null, 'LEGACY NZ POST', 'NZ', 1, 'AU', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'NZPOST',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (56, 'UBI.CN2CA.CPC.20CAD', 'CN-CA service CPC 20CAD+', 100,
        'com.walltech.core.capost.CAPost20CADChannelProvider', 1, 1, 1, 1, 0, 70, '9rMk2zHQ5IOHuzVEFOzKBOKyFF0',
        'CN-CA expedited service 20CAD+', 'CA', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'CAPOST',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (57, 'UBI.CN2MX.SCM', 'SCM MEXICO Service', 100, 'com.walltech.core.mexico.MexicoChannelProvider', 1, 1, 1, 1, 0,
        0, '7XuvZ8fm45rQTUIlaoE_Cg', 'SCM MEXICO Service', 'MX', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'MX.SCM', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (58, 'UBI.CN2EUR.DPD', 'DPD Europe Service INACTIVE', 100, 'com.walltech.core.dpd.DpdChannelProvider', 1, 1, 1,
        1, 0, 0, null, 'DPD Europe Service', 'ES,GB', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'DPD', 1,
        0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (59, 'UBI.CN2US.BPOST.ECOSMART', 'BPost EcoSmart US Service INACTIVE', 100,
        'com.walltech.core.ubi.BPostUSChannelProvider', 1, 1, 1, 1, 0, 0, null, 'BPost EcoSmart US Service', 'US', 1,
        'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'ECOSMARTUS.BPOST', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (60, 'UBI.TT.MINIPAK.BPOST', 'BPost Minipak TT Service', 100, 'com.walltech.core.ubi.BPostEUChannelProvider', 1,
        1, 1, 1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'BPost Minipak TT Service', 'MX,BR,AR,CL,CO,RU,UA,TR,IL,AE,US,SG',
        1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'TT.MINIPAK.BPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (61, 'UBI.SIGN.MINIPAK.BPOST', 'BPost Minipak Sign Service', 100, 'com.walltech.core.ubi.BPostEUChannelProvider',
        1, 1, 1, 1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'BPost Minipak Sign Service', '*', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'SIGN.MINIPAK.BPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (62, 'JP.YUPACK', 'Yupack', 2196, 'com.walltech.core.japan.JapanPostChannelProvider', 1, 0, 1, 1, 0, 66, null,
        'Yupack', 'JP', 1, 'CN', 0, 'JPClientServiceConfig', 'clientConfigDefault.jsp', 'JPClientServiceConfig',
        'providedDefault.jsp', 'JPClientServiceConfig', 'provisionedDefault.jsp', 'Yupack', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (63, 'JP.YUPACKET', 'Yupacket', 2196, 'com.walltech.core.japan.JapanPostChannelProvider', 1, 0, 1, 1, 0, 66,
        null, 'Yupacket', 'JP', 1, 'CN', 0, 'JPClientServiceConfig', 'clientConfigDefault.jsp', 'JPClientServiceConfig',
        'providedDefault.jsp', 'JPClientServiceConfig', 'provisionedDefault.jsp', 'Yupacket', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (64, 'JP.AIRCARGO', 'Aircargo', 2196, 'com.walltech.core.japan.JapanPostChannelProvider', 1, 0, 1, 1, 0, 66,
        null, 'Aircargo', 'JP', 1, 'CN', 0, 'JPClientServiceConfig', 'clientConfigDefault.jsp', 'JPClientServiceConfig',
        'providedDefault.jsp', 'JPClientServiceConfig', 'provisionedDefault.jsp', 'Aircargo', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (65, 'UBI.CNDIRECT2RU.SPSR', 'China-Russia SPSR Recovery Service INACTIVE', 100,
        'com.walltech.core.ubi.SPSRChannelProvider', 1, 1, 1, 1, 0, 0, 'JrSKvabfU7PYc8ZiDe2StFxWSDU',
        'China to Russia using SPSR Locker and Courier', 'RU', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'RUSPSR', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (66, 'JPPOST.RESEND', 'JAPAN RESEND CHANNEL', 2196, 'com.walltech.core.japan.JapanPostResendChannelProvider', 1,
        0, 1, 1, 0, 66, null, 'JAPAN RESEND CHANNEL', 'JP', 0, 'CN', 0, 'JPClientServiceConfig',
        'clientConfigDefault.jsp', 'JPProvidedConfig', 'providedDefault.jsp', 'JPProvisionedConfig',
        'provisionedDefault.jsp', 'JAPAN.RESEND', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (67, 'UBI.CN2EUR.DPD.FRIPOST', 'DPD Hybrid Service INACTIVE', 100,
        'com.walltech.core.dpd.DpdHybridChannelProvider', 1, 1, 1, 1, 0, 0, null, 'DPD Hybrid Service', 'DE', 1, 'CN',
        0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'DPD.HYBRID', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (68, 'Seychelles Post', 'Seychelles Service', 2409, 'com.walltech.core.seychelles.SeychellesChannelProvider', 0,
        0, 0, 0, 0, 0, null, 'Seychelles Post',
        'AT,BH,BD,BY,BE,BR,CA,CY,EG,FR,DE,GR,IN,IE,IT,JO,KZ,KE,KW,LB,MA,NP,OM,PK,QA,SA,RS,ZA,ES,LK,SD,CH,TR,UG,IR,RU,TZ,AE,GB,US',
        1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'Seychelles', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (69, 'UBI.NJV', 'NinjaVan Service', 100, 'com.walltech.core.ninja.NinjaPostChannelProvider', 1, 0, 0, 1, 0, 0,
        null, 'NinjaVan Service', 'SG,MY,ID', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'NINJAVAN', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (70, 'UBI.RESEND.CAPOST', 'CA Post Resend Service', 100, 'com.walltech.core.capost.CAPostResendChannelProvider',
        1, 0, 0, 0, 0, 70, '9rMk2zHQ5IOHuzVEFOzKBOKyFF0', 'CA Post Resend Service', 'CA', 0, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (71, 'STI.RESEND.AUPOST', 'STI AU Post Resend Service', 258,
        'com.walltech.core.startrack.AuPostResendChannelProvider', 1, 0, 0, 1, 1, 71, 'WFpeYljgfuhAwDHYvF5AjH4nFjg',
        'Star Track International AU Post delivery', 'AU', 1, 'CN', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp',
        'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp', 'STI.EPARCEL.AUPOST', 1, 1, 0,
        0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (72, 'UBI.TRACK.MINIPACK.BPOST', 'Minipak Tracking Direct Injection', 100,
        'com.walltech.core.ubi.BPostMinipakTrackingChannelProvider', 1, 1, 1, 1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY',
        'Bpost Dragon Scan exBRU Injection',
        'AT,CY,CZ,DE,DK,EE,ES,FI,FR,GR,HR,HU,IE,IT,LT,LU,LV,MT,NL,PL,PT,SE,SI,SK,GB,BE', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'TRACK.MINIPAK.BPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (73, 'YUSHEN.YUPACK', 'Yupack', 2893, 'com.walltech.core.japan.JapanPostChannelProvider', 1, 0, 1, 1, 0, 0, null,
        'Yupack', 'JP', 1, 'CN', 0, 'JPClientServiceConfig', 'clientConfigDefault.jsp', 'JPProvidedConfig',
        'providedDefault.jsp', 'JPProvisionedConfig', 'provisionedDefault.jsp', 'Yupack', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (74, 'UBI.AU2AU.COURIER', 'Australia Courier INACTIVE', 100, 'com.walltech.core.fastway.FastwayChannelProvider',
        1, 0, 0, 1, 1, 0, 'WFpeYljgfuhAwDHYvF5AjH4nFjg', 'FASTWAY', 'AU', 1, 'AU', 0, 'AUClientServiceConfig',
        'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp',
        'UBI.COURIER', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (75, 'FAF.AMAZON.DATA.COLLECTION', 'Amazon FAF Data Service', 100,
        'com.walltech.core.fafflying.FafFlyingChannelProvider', 1, 0, 0, 1, 1, 0, null, '123', 'SG', 1, 'AU', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'FAF.AMAZON.DATA.COLLECTION', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (76, 'UBI.CN2US.USPS', 'China-USA USPS eBay', 100, 'com.walltech.core.ubi.UbiIbcn2usaChannelProvider', 1, 0, 0,
        1, 1, 0, null, 'UBI-IB China to USA USPS Service for eBay Items', 'US', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UBI.IB', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (77, 'UBI.TRACK.MINIPACK.BISEXHKG.BPOST', 'MiniPak Tracking BIS exHKG INACTIVE', 100,
        'com.walltech.core.ubi.BPostMinipakTrackingChannelProvider', 1, 1, 1, 1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY',
        'Bpost Minipak Tracking Service',
        'AT,CY,CZ,DE,DK,EE,ES,FI,FR,GR,HR,HU,IE,IT,LT,LU,LV,MT,NL,PL,PT,SE,SI,SK,GB,BE', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'TRACK.MINIPAK.BPOST', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (78, '加拿大亚马逊卡派', 'CAFBA-LCL-TRUCK', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'DSL', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY SEA', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (79, 'ARAMAX 普通折扣', 'ARAMAX A', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JC ARAMAX', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'ARAMAX', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (80, '新加坡邮政', 'EMS -SIN', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JH EMS', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.EMS.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (81, '加拿大海派UPS', 'CAFBA-LCL-UPS', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'LCD SZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY SEA', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (82, '加拿大空派UPS', 'CAFBA-AIR-UPS', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'SFY&JY', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY AIR', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (83, '美国亚马逊空派快线', 'USAFBA-AIRF+UPS', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'TB 武汉', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY AIR', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (84, '美国亚马逊海派快线', 'USAFBA -LCL+FEDEX （fast)', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1,
        1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'KJY', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY SEA', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (85, '日本亚马逊空派', 'JAPFBA-AIR+COURIER', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JC SZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY AIR', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (86, 'DHL 特惠5000', 'DHL A', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'BSD DHL&DHL 特惠', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.DHL.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (87, 'DHL 6000', 'DHL B', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'BSD DHL A&B', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.DHL.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (88, 'DHL 非亚马逊特惠', 'DHL NA', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'BSD DHLD', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.DHL.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (89, '英国亚马逊YODEL空派Y', 'GBFBA-AIR+YODEL', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1,
        0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JC YODEL', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY AIR', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (90, '欧洲亚马逊HK空派', 'EUFBA-AIR+HK', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'HD SZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY AIR', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (91, '新马泰专线DAP LCL', 'SIN&MNL&THL -LCL+DAP', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1,
        1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'DJ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (92, '加拿大非亚马逊海派', 'CA -LCL+UPS-DDP', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'SFY SZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (93, '美国非亚马逊海派慢', 'USA-LCL+UPS-DDP-S', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'ZML 海派', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (94, '罗马非亚马逊DHL 空派', 'RODDP-AIR-DHL', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JC SZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (95, 'UPS 欧洲非亚马逊UPS 空派', 'EU DDP-AIR-UPS', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1,
        0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JC SZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (96, '欧洲非亚马逊DAP 空派', 'EU DDP -AIR-DAP', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JC SZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (97, 'HK UPS 特惠5000', 'UPS A', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JH UPS 折扣', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.UPS.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (98, '英国空派YODEL 普通地址', 'GBDDP-AIR-YODEL', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1,
        0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JC SZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (99, 'HK TNT 欧洲中东大货', 'TNT B', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JH TNT C&H', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.TNT.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (100, 'TNT 价格总汇', 'TNT A', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JH TNT', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.TNT.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (101, '日本非亚马逊空派不报税', 'JAP-AIR-COURIER-DAP', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1,
        1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JC SZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (102, '加拿大非亚马逊地址卡派', 'CA-LCL+TRUCK-DAP', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1,
        0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'DJ ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (103, '中东俄罗斯DDP 小货包税', 'MID&RU DDP PARCEL', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1,
        1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JC LINE', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (104, '日本亚马逊卡派', 'JAPFBA-LCL+TRUCK', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JC SZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY SEA', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (105, '韩国UPS 美国红单5000 含油', 'UPS US 5000', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1,
        0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'KJY', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.UPS.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (106, '欧洲非亚马逊地址卡派', 'EUDDP TRAIN+COURIER', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1,
        0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'LCD SZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (107, 'UPS 韩国美加红单含税', 'UPS CA& US 6000', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1,
        0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'KYJ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.UPS.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (108, 'UNI.2017HK.UPS.EXPRESS.PUBLISH', '大陆DHL欧美澳专线', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider',
        1, 1, 1, 1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'UNI.2017HK.UPS.EXPRESS.PUBLISH', '*', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (109, '美国非亚马逊空派广州线', 'USA-AIRB+UPS-DDP', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1,
        0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'WY GZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (110, 'UNI.FEDEXIE.SMALL', 'HK FEDEX-IE6000', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1,
        1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'UNI.FEDEXIE.SMALL', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.FEDEX.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (111, 'FEDEX 代理IE', 'FEDEX IE', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JH FEDI', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.FEDEX.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (112, 'FEDEX LED 产品', 'FEDEX-LED', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'BSD FEDEX 特价C-IE', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.FEDEX.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (113, '澳新海派不包税', 'AU&NZ-LCL+UPS-DAP', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', ' DJ GZ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (114, 'FEDEX 大货马来上网', 'FEDEX B', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'BSD FEDEX IE 大货', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.FEDEX.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (115, 'UNI.FEDEX.HK.IP', ' 香港联邦IP ', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'UNI.FEDEX.HK.IP', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.FEDEX.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (116, 'UNI.FEDEX.HK.IE', ' 香港联邦IE ', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'UNI.FEDEX.HK.IE', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.FEDEX.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (117, 'FEDEX IP 代理价', 'FEDEX IP', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JH FEDU', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.FEDEX.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (118, 'UNI.FEDEX.HK.ODDS.IE', ' HK联邦特惠IE ', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1,
        1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'UNI.FEDEX.HK.ODDS.IE', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.FEDEX.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (119, 'UNI.SG.EMS', ' 新加坡EMS ', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'UNI.SG.EMS', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.EMS.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (120, 'UNI.SG.LINE', ' 新加坡专线 ', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'UNI.SG.LINE', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (121, 'UNI.ARAMEX.LINE', ' UNI MID EAST LINE', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1,
        1, 1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'UNI.ARAMEX.LINE', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (122, 'UBI.IB.CN2USA.WISH', 'China-USA IB Wish', 100, 'com.walltech.core.ubi.UbiIbcn2usaChannelProvider', 1, 0,
        0, 1, 1, 0, null, 'IB Service for Wish 4PL Model', 'US', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UBI.IB', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (123, 'UBI.CN2FR.COL', 'CN-FR Service Colissimo INACTIVE', 100,
        'com.walltech.core.anjun.FrenchLineChannelProvider', 1, 0, 0, 1, 1, 0, null, 'CN-FR using 3rd Party', 'FR', 1,
        'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'ANJUN', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (124, 'UBI.CN2UK.ROM', 'CN-UK Service Royal Mail INACTIVE', 100,
        'com.walltech.core.anjun.EnglandChannelProvider', 1, 0, 0, 1, 1, 0, null, 'CN-UK using 3rd Party', 'GB', 1,
        'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'ANJUN', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (125, '美国亚马逊卡派', 'USA FBA-LCL+TRUCK', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'ZML&DF&DSL', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY SEA', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (126, '美国亚马逊海派慢线', 'USA FBA-LCL+UPS-S', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'ZML', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY SEA', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (127, '欧洲亚马逊卡派', 'EUR FBA-LCL+TRUCK', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'DSL&DR', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY SEA', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (128, '欧洲亚马逊广州 空派', 'EUFBA-AIR+GZ', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'KYJ', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY AIR', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (129, '美国亚马逊空派广州', 'USAFBA-AIRB+UPS', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'WY 广州', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY AIR', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (130, '美国非亚马逊空派快线', 'USA AIRF+UPS-DDP', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'TB 武汉', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (131, '德法意亚马逊UPS 空派', 'DFYFBA-AIR+UPS', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JC UPS', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY AIR', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (132, '欧洲亚马逊铁派', 'EURFBA-TRA+COURIER', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, null, 'LCD SZ', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault_unipower.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'FBA BY TRAIN', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (133, 'UBI.CN2US.BPOST.PRIORITY', 'China-US Tracking Priority INACTIVE', 100,
        'com.walltech.core.ubi.BpostGuamPostChannelProvider', 1, 1, 1, 1, 0, 0, null, 'BPost GUAM US Service', 'US', 1,
        'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'GUAM.BPOST', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (134, 'LTEXP.CN2CA.CPC.20CAD', 'CN-CA service CPC 20CAD+', 3759,
        'com.walltech.core.capost.CAPost20CADChannelProvider', 1, 1, 1, 1, 0, 70, null,
        'CN-CA expedited service 20CAD+', 'CA', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'CAPOST',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (135, 'UBI.CN2US.USPS.PLATFORM', 'China-US USPS Platform', 100,
        'com.walltech.core.ubi.Ibcn2usaeCommerceChannelProvider', 1, 0, 0, 1, 1, 0, null,
        'China-USA IB eCommerce Platforms: eBay, Amazon', 'US', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UBI.IB', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (136, 'EZPOST', 'EZPOST', 2893, 'com.walltech.core.ezpost.EzpostChannelProvider', 1, 0, 0, 1, 1, 0, null,
        'EZPOST', 'JP', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'EZPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (137, 'UBI.CN2FR.UBICOL', 'CN-FR UBI Colissimo INACTIVE', 100,
        'com.walltech.core.anjun.FrenchLineChannelProvider', 1, 0, 0, 1, 1, 0, null,
        'CN-FR UBI Operation Hubs using 3rd Party', 'FR', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'ANJUN.FR', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (138, 'UBI.CN2UK.UBIROM', 'CN-UK UBI Royal Mail INACTIVE', 100, 'com.walltech.core.anjun.EnglandChannelProvider',
        1, 0, 0, 1, 1, 0, null, 'CN-UK UBI Operation Hubs using 3rd Party', 'GB', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'ANJUN.UK', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (139, 'UBI.CN2UKE2E.ROM', 'CN-UK E2E Royal Mail', 100, 'com.walltech.core.royalmail.RoyalMailChannelProvider', 1,
        0, 0, 1, 1, 186, '----b78NH2lC3iEUHU98ZYAg9kU', 'CN-UK RM48 Tracked E2E', 'GB', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'ROYALMAIL.UK', 3, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (140, 'UBI.DIRECT2UK.ROM', 'Royal Mail Recovery Service INACTIVE', 100,
        'com.walltech.core.royalmail.RoyalMailChannelProvider', 1, 0, 0, 1, 1, 0, '1234Qn8uU2lC3iESOPJrZYAg9kU',
        'CN-UK RM48 Tracked Recovery Only', 'GB', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'ROYALMAIL.UK', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (141, 'UBI.CN2UKE2E.ROM.SEMI', 'CN-UK Semi-Tracked E2E Royal Mail INACTIVE', 100,
        'com.walltech.core.royalmail.RoyalMailSemiChannelProvider', 1, 0, 0, 1, 1, 0, '1234Qn8uU2lC3iESOPJrZYAg9kU',
        'CN-UK RM24 and RM48 E2E', 'GB', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'ROYALMAIL.UK', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (142, 'UBI.DIRECT2UK.ROM.SEMI', 'Royal Mail Semi-Tracked Recovery Service INACTIVE', 100,
        'com.walltech.core.royalmail.RoyalMailSemiChannelProvider', 1, 0, 0, 1, 1, 0, '1234Qn8uU2lC3iESOPJrZYAg9kU',
        'CN-UK RM24 and RM48 Recovery Only', 'GB', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'ROYALMAIL.UK', 1, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (143, 'FEDEX JP', 'FEDEX  IP  JP DISCOUNT', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1,
        1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', '日本大货联邦IP 促销', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.FEDEX.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (144, 'UPS 欧洲红单', 'UPS EU EXPRESS DISCOUNT', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1,
        1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JH UPS 欧洲特惠', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.UPS.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (145, '大陆TNT 中东澳洲大货含油', 'TNT C', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JH TNT E', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UNI.TNT.CHANNEL.SERVICE', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (146, 'UBI.DHL.CN2CA.CPC.20CAD', 'CA Service CPC 20CAD+ DHL', 100,
        'com.walltech.core.capost.UBIDHLCAPostChannelProvider', 1, 1, 1, 1, 0, 70, '9rMk2zHQ5IOHuzVEFOzKBOKyFF0',
        'CA Service CPC 20CAD+ for DHL that requires re-labelling in UBI Hubs', 'CA', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (147, '澳大利亚FBA 卡派', 'AUFBA-LCL-TRUCK', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0,
        0, 'HiYZEF1MmthDD6DOtku6uLI8eZY', 'DJ AUFBA', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY SEA', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (148, '日本FBA 卡派', 'JPFBA-LCL-TRUCK', 3277, 'com.walltech.core.uni.UniFbaParcelChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'JC FBA', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault_unipower.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'FBA BY SEA', 2, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (149, 'LTEXP.CN2CA.CPC', 'CN-CA service CPC', 3759, 'com.walltech.core.capost.CAPostChannelProvider', 1, 1, 1, 1,
        0, 70, null, 'China to Canada under 20CAD', 'CA', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'CAPOST',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (150, 'UBI.CN2CA.RELABEL.20CAD', 'CA Relabel Service 20CAD+', 100,
        'com.walltech.core.capost.UBIDHLCAPostChannelProvider', 1, 1, 1, 1, 0, 70, '9rMk2zHQ5IOHuzVEFOzKBOKyFF0',
        'CN-CA Service 20CAD+ for Clients that require re-labelling in UBI Hubs', 'CA', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (151, 'UBI.CN2WW.EUB', 'EUB service', 100, 'com.walltech.core.eub.EubChannelProvider', 1, 0, 0, 1, 1, 0, null,
        'EUB service',
        'AT,AU,BE,BR,CA,CH,DE,DK,ES,FI,FR,GB,GR,HK,HU,IE,IL,IT,JP,KR,LU,MX,MY,NL,NO,NZ,PL,PT,RU,SA,SE,SG,TH,TR,UA,US,VN',
        1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'UBI.EUB', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (152, 'UBI.CN2US.BPOST.LANDMARK', 'CN-US Service Landmark', 100,
        'com.walltech.core.bpost.BpostUsExpressChannelProvider', 1, 0, 0, 1, 1, 0, null, 'Bpost US Express', 'US', 1,
        'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'BPOST.US', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (153, 'UBI.US2CA.CPC.20CAD', 'US-CA service CPC 20CAD+', 100, 'com.walltech.core.capost.CAPostChannelProvider',
        1, 1, 1, 1, 0, 70, '9rMk2zHQ5IOHuzVEFOzKBOKyFF0', 'US-CA service CPC 20CAD+', 'CA', 1, 'US', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (154, 'QDTD.CN2KR2US.USPS', '中韩美专线', 4178, 'com.walltech.core.qdtd.CN2KR2USChannelProvider', 1, 1, 1, 1, 0, 70,
        null, '中韩美专线', 'US', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'QDTDUSPS', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (155, 'UBI.CN2WW.DHL.PKG', 'South-China Packet Economy', 100,
        'com.walltech.core.dhl.channel.PacketEconomyChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'Packet Standard DHL exSZX', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SC.DHL.PKG', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (156, 'UBI.CN2WW.DHL.PKD', 'South-China Packet Standard', 100,
        'com.walltech.core.dhl.channel.HNPacketStandadChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'Packet Standard DHL exHKG', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SC.DHL.PKD', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (157, 'UBI.CN2WW.DHL.PPS', 'South-China Packet Plus', 100,
        'com.walltech.core.dhl.channel.HNPacketPlusStandadChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'Packet Plus DHL exHKG', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SC.DHL.PPS', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (158, 'UBI.CN2AU.SGPOST.SEMI', 'CN-AU Semi-Tracked SG Post', 100,
        'com.walltech.core.sgpost.SingPostCN2SG2AUChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'SingPost Integration for Semi-Tracked AU', 'AU', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SGPOST.SEMI', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (159, 'CITIL.ALL2CA.CPC', 'CA service CPC', 3555, 'com.walltech.core.capost.CAPostGeneralChannelProvider', 1, 1,
        1, 1, 0, 70, null, 'Citilogistic CA Service CPC', 'CA', 1, '*', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (160, 'UBI.IS.PAK.CN2AU.AUPOST', 'CN-AU speedPAK', 100, 'com.walltech.core.ubi.CN2AUEbaySpeedPakChannelProvider',
        1, 1, 1, 1, 0, 4, 'ohik0kpTzYZPFMJWc5fDRVCefnI', 'UBI China to Australia, eBay speedPAK', 'AU', 1, 'CN', 0,
        'AUClientServiceConfig', 'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig',
        'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (161, 'UBI.IS.PAK.CN2CA.CPC', 'CN-CA speedPAK', 100,
        'com.walltech.core.capost.CN2CAEbaySpeedSpakChannelProvider', 1, 1, 1, 1, 0, 70, '9rMk2zHQ5IOHuzVEFOzKBOKyFF0',
        'China to Canada under 20CAD, eBay speedPAK', 'CA', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (162, 'UBI.CN2ES.CORREOS', 'CN-ES Fully Tracked Correos', 100,
        'com.walltech.core.spain.SpainFullyTrackedChannelProvider', 1, 1, 1, 1, 0, 187, null,
        'CN-ES Fully Tracked Correos', 'ES', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPAIN.PAQ', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (163, 'UBI.CN2ES.CORREOS.OM', 'CN-ES OM Correos', 100, 'com.walltech.core.spain.SpainOMChannelProvider', 1, 1, 1,
        1, 0, 0, null, 'CN-ES OM Correos', 'ES', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPAIN.OM', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (164, 'QDTD.CN2KR2US.USPS.SM', '美线USPS-SM', 4178, 'com.walltech.core.qdtd.CN2KR2USSMChannelProvider', 1, 1, 1, 1,
        0, 0, null, '美线USPS-SM', 'US', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'QDTDUSPS', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (165, 'UBI.CN2WW.ROM.SEMI', 'Royal Mail International Semi-Tracked', 100,
        'com.walltech.core.royalmail.RoyalMailCn2WWSemiChannelProvider', 1, 0, 0, 1, 1, 0,
        '----b78NH2lC3iEUHU98ZYAg9kU', 'PS9 International Priorty', 'CA', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'ROYALMAIL.SEMI', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (166, 'UBI.CN2WW.ROM.SIGN', 'Royal Mail International Signed', 100,
        'com.walltech.core.royalmail.RoyalMailCn2WWChannelProvider', 1, 0, 0, 1, 1, 0, '1234Qn8uU2lC3iESOPJrZYAg9kU',
        'MP9', 'BR', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'ROYALMAIL.SIGN', 1, 1, 0, 0,
        null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (167, 'UBI.CN2WW.ROM.TRACK', 'Royal Mail International Tracked', 100,
        'com.walltech.core.royalmail.RoyalMailCn2WWChannelProvider', 1, 0, 0, 1, 1, 0, '1234Qn8uU2lC3iESOPJrZYAg9kU',
        'MP7', 'BR', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'ROYALMAIL.TRACK', 1, 1, 0, 0,
        null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (168, 'UBI.CN2WW.ROM.TRSIG', 'Royal Mail International Tracked and Signed', 100,
        'com.walltech.core.royalmail.RoyalMailCn2WWChannelProvider', 1, 0, 0, 1, 1, 0, '1234Qn8uU2lC3iESOPJrZYAg9kU',
        'MTE', 'IT,AR', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'ROYALMAIL.TRSIG', 1, 1, 0, 0,
        null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (169, 'UBI.ASP.CN2AU.RELABEL.AUPOST', 'AU Post relabel service', 100,
        'com.walltech.core.ubi.CN2AURelabelChannelProvider', 1, 1, 1, 1, 0, 4, 'm5sNq4AIvPlm8yQ3TzxqFNlnzDc',
        'UBI China to Australia Relabel service', 'AU', 1, 'CN', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp',
        'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0,
        null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (170, 'UBI.AU2AU.ZSSYD.AUPOST', 'Sydney Zone Skipping', 100, 'com.walltech.core.ubi.SydneyZoneSkippingService',
        1, 1, 0, 0, 0, 4, null, 'Sydney Zone Skipping', 'AU', 1, 'AU', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp',
        'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0,
        null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (171, 'UBI.SPSR.DL', 'China-Russia SPSR DL', 100, 'com.walltech.core.ubi.SPSRDLChannelProvider', 1, 1, 1, 1, 0,
        0, 'JrSKvabfU7PYc9ZiDe2StFxWSDU', 'China to Russia using SPSR Locker and Courier', 'RU', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'RUSPSR', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (172, 'UBI.ROW2AU.AUPOST', 'WW-AU Service', 100, 'com.walltech.core.ubi.ROW2AUChannelProvider', 1, 1, 1, 1, 0, 0,
        'lW0jMUVErPJXbFbwRlxrPQxxujA', 'WW-AU Service', 'AU', 1, 'UK', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp',
        'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0,
        null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (173, 'UBI.CN2AU.AUPOST.SPCL', 'China-Australia Special Offers', 100,
        'com.walltech.core.ubi.CnHk2AuChannelSpclProvider', 1, 1, 1, 1, 0, 4, 'ohik0kpTzYZPFMJWc5fDRVCefnI',
        'UBI China to Australia, SPCL', 'AU', 1, 'CN', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp',
        'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0,
        null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (174, 'UBI.CN2CA.CPC.PREMIUM', 'CN-CA Premium Service', 100,
        'com.walltech.core.capost.CAPostPremiumChannelProvider', 1, 1, 1, 1, 0, 70, '9rMk2zHQ5IOHuzVEFOzKBOKyFF0',
        'China to Canada under 20CAD', 'CA', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'CAPOST.PREMIUM', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (175, 'UBI.CN2CA.CPC.20CAD.PREMIUM', 'CN-CA Premium Service 20CAD+', 100,
        'com.walltech.core.capost.CAPost20CADPremiumChannelProvider', 1, 1, 1, 1, 0, 70, '9rMk2zHQ5IOHuzVEFOzKBOKyFF0',
        'CN-CA expedited service 20CAD+', 'CA', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'CAPOST.PREMIUM', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (176, 'UBI.CN2US.PB', 'China-US Service by PB', 100, 'com.walltech.core.pb.PBChannelProvider', 1, 1, 1, 1, 0, 0,
        'gS4NcGmiOrWKAGjmVMA65gmZNbU', 'China-US Service powered by UBI & PB', 'US', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UBI.CN2US.PB', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (177, 'UBI.PKG', 'Packet Economy', 100, 'com.walltech.core.dhl.channel.EastPacketEconomyChannelProvider', 1, 1,
        1, 1, 0, 0, null, 'Packet Economy DHL', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'PKG.DHL',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (178, 'UBI.ROW2CA.CAPOST', 'AU-CA Relabel Service 20CAD+', 100,
        'com.walltech.core.capost.ROW2CARelabelChannelProvider', 1, 1, 1, 1, 0, 70, null, 'Australia to Canada Service',
        'CA', 1, 'AU', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (179, 'UBI.CN2IN.DTDC', 'China-India Service by DTDC', 100,
        'com.walltech.core.dtdc.india.DtdcIndiaChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'China-India Service by DTDC powered by UBI & DTDC', 'IN', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UBI.CN2IN.DTDC', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (180, 'UBI.PD', 'East-China Parcel Direct', 100, 'com.walltech.core.dhl.channel.DHLPDCAChannelProvider', 1, 1, 1,
        1, 0, 0, null, 'Parcel Direct', 'DE,FR,IL,MX,US', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'PD.DHL',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (181, 'UBI.CN2WW.DHL.PD', 'South-China Parcel Direct', 100,
        'com.walltech.core.dhl.channel.DHLHNPDCAChannelProvider', 1, 1, 1, 1, 0, 0, null, 'South-China Packet Direct',
        'DE,FR,IL,MX,MY,SG,TH,US', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SC.DHL.PD', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (182, 'UBI.AU2AU.RTN.AUPOST', 'AU Post Return Service', 100, 'com.walltech.core.aupost.AUReturnService', 1, 0, 0,
        0, 0, 0, 'lW0jMUVErPJXbFbwRlxrPQxxujA', 'AU Post Return Service', 'AU', 1, 'AU', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'RETURN.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (183, 'CITIL.ALL2CA.RTN.CPC', 'CA return service CPC', 3555,
        'com.walltech.core.capost.citi.CAPostGeneralReturnChannelProvider', 1, 1, 1, 1, 0, 0,
        'HtWNE_ZCIUCHPoAmehH6A4DzdAo', 'Citilogistic CA Return Service', 'CA', 1, '*', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (184, 'UBI.CN2DE.HERMES', 'China-Germany Direct Injection', 100,
        'com.walltech.core.hermes.HermesChannelProvider', 1, 1, 1, 1, 0, 195, 'S_7nqhS3wDT4oyYBPXalnf2CBVM',
        'China-Germany by Hermes', 'DE', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'UBI.CN2DE.HERMES', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (185, 'UBI.RESEND.NZPOST', 'NZPost Resend', 100, 'com.walltech.core.ubi.NZPostResendChannelProvider', 1, 0, 0, 0,
        0, 185, '89pQYguwrZwQTZSadQIxtf1CD-E', 'China to New Zealand NZ Post', 'NZ', 0, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'NZPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (186, 'UBI.E2E.RESEND.ROM', 'E2E Royal Mail Resend Service', 100,
        'com.walltech.core.royalmail.RoyalMailResendChannelProvider', 1, 0, 0, 0, 0, 186, '----b78NH2lC3iEUHU98ZYAg9kU',
        'CN-UK RM48 Tracked E2E', 'GB', 0, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'ROYALMAIL.UK', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (187, 'UBI.CN2ES.RESEND.CORREOS', 'CN-ES Resend Fully Tracked Correos', 100,
        'com.walltech.core.spain.SpainFullyTrackedResendChannelProvider', 1, 0, 0, 0, 0, 187, null,
        'CN-ES Resend Fully Tracked Correos', 'ES', 0, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPAIN.PAQ', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (188, 'UBI.IS.PAK.CN2EU.BPOST.EMC', 'CN-EU SpeedPAK', 100,
        'com.walltech.core.ubi.BPostEUSpeedPakChannelProvider', 1, 1, 1, 1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY',
        'Bpost MiniPak EU exBRU Injection,eBay SpeedPAK',
        'AT,BE,BG,CY,CZ,DE,DK,EE,ES,FI,FR,GR,HR,HU,IE,IT,LT,LU,LV,MT,NL,PL,PT,RO,SE,SI,SK,GB', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'EMC.MINIPAKEU.BPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (189, 'UBIPG.CN-CN', 'China Domestic', 5956, 'com.walltech.core.cn.ChinaDomesticChannelProvider', 1, 1, 1, 1, 0,
        0, null, 'China Domestic', 'CN', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'UBIPG.CN-CN', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (190, 'QRL.CN-CN', 'China Domestic', 5957, 'com.walltech.core.cn.ChinaDomesticChannelProvider', 1, 1, 1, 1, 0, 0,
        null, 'China Domestic', 'CN', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'QRL.CN-CN', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (191, 'UBI.ASP.CN2AU.AUPOST.PRO', 'ASP China-Australia PRO', 100,
        'com.walltech.core.ubi.CN2AUVirtualWarehouseChannelProvider', 1, 1, 1, 1, 0, 4, 'ohik0kpTzYZPFMJWc5fDRVCefnI',
        'ASP China-Australia PRO', 'AU', 1, 'CN', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp', 'AUAccountConfig',
        'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp', 'EPARCEL.AUPOST', 3, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (192, 'UBI.CN2GB.YODEL.48', 'CN-UK Service By Yodel 48', 100, 'com.walltech.core.yodel.YodelChannelProvider', 1,
        1, 1, 1, 0, 196, 'cUwB6tzyVDikgPfR6sza5Jg-T4Y', 'China-GB Service powered by UBI & YODEL 48H', 'GB', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'UBI.YODEL', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (193, 'UBI.CN2GB.YODEL.24', 'CN-UK Service By Yodel 24', 100, 'com.walltech.core.yodel.Yodel24HChannelProvider',
        1, 1, 1, 1, 0, 197, 'cUwB6tzyVDikgPfR6sza5Jg-T4Y', 'China-GB Service powered by UBI & YODEL 24H', 'GB', 1, 'CN',
        0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'UBI.YODEL', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (194, 'WT.CN2CA.CPC', 'CN-CA service CPC', 97, 'com.walltech.core.capost.CAPost20CADChannelProvider', 1, 1, 1, 1,
        0, 0, 'WTMk2zHQ5IOHuzVEFOzKBOKyFF0', 'China to Canada CPC Service', 'CA', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (195, 'UBI.CN2DE.RESEND.HERMES', 'China-Germany Resend Service by hermes', 100,
        'com.walltech.core.hermes.HermesResendChannelProvider', 1, 1, 1, 1, 0, 195, 'S_7nqhS3wDT4oyYBPXalnf2CBVM',
        'China-Germany Resend Service by hermes', 'DE', 0, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'UBI.CN2DE.HERMES', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (196, 'UBI.CN2UK.YODEL.48.RESEND', 'CN-UK Resend Service By Yodel 48', 100,
        'com.walltech.core.yodel.YodelResendChannelProvider', 1, 1, 1, 1, 0, 196, 'cUwB6tzyVDikgPfR6sza5Jg-T4Y',
        'China-GB Resend Service powered by UBI & YODEL 48H', 'GB', 0, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UBI.YODEL', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (197, 'UBI.CN2GB.YODEL.24.RESEND', 'CN-UK Resend Service By Yodel 24', 100,
        'com.walltech.core.yodel.Yodel24HResendChannelProvider', 1, 1, 1, 1, 0, 197, 'cUwB6tzyVDikgPfR6sza5Jg-T4Y',
        'China-GB Resend Service powered by UBI & YODEL 24H', 'GB', 0, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'UBI.YODEL', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (198, 'UBI.CN2IT.POSTEITA', 'CN-IT Fully Track', 100, 'com.walltech.core.itpost.ItalyPostFullyChannelProvider',
        1, 1, 1, 1, 0, 0, null, 'CN-IT Fully Track', 'IT', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'UBI.ITPOST', 1, 1, 0, 2, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (199, 'UBI.CN2IT.POSTEITA.OM', 'CN-IT Semi Track', 100, 'com.walltech.core.itpost.ItalyPostOMChannelProvider', 1,
        1, 1, 1, 0, 0, null, 'CN-IT Semi Track', 'IT', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'UBI.ITPOST.OM', 1, 1, 0, 2, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (200, 'APG.LWE', 'LWE service', 258, 'com.walltech.core.lwe.LweChannelProvider', 1, 1, 1, 1, 0, 0, '',
        'LWE service', 'MY,SG,TH,ID,VN,PH,TW,JP,KR', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'APG.LWE',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (201, 'UBI.DIRECT.INJECT.AUPOST', 'Australia Post Sydney Direct Injection', 100,
        'com.walltech.core.aupost.AUPostDirectInjectionChannelProvider', 1, 0, 0, 1, 0, 4, null,
        'AUPost Direct injection service', 'AU', 1, 'CN', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp',
        'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0,
        null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (202, 'UBI.CN2CA.CPC.20CAD.DDP', 'CN-CA Expedited DDP service 20CAD+', 100,
        'com.walltech.core.capost.CAPost20CADDDPChannelProvider', 1, 1, 1, 1, 0, 70, '9rMk2zHQ5IOHuzVEFOzKBOKyFF0',
        'CN-CA expedited service 20CAD+', 'CA', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'CAPOST',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (203, 'UBI.US2CA.TRUCK', 'US-CA Service Truck', 100, 'com.walltech.core.capost.CAPostGeneralChannelProvider', 1,
        1, 1, 1, 0, 70, '9rMk2zHQ5IOHuzVEFOzKBOKyFF0', 'US-CA Service Truck', 'CA', 1, 'US', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (204, 'APG.ST', 'ST service', 258, 'com.walltech.core.smarttrack.SmartTrackChannelProvider', 1, 1, 1, 1, 0, 0,
        '', 'ST service', 'MY,SG,TH,ID,VN,PH,TW,JP,KR', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'APG.ST',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (205, 'UBI.CN2UKE2E.DEA', 'CN-UK RM24', 100, 'com.walltech.core.royalmail.RoyalMailDEAChannelProvider', 1, 0, 0,
        1, 1, 0, '----b78NH2lC3iEUHU98ZYAg9kU', 'CN-UK RM48 Tracked E2E', 'GB', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'ROYALMAIL.UK.DEA', 3, 0, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (206, 'SPRING.FEDEX.PRIORITY', 'Fedex Priority service', 6451,
        'com.walltech.core.fedex.FedexPriorityChannelProvider', 1, 1, 1, 1, 0, 0, '', 'Fedex Priority service', '*', 1,
        'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'SPRING.FEDEX', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (207, 'SPRING.SENDING', 'Sending Service', 6451, 'com.walltech.core.sending.SendingChannelProvider', 1, 1, 1, 1,
        0, 0, null, 'Sending service', 'ES,PT', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.SENDING', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (208, 'UBI.IS.SPK.CN2NZ.NZPOST.SEMI', 'CN-NZ SpeedPAK Semi', 100,
        'com.walltech.core.nzpost.SpeedPakNZPostSemiChannelProvider', 1, 1, 1, 1, 0, 185, '89pQYguwrZwQTZSadQIxtf1CD-E',
        'China to New Zealand NZ Post', 'NZ', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'NZPOST',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (209, 'UBI.IS.SPK.CN2NZ.NZPOST.TRACK', 'CN-NZ SpeedPAK Track', 100,
        'com.walltech.core.nzpost.SpeedPakNZPostTrackChannelProvider', 1, 1, 1, 1, 0, 185,
        '89pQYguwrZwQTZSadQIxtf1CD-E', 'China to New Zealand NZ Post', 'NZ', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'NZPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (210, 'UBI.CA2US.RETURN', 'CA-US Return Service', 100, 'com.walltech.core.capost.CA2USReturnChannelProvider', 1,
        1, 1, 1, 0, 0, null, 'CA-US Return Service', 'CA', 1, 'CA', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'CAPOST',
        1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (211, 'SPRING.PACKET.TRACKED', 'TTINT Packet Tracked', 6451, 'com.walltech.core.ttint.PacketTrackedProvider', 1,
        1, 1, 1, 0, 0, 'ai3uCgs2Jb3RdY15pufmALrkD-c', 'TTINT Packet Tracked', 'FR,CH,BE,ES,AT,GB,DE,IE,SK,PL,US,NL', 1,
        'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'SPRING.PACKET.TRACKED', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (212, 'UBI.CA2CA.RTN.CAPOST', 'CA Post Return Service', 100,
        'com.walltech.core.capost.citi.CAPostGeneralReturnChannelProvider', 1, 1, 1, 1, 0, 0,
        '9rMk2zHQ5IOHuzVEFOzKBOKyFF0', 'CA Post Return Service', 'CA', 1, '*', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (213, 'SPRING.FEDEX.ECONOMY', 'Fedex Economy service', 6451,
        'com.walltech.core.fedex.FedexEconomyChannelProvider', 1, 1, 1, 1, 0, 0, '', 'Fedex Economy service', '*', 1,
        'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'SPRING.FEDEX', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (214, 'SPRING.ACP.EXPEDITED', 'ACP Expedited service', 6451, 'com.walltech.core.acp.AcpExpeditedChannelProvider',
        1, 1, 1, 1, 0, 0, '', 'Acp Expedited service', 'US', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'SPRING.ACP', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (215, 'SPRING.ACP.GROUND', 'ACP Ground Service', 6451, 'com.walltech.core.acp.AcpGroundChannelProvider', 1, 1, 1,
        1, 0, 0, null, 'Acp Ground Service', 'US', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.ACP', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (216, 'SPRING.ACP.EXPEDITED.FASTER', 'ACP Expedited Faster Service', 6451,
        'com.walltech.core.acp.AcpExpeditedFasterChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'Acp Expedited Faster Service', 'US', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.ACP', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (217, 'UBI.CN2EU.BPOST.EMC.PRO', 'MiniPak EU Direct Injection PRO', 100,
        'com.walltech.core.ubi.BPostEUChannelProvider', 1, 1, 1, 1, 0, 0, 'HiYZEF1MmthDD6DOtku6uLI8eZY',
        'MiniPak EU Direct Injection PRO',
        'AT,BE,BG,CY,CZ,DE,DK,EE,ES,FI,FR,GR,HR,HU,IE,IT,LT,LU,LV,MT,NL,PL,PT,RO,SE,SI,SK,GB', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'EMC.MINIPAKEU.BPOST', 3, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (218, 'SPRING.UBI.ASP.CN2AU.AUPOST', 'UBI Australia Direct Injection', 6451,
        'com.walltech.core.postnl.UBIAUPostDirectInjectionChannelProvider', 1, 1, 1, 1, 0, 0,
        'lW0jMUVErPJXbFbwRlxrPQxxujA', 'UBI Australia Direct Injection', 'AU', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'SPRING.EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (219, 'SPRING.UBI.CN2CA.CPC.20CAD.DDP', 'UBI Canada Direct Injection', 6451,
        'com.walltech.core.postnl.UBICAPostDirectInjectionChannelProvider', 1, 1, 1, 1, 0, 0,
        '9rMk2zHQ5IOHuzVEFOzKBOKyFF0', 'UBI Canada Direct Injection', 'CA', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'SPRING.CAPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (220, 'SPRING.UBI.CN2DE.HERMES', 'UBI Germany Direct Injection', 6451,
        'com.walltech.core.postnl.UBIHermesDirectInjectionChannelProvider', 1, 1, 1, 1, 0, 0,
        'S_7nqhS3wDT4oyYBPXalnf2CBVM', 'UBI Germany Direct Injection', 'DE', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'SPRING.UBI.HERMES', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (221, 'SPRING.UBI.CN2ES.CORREOS', 'UBI Spain Direct Injection', 6451,
        'com.walltech.core.postnl.UBISpainPostDirectInjectionChannelProvider', 1, 1, 1, 1, 0, 0, null,
        'UBI Spain Direct Injection', 'ES', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.UBI.SPAIN', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (222, 'SPRING.UBI.CN2MX.SCM', 'UBI Mexico Direct Injection', 6451,
        'com.walltech.core.postnl.UBIMXDirectInjectionChannelProvider', 1, 1, 1, 1, 0, 0, '7XuvZ8fm45rQTUIlaoE_Cg',
        'UBI Mexico Direct Injection', 'MX', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.UBI.MX.SCM', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (223, 'SPRING.UBI.CN2NZ.TRACKED.NZPOST', 'UBI New Zealand Direct Injection', 6451,
        'com.walltech.core.postnl.NZPostDirectChannelProvider', 1, 1, 1, 1, 0, 0, '89pQYguwrZwQTZSadQIxtf1CD-E',
        'UBI New Zealand Direct Injection with Tracking-Non-Signature', 'NZ', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'SPRING.UBI.NZPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (224, 'SPRING.UBI.CN2NZ.NONTRACKED.NZPOST', 'UBI New Zealand Economy', 6451,
        'com.walltech.core.postnl.NZPostNonTrackedChannelProvider', 1, 1, 1, 1, 0, 0, '89pQYguwrZwQTZSadQIxtf1CD-E',
        'UBI New Zealand Economy with Non-Tracking', 'NZ', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.UBI.NZPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (225, 'SPRING.UBI.CN2UKE2E.ROM', 'UBI UK Direct Injection', 6451,
        'com.walltech.core.postnl.UBIRoyalMailDirectInjectionChannelProvider', 1, 0, 0, 1, 1, 0,
        '----b78NH2lC3iEUHU98ZYAg9kU', 'UBI UK Direct Injection', 'GB', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'SPRING.UBI.ROYALMAIL', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (226, 'SPRING.TRACKED.EU', 'Spring Postal EU', 6451, 'com.walltech.core.postnl.SpringPostalEUChannelProvider', 1,
        0, 0, 1, 1, 0, null, 'Spring Postal EU', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.EU', 4, 1, 0, 0, '1');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (227, 'SPRING.DIRECT.EU', 'Spring Direct EU', 6451, 'com.walltech.core.postnl.SpringDirectChannelProvider', 1, 0,
        0, 1, 1, 0, null, 'Spring Direct EU', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.DIRECT.EU', 4, 1, 0, 0,
        'There is something wrong with Spring Direct EU ..Please check with the admin.');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (228, 'SPRING.DIRECT.EU.NEW', 'Spring Direct EU New', 6451,
        'com.walltech.core.postnl.SpringDirectChannelProvider', 1, 0, 0, 1, 1, 0, null, 'Spring Direct EU New', '*', 1,
        'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'SPRING.DIRECT.EU.NEW', 4, 1, 0, 0, 'ttttt');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (229, 'SPRING.DIRECT.NA', 'Spring Direct NA', 6451, 'com.walltech.core.postnl.SpringDirectChannelProvider', 1, 0,
        0, 1, 1, 0, null, 'Spring Direct NA', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.DIRECT.NA', 4, 1, 0, 0, 'test111111');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (230, 'SPRING.DIRECT.AUNZ', 'Spring Direct AU/NZ', 6451, 'com.walltech.core.postnl.SpringDirectChannelProvider',
        1, 0, 0, 1, 1, 0, null, 'AKASJFALJLFASLJLJFKAJLDFA', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'SPRING.DIRECT.AUNZ', 4, 1, 0, 0, 'Please check with the admin.');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (231, 'SPRING.EXPRESS.EU', 'Spring Express EU', 6451, 'com.walltech.core.postnl.PostNLVirtualChannelProvider', 1,
        0, 0, 1, 1, 0, null, 'Spring Express EU', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.EXPRESS.EU', 4, 1, 0, 0, '123');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (232, 'SPRING.EXPRESS.PLUS.EU', 'Spring Express EU Plus', 6451,
        'com.walltech.core.postnl.PostNLVirtualChannelProvider', 1, 0, 0, 1, 1, 0, null, 'Spring Express EU Plus', '*',
        1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'SPRING.EXPRESS.PLUS.EU', 4, 1, 0, 0, '1234578');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (233, 'SPRING.EXPRESS.NA', 'Spring Express NA', 6451, 'com.walltech.core.postnl.PostNLVirtualChannelProvider', 1,
        0, 0, 1, 1, 0, null, 'Spring Express NA', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.EXPRESS.NA', 4, 1, 0, 0, 'hello');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (234, 'SPRING.EXPRESS', 'Spring Express', 6451, 'com.walltech.core.postnl.PostNLVirtualChannelProvider', 1, 0, 0,
        1, 1, 0, null, 'Spring Express', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.EXPRESS', 4, 1, 0, 0, 'test');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (235, 'SPRING.REGISTERED.PACKETS', 'TTINT Registered Packets', 6451,
        'com.walltech.core.ttint.RegisteredPacketsProvider', 1, 1, 1, 1, 0, 0, 'ai3uCgs2Jb3RdY15pufmALrkD-c',
        'TTINT Registered Packets', 'FR,CH,BE,ES,AT,GB,DE,IE,SK,PL', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'SPRING.REGISTERED.PACKETS', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (236, 'SPRING.UNTRACKED.PRIORITY.PACKETS', 'TTINT  Untracked Priority Packets', 6451,
        'com.walltech.core.ttint.UntrackedPriorityPacketsProvider', 1, 1, 1, 1, 0, 0, 'ai3uCgs2Jb3RdY15pufmALrkD-c',
        'TTINT  Untracked Priority Packets', 'FR,CH,BE,ES,AT,GB,DE,IE,SK,PL', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'SPRING.UNTRACKED.PRIORITY.PACKETS', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (237, 'UBI.CN2UKE2E.DEA.EXPEDITED', 'CN-UK RM24 Expedited', 100,
        'com.walltech.core.royalmail.RoyalMailDEAExpeditedChannelProvider', 1, 0, 0, 1, 1, 0,
        '----b78NH2lC3iEUHU98ZYAg9kU', 'CN-UK RM24 Expedited', 'GB', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'ROYALMAIL.UK.DEA', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (238, 'UBI.CN2UKE2E.ROM.EXPEDITED', 'CN-UK E2E Royal Mail Expedited', 100,
        'com.walltech.core.royalmail.RoyalMailExpeditedChannelProvider', 1, 0, 0, 1, 1, 257,
        '----b78NH2lC3iEUHU98ZYAg9kU', 'CN-UK RM48 Expedited', 'GB', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'ROYALMAIL.UK', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (239, 'GEN.AU2AU.AUPOST', 'Australia Post Direct', 100, 'com.walltech.core.ubi.DirectAuPostChannelProvider', 1,
        0, 0, 1, 0, 4, null, 'Australia Post Direct', 'AU', 1, 'CN', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp',
        'AUAccountConfig', 'providedAu.jsp', 'AUProvisionedConfig', 'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0,
        null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (240, 'GEN.AU2AU.ZSSYD.AUPOST', 'Sydney Zone Skipping Generic', 100,
        'com.walltech.core.ubi.SydneyZoneSkippingService', 1, 1, 0, 0, 0, 4, null, 'Sydney Zone Skipping Generic', 'AU',
        1, 'AU', 0, 'AUClientServiceConfig', 'clientConfigAu.jsp', 'AUAccountConfig', 'providedAu.jsp',
        'AUProvisionedConfig', 'provisionedAu.jsp', 'EPARCEL.AUPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (241, 'APG.TRACKED.NZPOST', 'NZ Post Tracked Service', 258,
        'com.walltech.core.stinzpost.StinzpostChannelProvider', 1, 1, 1, 1, 0, 0, null, 'NZ Post Tracked Service', 'NZ',
        1, 'AU', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'NZPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (242, 'SPRING.UNTRACKED.EU', 'Spring eParcel Untracked EU', 6451,
        'com.walltech.core.postnl.PostNLVirtualChannelProvider', 1, 0, 0, 1, 1, 0, null, 'Spring eParcel Untracked EU',
        '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'SPRING.UNTRACKED.EU', 4, 1, 0, 0,
        null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (243, 'SPRING.REGISTERED.EU', 'Spring eParcel Registered EU', 6451,
        'com.walltech.core.postnl.PostNLVirtualChannelProvider', 1, 0, 0, 1, 1, 0, null, 'Spring eParcel Registered EU',
        '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'SPRING.REGISTERED.EU', 4, 1, 0, 0,
        'Error Message');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (244, 'UBI.CN2CA.CPC.PREMIUM.PRO', 'CN-CA Premium Service PRO', 100,
        'com.walltech.core.capost.CAPost20CADPremiumChannelProvider', 1, 1, 1, 1, 0, 70, '9rMk2zHQ5IOHuzVEFOzKBOKyFF0',
        'CN-CA Premium Service PRO 20CAD+', 'CA', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'CAPOST.PREMIUM', 3, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (245, 'WT.TRACKED.EU', 'WT Postal NA', 97, 'com.walltech.core.postnl.SpringPostalEUChannelProvider', 1, 0, 0, 1,
        1, 0, null, 'WT Postal NA', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'WT.EU',
        4, 1, 0, 0, 'afaewfwef');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (246, 'WT.DIRECT.EU', 'WT Direct NA', 97, 'com.walltech.core.postnl.SpringDirectChannelProvider', 1, 0, 0, 1, 1,
        0, null, 'WT Direct NA', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'WT.DIRECT.EU', 4, 1, 0, 0, 'There is something wrong WT Direct EU .Please check with the customer service.');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (247, 'UBI.CN2FR.ASENDIA.FULLLY.TRACKED', 'CN-FR Fully Tracked', 100,
        'com.walltech.core.asendia.FullyAsendiaChannelProvider', 1, 1, 1, 1, 0, 0, 'FRk4xX6Q8i-kMAE_e8C9dYGvqrA',
        'Asendia Fully Tracked', 'FR', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'UBI.CN2FR.ASENDIA.FULLLY.TRACKED', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (248, 'UBI.CN2FR.ASENDIA.SEMI.TRACKED', 'CN-FR Semi Tracked', 100,
        'com.walltech.core.asendia.SemiAsendiaChannelProvider', 1, 1, 1, 1, 0, 0, 'FRk4xX6Q8i-kMAE_e8C9dYGvqrA',
        'Asendia Semi Tracked', 'FR', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'UBI.CN2FR.ASENDIA.SEMI.TRACKED', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (249, 'UBI.CNDIRECT2UKE2E.ROM', 'CN-UK E2E Recovery Service', 100,
        'com.walltech.core.royalmail.RoyalMailRecoveryChannelProvider', 1, 0, 0, 1, 1, 258,
        '----b78NH2lC3iEUHU98ZYAg9kU', 'CN-UK E2E Recovery Service', 'GB', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'ROYALMAIL.UK', 3, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (250, 'SPRING.EXPRESS', 'Spring Express Economy', 6451, 'com.walltech.core.postnl.PostNLVirtualChannelProvider',
        1, 0, 0, 1, 1, 0, null, 'Spring Express Economy', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'SPRING.EXPRESS', 4, 1, 0, 0, '');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (251, 'SPRING.DIRECT', 'Spring Direct', 6451, 'com.walltech.core.postnl.PostNLVirtualChannelProvider', 1, 0, 0,
        1, 1, 0, null, 'Spring Direct', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.DIRECT', 4, 1, 0, 0, '');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (252, 'SPRING.EPARCEL.TRACKED', 'Spring eParcel Tracked', 6451,
        'com.walltech.core.postnl.PostNLVirtualChannelProvider', 1, 0, 0, 1, 1, 0, null, 'Spring eParcel Tracked', '*',
        1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'SPRING.EPARCEL.TRACKED', 4, 1, 0, 0, '');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (253, 'UBI.CN2UKE2E.DEB.PREMIUM', 'CN-UK RM24 Plus Premium', 100,
        'com.walltech.core.royalmail.RoyalMailDEBChannelProvider', 1, 0, 0, 1, 1, 0, '----b78NH2lC3iEUHU98ZYAg9kU',
        'CN-UK RM24 Plus Premium', 'GB', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'ROYALMAIL.UK.DEB', 3, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (254, 'UBI.CN2UKE2E.DEB.EXPEDITED', 'CN-UK RM24 Plus Expedited', 100,
        'com.walltech.core.royalmail.RoyalMailDEBChannelProvider', 1, 0, 0, 1, 1, 0, '----b78NH2lC3iEUHU98ZYAg9kU',
        'CN-UK RM24 Plus Expedited', 'GB', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'ROYALMAIL.UK.DEB', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (255, 'UBI.CN2ES.JV.OM', 'CN-ES Semi-Tracked', 100, 'com.walltech.core.spain.SpainJVOMChannelProvider', 1, 1, 1,
        1, 0, 0, null, 'CN-ES OM Correos', 'ES', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPAIN.JV.OM', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (256, 'UBI.POSTNL.NON.REG', 'Postnl Non Registered', 100,
        'com.walltech.core.postnl.nonregistered.PostnlNonRegChannelProvider', 1, 1, 1, 1, 0, 0,
        'ai3uCgs2Jb3RdY15pufmALrkD-c', 'Postnl Non Registered', 'AT,CH,DK,FI,GR,IE,IT,NO,SE', 1, 'CN', 0,
        'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'UBI.POSTNL.NON.REG', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (257, 'UBI.CN2UKE2E.RESEND.ROM.EXPEDITED', 'CN-UK E2E Royal Mail Resend Expedited', 100,
        'com.walltech.core.royalmail.RoyalMailResendExpeditedChannelProvider', 1, 0, 0, 0, 0, 257,
        '----b78NH2lC3iEUHU98ZYAg9kU', 'CN-UK RM48 Resend Expedited', 'GB', 0, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'ROYALMAIL.UK', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (258, 'UBI.CNDIRECT2UKE2E.RESEND.ROM', 'CN-UK E2E Resend Recovery Service', 100,
        'com.walltech.core.royalmail.RoyalMailResendRecoveryChannelProvider', 1, 0, 0, 0, 0, 258,
        '----b78NH2lC3iEUHU98ZYAg9kU', 'CN-UK E2E Resend Recovery Service', 'GB', 0, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'ROYALMAIL.UK', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (259, 'YUSEN.IMPORT', 'Yusen Import Business Service', 2893, 'com.walltech.core.yusen.YusenChannelProvider', 1,
        1, 1, 1, 1, 0, null, 'Yusen Import Business', 'CN', 1, 'FR', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'YUSEN.IMPORT', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (260, 'UBI.CN2EU.HYBRID.SEMI', 'UBI EU Semi Track Service', 100,
        'com.walltech.core.ubi.UBIVirtualChannelProvider', 1, 1, 1, 1, 1, 0, null, 'UBI EU Semi Track Service', '*', 1,
        'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp',
        'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'UBI.HYBRID', 4, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (261, 'UBI.AU2AU.IPEC', 'Australia Direct IPEC', 100, 'com.walltech.core.toll.TollIpecChannelProvider', 1, 1, 1,
        1, 1, 0, null, 'UBI TOLL AU DIRECT IPEC', 'AU', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'UBI.AU2AU', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (262, 'UBI.AU2AU.PRIORITY', 'Australia Direct PRIORITY', 100,
        'com.walltech.core.toll.TollPriorityChannelProvider', 1, 1, 1, 1, 1, 0, null, 'UBI TOLL AU DIRECT PRIORITY',
        'AU', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp', 'DefaultProvidedConfig',
        'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp', 'UBI.AU2AU', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (263, 'SPRING.AMS.AU.EPARCEL', 'AMS AuPost EParcel', 6451,
        'com.walltech.core.aupost.postnl.PostNLAMSAuPostChannelProvider', 1, 1, 1, 1, 0, 0,
        'EpK35ZuNSY9cYble6S3EI7msKq0', 'AMS AuPost EParcel', 'AU', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'SPRING.AMS.AU.EPARCEL', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (264, 'UBI.SIGN.MINIPAK.BPOST.ALL', 'BPost Minipak Sign All', 100,
        'com.walltech.core.bpost.minipaksiagnall.BPostMinipakSignAllChannelProvider', 1, 1, 1, 1, 0, 0,
        'HiYZEF1MmthDD6DOtku6uLI8eZY', 'BPost Minipak Sign All', '*', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'SIGN.MINIPAK.BPOST', 1, 1, 0, 0, null);
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (265, 'SPRING.DIRECT.AU', 'Spring Direct AU', 6451, 'com.walltech.core.postnl.PostNLVirtualChannelProvider', 1,
        0, 0, 1, 1, 0, null, 'Spring Direct AU', '*', 1, 'CN', 0, 'DefaultClientConfig', 'clientConfigDefault.jsp',
        'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig', 'provisionedDefault.jsp',
        'SPRING.DIRECT.AU', 4, 1, 0, 0, '');
INSERT INTO SYS_CHANNEL (CHANNEL_ID, CODE, NAME, AGGREGATOR, PROVIDER_CLASS, LABEL, SCAN, LINE_HAUL, CUSTOMS,
                         LABEL_TYPE, RESEND_CHANNEL, RETURN_ADDRESS, DESCRIPTION, DESTINATION, LEVEL, ORIGIN,
                         RETURN_CHANNEL, CONFIGURED_TITLE, CONFIGURED_URL, PROVIDED_TITLE, PROVIDED_URL,
                         PROVISIONED_TITLE, PROVISIONED_URL, CHANNEL_GROUP, BIZ_TYPE, ACTIVE, WHITE_LABEL,
                         WHITE_LABEL_TYPE, REMARK)
VALUES (266, 'UBI.IS.PAK.CN2CA.RM.SEMI', 'CN-CA Semi Tracked speedPAK', 100,
        'com.walltech.core.royalmail.RoyalMailCN2CASpeedPakChannelProvider', 1, 0, 0, 1, 1, 0,
        '----b78NH2lC3iEUHU98ZYAg9kU', 'PS9 International Priorty for OC', 'CA', 1, 'CN', 0, 'DefaultClientConfig',
        'clientConfigDefault.jsp', 'DefaultProvidedConfig', 'providedDefault.jsp', 'DefaultProvisionedConfig',
        'provisionedDefault.jsp', 'ROYALMAIL.SEMI', 1, 1, 0, 0, null);