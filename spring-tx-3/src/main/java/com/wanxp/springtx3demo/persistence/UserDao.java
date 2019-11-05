package com.wanxp.springtx3demo.persistence;

import com.wanxp.springtx3demo.User;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;

@Service
public class UserDao {
    public User insert(final User user) {
        return PersistenceHelper.call(new PersistenceCallable<User>() {
            @Override
            public User call(EntityManager entityManager) {
                entityManager.persist(user);
                return user;
            }
        }, PersistenceHelper.SLAVE);
    }

    public User get(final Long id) {
        return PersistenceHelper.call(new PersistenceCallable<User>() {
            @Override
            public User call(EntityManager entityManager) {
                return entityManager.find(User.class, id);
            }
        }, PersistenceHelper.SLAVE);
    }

    public Boolean delete(final Long id) {
        return PersistenceHelper.call(new PersistenceCallable<Boolean>() {
            @Override
            public Boolean call(EntityManager entityManager) {
                entityManager.createQuery("delete from User user where user.id = :id")
                        .setParameter("id", id)
                        .executeUpdate();
                return Boolean.TRUE;
            }
        }, PersistenceHelper.SLAVE);
    }
}
