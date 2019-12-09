package com.wanxp.datasource.persistence;

import javax.persistence.EntityManager;

public interface PersistenceCallable<T> {
    T call(EntityManager entityManager);
}
