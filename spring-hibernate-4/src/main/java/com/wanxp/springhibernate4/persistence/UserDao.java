package com.wanxp.springhibernate4.persistence;

import com.wanxp.springhibernate4.User;
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
}
