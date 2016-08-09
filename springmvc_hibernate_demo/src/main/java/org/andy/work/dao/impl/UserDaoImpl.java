package org.andy.work.dao.impl;

import java.util.List;

import org.andy.work.dao.UserDao;
import org.andy.work.entity.AcctUser;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getCurrSession(){
		return this.sessionFactory.getCurrentSession();
	}

	public AcctUser load(String id) {
		
		return (AcctUser) this.getCurrSession().load(AcctUser.class, id);
	}

	public AcctUser get(String id) {
		
		return (AcctUser) this.getCurrSession().get(AcctUser.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<AcctUser> findAll() {
		List<AcctUser> accUsers = this.getCurrSession().createQuery("from AcctUser").setCacheable(true).list();
		return accUsers;
	}

	public void persist(AcctUser entity) {
		this.getCurrSession().persist(entity);

	}

	public String save(AcctUser entity) {
		return (String) this.getCurrSession().save(entity);
	}

	public void saveOrUpdate(AcctUser entity) {
		this.getCurrSession().saveOrUpdate(entity);

	}

	public void delete(String id) {
		AcctUser entity = this.load(id);
		this.getCurrSession().delete(entity);
	}

	public void flush() {
		this.getCurrSession().flush();

	}

	@SuppressWarnings("unchecked")
	public AcctUser findByNickName(String nickName) {
		List<AcctUser> acctUsers = this.getCurrSession()
			.createQuery("from AcctUser where nickName=:nickName")
			.setString("nickName", nickName).list();
		
		if(null != acctUsers && acctUsers.size()>0){
			return acctUsers.get(0);
		}
		
		return null;
	}

}
