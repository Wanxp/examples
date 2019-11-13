package com.wanxp.springhibernate4.persistence;

import javax.persistence.EntityManager;

public interface PersistenceCallable<T> {
    T call(EntityManager entityManager);
}
