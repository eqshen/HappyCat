package com.eqshen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eqshen.base.BaseController;
import com.eqshen.model.Resource;
import com.eqshen.model.Role;
import com.eqshen.model.User;
import com.eqshen.service.IRoleService;
import com.github.pagehelper.PageInfo;


@Controller
@RequestMapping("/role")
public class RoleController extends BaseController {
	@Autowired
	private IRoleService roleService;
	/**
     * 获取分页角色
     *
     * @param username
     * @return
     */
	@RequestMapping("/getPageRole")
	@ResponseBody
	public Object  getPageUser(int page,int size){
		PageInfo pageInfo=roleService.selectByPage(page, size);
		//List<User> list=pageInfo.getList();
		return renderSuccess(pageInfo);
	}
	
	@RequestMapping("/updateRole")
	@ResponseBody
	public Object  updateRole(@RequestBody Role r){
		roleService.updateRole(r);
		return renderSuccess("更新成功");
	}
	
	@RequestMapping("/getAllRole")
	@ResponseBody
	public Object getAllRole(){
		List<Role> list= roleService.findAll();
		return renderSuccess(list);
	}
}
