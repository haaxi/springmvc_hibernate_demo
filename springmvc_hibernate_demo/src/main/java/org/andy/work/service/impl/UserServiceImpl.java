package org.andy.work.service.impl;

import java.util.List;

import org.andy.work.dao.UserDao;
import org.andy.work.entity.AcctUser;
import org.andy.work.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	public AcctUser load(String id) {
		return userDao.load(id);
	}

	public AcctUser get(String id) {
		return userDao.get(id);
	}

	public List<AcctUser> findAll() {
		return userDao.findAll();
	}

	public void persist(AcctUser entity) {
		userDao.persist(entity);

	}

	public String save(AcctUser entity) {
		return userDao.save(entity);
	}

	public void saveOrUpdate(AcctUser entity) {
		userDao.saveOrUpdate(entity);

	}

	public void delete(String id) {
		userDao.delete(id);

	}

	public void flush() {
		userDao.flush();

	}

}
