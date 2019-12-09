package com.wanxp.springtx3demo.persistence;

import com.wanxp.springtx3demo.User;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import static com.wanxp.springtx3demo.persistence.PersistenceHelper.*;

@Repository
public class UserDao {

    @PersistenceContext(unitName = MASTER_EMF)
    private EntityManager entityManager;

    @PersistenceContext(unitName = SLAVE_EMF)
    private EntityManager slaveEntityManager;

    public User insert(final User user) {
        entityManager.persist(user);
        return user;
    }

    public User get(final Long id) {
        return entityManager.find(User.class, id);
    }

    public User insertSlave(final User user) {
        slaveEntityManager.persist(user);
        return user;
    }

    public User getSlave(final Long id) {
        return slaveEntityManager.find(User.class, id);
    }

    public Boolean delete(final Long id) {
        entityManager.createQuery("delete from User user where user.id = :id")
                .setParameter("id", id)
                .executeUpdate();
        return Boolean.TRUE;
    }
}
