package com.wanxp.datasource.dao.impl;

import com.wanxp.datasource.dao.UserDao;
import com.wanxp.datasource.entity.User;
import com.wanxp.datasource.persistence.PersistenceHelper;
import org.springframework.stereotype.Service;

import java.util.List;

import static com.wanxp.datasource.constant.DataSourceConstant.DATA_SOURCE_MASTER;
import static com.wanxp.datasource.constant.DataSourceConstant.DATA_SOURCE_SLAVE;

/**
 * 用户
 */
@Service
public class UserDaoImpl implements UserDao {
	/**
	 * 添加到数据库Master
	 *
	 * @param user
	 */
	@Override
	public User addToMaster(User user) {
		PersistenceHelper.runWithinTransaction(entityManager ->
						entityManager.persist(user)
				, DATA_SOURCE_MASTER);
		return user;
	}

	/**
	 * 添加到数据库Slave
	 *
	 * @param user
	 */
	@Override
	public User addToSlave(User user) {
		PersistenceHelper.runWithinTransaction(entityManager ->
						entityManager.persist(user)
				, DATA_SOURCE_SLAVE);
		return user;
	}

	/**
	 * 添加到数据库Slave
	 *
	 * @param id
	 * @return 用户信息
	 */
	@Override
	public User getFromMaster(Long id) {
		return PersistenceHelper.callWithinTransaction(entityManager ->
						entityManager.find(User.class, id)
				, DATA_SOURCE_MASTER);
	}

	/**
	 * 添加到数据库Slave
	 *
	 * @param id
	 * @return 用户信息
	 */
	@Override
	public User getFromSlave(Long id) {
		return PersistenceHelper.callWithinTransaction(entityManager ->
						entityManager.find(User.class, id)
				, DATA_SOURCE_SLAVE);
	}

	/**
	 * 添加到数据库Slave
	 *
	 * @return 用户信息
	 */
	@Override
	public User getMaxIdUserFromMaster() {
		return PersistenceHelper.callWithinTransaction(entityManager -> {
			List<User> userList = entityManager.createNativeQuery(
					"select max(id) as id, `name`, age from user", User.class)
					.getResultList();
			if (userList != null && !userList.isEmpty())
				return userList.get(0);
			return null;
		}, DATA_SOURCE_MASTER);
	}

	/**
	 * 添加到数据库Slave
	 *
	 * @return 用户信息
	 */
	@Override
	public User getMaxIdUserFromSlave() {
		return PersistenceHelper.callWithinTransaction(entityManager -> {
			List<User> userList = entityManager.createNativeQuery(
					"select max(id) as id, `name`, age from user", User.class)
					.getResultList();
			if (userList != null && !userList.isEmpty())
				return userList.get(0);
			return null;
		}, DATA_SOURCE_SLAVE);
	}
}
