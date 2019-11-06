package com.wanxp.springtx3demo.persistence;

import javax.persistence.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/**
 * entityManagerFactory 管理工具
 */
public class PersistenceHelper {

    public static final String MASTER = "master";
    public static final String SLAVE = "slave";

    /**
     * 缓存EntityManagerFactory
     */
    private static ConcurrentMap<String, EntityManagerFactory> factoryMap = new ConcurrentHashMap<String, EntityManagerFactory>();

    /**
     * 执行
     * @param call
     * @param unitName
     * @param <T>
     * @return
     */
    public static <T> T call(PersistenceCallable<T> call, String unitName) {
        EntityManager entityManager = getEntityManagerFactory(unitName).createEntityManager();
        EntityTransaction tx = null;
        T result = null;
        try {
            tx = entityManager.getTransaction();
            tx.begin();
            result = call.call(entityManager);
            tx.commit();
        }
        catch (Throwable e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw e;
        }
        finally {
            entityManager.close();
        }
        return result;
    }

    /**
     * 获取EntityManagerFactory
     * @param unitName
     * @return
     */
    private static EntityManagerFactory getEntityManagerFactory(String unitName) {
        EntityManagerFactory emf = factoryMap.get(unitName);
        if (emf == null) {
            synchronized(EntityManagerFactory.class) {
                emf = factoryMap.get(unitName);
                if (null == emf) {
                    try {
                        emf = Persistence.createEntityManagerFactory(unitName);
                    }
                    catch(Exception e) {
                    }
                    if (emf == null) {
                        emf = factoryMap.get(unitName);
                    }
                    factoryMap.put(unitName, emf);
                }
            }
        }
        return emf;
    }

    public static void putEntityManagerFactory(String unitName, EntityManagerFactory entityManagerFactory) {
        factoryMap.put(unitName, entityManagerFactory);
    }
}
