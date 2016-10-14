package com.eqshen.service.impl;

import java.util.List;
import java.util.Properties;

import net.sf.ehcache.util.PropertyUtil;

import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eqshen.bean.UserGen;
import com.eqshen.mapper.UserMapper;
import com.eqshen.mapper.UserRoleMapper;
import com.eqshen.model.Role;
import com.eqshen.model.User;
import com.eqshen.model.UserRole;
import com.eqshen.service.IUserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class UserServiceImpl implements IUserService {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private UserRoleMapper userRoleMapper;
	
	public User findUserByLoginName(String username) {
		
		return userMapper.selectByLoginName(username);
	}

	public User findUserById(Long id) {
		return userMapper.selectByPrimaryKey(id);
	}
	
	//∑÷“≥≤È—Ø
	public PageInfo selectByPage(int page,int size){
		PageHelper.startPage(page, size);
		List<User> list=userMapper.selectAll();
		return new PageInfo(list);
	}
	public void addUser(UserGen userGen) throws Exception {
		User user=new User();
		PropertyUtils.copyProperties(user, userGen);
		userMapper.insert(user);
	}

	public void updateUserPwdById(Long id, String pwd) {
		userMapper.updateUserPwdById(id, pwd);
	}

	public UserGen findUserGenById(Long id) {
		return userMapper.findUserGenById(id);
	}
	
	public UserGen findUserGenByLoginName(String loginname){
		return userMapper.findUserGenByLoginName(loginname);
	}
	
	public void updateUser(UserGen userGen) throws Exception {
		User user=new User();
		PropertyUtils.copyProperties(user, userGen);
		userMapper.updateByPrimaryKeySelective(user);
	}

	public void deleteUserById(Long id) {
		userMapper.deleteByPrimaryKey(id);
	}

	public List<Role> findRoleListById(Long id) {
		return userMapper.findRoleListById(id);
	}

	public List<UserRole> findUserRoleByUserIdAndRoleId(Long userid, Long roleid) {
		return userRoleMapper.selectByUserAndRoleId(userid, roleid);
	}

	public void addUserRole(UserRole ur) {
		userRoleMapper.insert(ur);
	}

	public int removeUserRoleByUserId(Long userid) {
		// TODO Auto-generated method stub
		return userRoleMapper.deleteByUserId(userid);
	}
}
