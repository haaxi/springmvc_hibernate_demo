package org.andy.work.dao;

import org.andy.work.entity.AcctUser;

/**
 * 用户Dao
 * @author zcy
 *
 */
public interface UserDao extends GenericDao<AcctUser, String>{

	AcctUser findByNickName(String nickName); 
	
}
