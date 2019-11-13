package com.wanxp.springtx3demo.persistence;

import com.wanxp.springtx3demo.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import static com.wanxp.springtx3demo.persistence.PersistenceHelper.*;

@Service
public class UserDao {

    @PersistenceContext(unitName = MASTER_ENTITYMANAGER_FACTORY)
    private EntityManager entityManager;

    @PersistenceContext(unitName = SLAVE_ENTITYMANAGER_FACTORY)
    private EntityManager slaveEntityManager;

    public User insert(final User user) {
        slaveEntityManager.persist(user);
        return user;
    }

    @Transactional(readOnly = true)
    public User get(final Long id) {
        return slaveEntityManager.find(User.class, id);
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
        }, SLAVE);
    }
}
