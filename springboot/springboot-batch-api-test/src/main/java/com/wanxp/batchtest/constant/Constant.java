package com.wanxp.batchtest.constant;

public class Constant {
    public static final String PRIMARY_DATASOURCE_PROPERTIES_PREFIX = "spring.datasource.primary";
    public static final String PRIMARY_ENTITY_MANAGER_FACTORY_NAME = "primaryEntityManagerFactory";
    public static final String PRIMARY_ENTITY_MANAGER_NAME = "primaryEntityManager";
    public static final String PRIMARY_TRANSACTION_MANAGER_NAME = "primaryTransactionManager";
    public static final String PRIMARY_DATASOURCE_NAME = "primaryDataSource";
    public static final String PRIMARY_JPA_PACKAGE_NAME = "com.wanxp.batchtest.dao.primary";
    public static final String PRIMARY_JPA_ENTITY_PACKAGE_NAME = "com.wanxp.batchtest.model.entity.primary";
    public static final String PRIMARY_PERSISTENCE_UNIT_NAME = "primaryPersistenceUnit";

    public static final String SECONDARY_DATASOURCE_PROPERTIES_PREFIX = "spring.datasource.secondary";
    public static final String SECONDARY_ENTITY_MANAGER_FACTORY_NAME = "secondaryEntityManagerFactory";
    public static final String SECONDARY_ENTITY_MANAGER_NAME = "secondaryEntityManager";
    public static final String SECONDARY_TRANSACTION_MANAGER_NAME = "secondaryTransactionManager";
    public static final String SECONDARY_DATASOURCE_NAME = "secondaryDataSource";
    public static final String SECONDARY_JPA_PACKAGE_NAME = "com.wanxp.batchtest.dao.secondary";
    public static final String SECONDARY_PERSISTENCE_UNIT_NAME = "secondaryPersistenceUnit";
    public static final String SECONDARY_JPA_ENTITY_PACKAGE_NAME = "com.wanxp.batchtest.model.entity.secondary";
}
