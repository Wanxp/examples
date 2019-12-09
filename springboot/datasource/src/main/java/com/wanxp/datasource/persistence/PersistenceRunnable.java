package com.wanxp.datasource.persistence;

import javax.persistence.EntityManager;

public interface PersistenceRunnable {
    void run(EntityManager entityManager);
}
