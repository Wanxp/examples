package com.wanxp.datasource.persistence;

import lombok.extern.slf4j.Slf4j;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

@Slf4j
public class PersistenceHelper {

    private static ConcurrentMap<String, EntityManagerFactory> factoryMap = new ConcurrentHashMap<String, EntityManagerFactory>();

    public static void putEntityManagerFactory(String dataSource, EntityManagerFactory entityManagerFactory) {
        factoryMap.put(dataSource, entityManagerFactory);
    }

    public static void runWithinTransaction(PersistenceRunnable runnable, String dataSource) {
        EntityManager entityManager = getEntityManagerFactory(dataSource).createEntityManager();
        EntityTransaction tx = null;
        try {
            tx = entityManager.getTransaction();
            tx.begin();
            runnable.run(entityManager);
            tx.commit();
        }catch (Throwable e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
                log.error("rall back", e);
            }
        }finally {
            entityManager.close();
        }
    }

    public static <T> T callWithinTransaction(PersistenceCallable<T> callable, String dataSource) {
        EntityManager entityManager = getEntityManagerFactory(dataSource).createEntityManager();
        EntityTransaction tx = null;
        T result = null;
        try {
            tx = entityManager.getTransaction();
            tx.begin();
            result = callable.call(entityManager);
            tx.commit();
        }catch (Throwable e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
                log.error("rall back", e);
            }
        }finally {
            entityManager.close();
        }
        return result;
    }

    public static EntityManagerFactory getEntityManagerFactory(String dataSource) {
        return factoryMap.get(dataSource);
    }
}
