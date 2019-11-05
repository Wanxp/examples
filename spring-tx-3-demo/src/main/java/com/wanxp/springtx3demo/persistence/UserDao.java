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
}
