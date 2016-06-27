package com.eqshen.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eqshen.mapper.RoleMapper;
import com.eqshen.mapper.RoleResourceMapper;
import com.eqshen.mapper.UserRoleMapper;
import com.eqshen.model.Role;
import com.eqshen.model.User;
import com.eqshen.service.IRoleService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class RoleServiceImpl implements IRoleService {
	@Autowired
    private RoleMapper roleMapper;
    @Autowired
    private RoleResourceMapper roleResourceMapper;
    @Autowired
    private UserRoleMapper userRoleMapper;
	
	public void addRole(Role role) {
		// TODO Auto-generated method stub

	}

	public void deleteRoleById(Long id) {
		// TODO Auto-generated method stub

	}

	public Role findRoleById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateRole(Role role) {
		// TODO Auto-generated method stub
		roleMapper.updateByPrimaryKeySelective(role);
	}

	public List<Long> findResourceIdListByRoleId(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateRoleResource(Long id, String resourceIds) {
		// TODO Auto-generated method stub

	}

	public List<Long> findRoleIdListByUserId(Long userId) {
		return userRoleMapper.findRoleIdListByUserId(userId);
	}

	public List<Map<Long, String>> findRoleResourceListByRoleId(Long roleId) {
		return roleMapper.findRoleResourceListByRoleId(roleId);
	}
	
	//分页查询
	public PageInfo selectByPage(int page,int size){
		PageHelper.startPage(page, size);
		//随便执行一次查询，pageHelper会按照要求分页查询
		List<Role> list=roleMapper.selectAll();
		return new PageInfo(list);
	}

	public List<Role> findAll() {
		List<Role> list=roleMapper.selectAll();
		return list;
	}
	
	

}
