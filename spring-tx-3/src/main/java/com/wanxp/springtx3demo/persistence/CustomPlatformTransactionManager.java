package com.wanxp.springtx3demo.persistence;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.support.AbstractPlatformTransactionManager;
import org.springframework.transaction.support.DefaultTransactionStatus;
import org.springframework.transaction.support.ResourceTransactionManager;

public class CustomPlatformTransactionManager extends AbstractPlatformTransactionManager
        implements ResourceTransactionManager, InitializingBean {
    @Override
    public void afterPropertiesSet() throws Exception {

    }

    @Override
    protected Object doGetTransaction() throws TransactionException {
        return null;
    }

    @Override
    protected void doBegin(Object transaction, TransactionDefinition definition) throws TransactionException {

    }

    @Override
    protected void doCommit(DefaultTransactionStatus status) throws TransactionException {

    }

    @Override
    protected void doRollback(DefaultTransactionStatus status) throws TransactionException {

    }

    @Override
    public Object getResourceFactory() {
        return null;
    }
}
