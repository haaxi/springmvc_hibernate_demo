package org.logistics.service.impl;

import java.util.HashSet;
import java.util.Set;

import org.apache.log4j.Logger;
import org.logistics.dao.UserInfoMapper;
import org.logistics.model.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class UserDetailsServiceImpl implements UserDetailsService {

	private static final Logger LOGGER = Logger  
            .getLogger(UserDetailsServiceImpl.class);
	
	// 注入查询User的dao层  
    @Autowired  
    private UserInfoMapper userInfoMapper;

	public UserDetails loadUserByUsername(String arg0) throws UsernameNotFoundException {
		
		return null;
	}
	
	/*public UserDetails loadUserByUsername(String nickName) throws UsernameNotFoundException {
		
		LOGGER.info("认证用户：" + nickName);
		
		UserInfo user = userInfoMapper.selectAll();
		
		if(null == user){
			throw new UsernameNotFoundException("用户："+nickName+"不存在");
		}
		
		Set<GrantedAuthority> authorities = getAuthority(user);
		
		UserDetails userDetails = new User(user.getNickName(), user.getNickPassword()
				,true,true,true,true, authorities);
		
		return userDetails;
	}*/
	
	/**
	 * 获得用户所有角色的权限
	 * @return
	 */
	/*private Set<GrantedAuthority> getAuthority(AcctUser acctUser){
		Set<GrantedAuthority> authoritySet = new HashSet<GrantedAuthority>();
		
		//默认所以用户有"浏览用户"的权利  
		authoritySet.add(new SimpleGrantedAuthority("ROLE_浏览用户"));
		
		// 依次添加
		if(null != acctUser.getAcctRoles() && acctUser.getAcctRoles().size()>0){
			
			for(AcctRole role: acctUser.getAcctRoles()){
				
				if(null != role.getAcctAuthorities() && role.getAcctAuthorities().size()>0){
					
					for(AcctAuthority authority : role.getAcctAuthorities()){
						
						authoritySet.add(new SimpleGrantedAuthority(authority.getPrefixedName()));
					}
					
				}
				
			}
			
		}
		
		return authoritySet;
				
	}*/

}
