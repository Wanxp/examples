package com.wanxp.springtx3demo.persistence;

import javax.persistence.EntityManager;

public interface PersistenceCallable<T> {
    T call(EntityManager entityManager);
}
