package com.eqshen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eqshen.base.BaseController;
import com.eqshen.bean.UserGen;
import com.eqshen.mapper.UserMapper;
import com.eqshen.model.Resource;
import com.eqshen.model.User;
import com.eqshen.service.IUserService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {
	@Autowired
	private IUserService userService;
	/**
     * 分页获取用户
     *
     * @param page 页数
     * @param size 每页的大小
     * @return
     */
	@RequestMapping("/getPageUser")
	@ResponseBody
	public Object  getPageUser(int page,int size){
		PageInfo pageInfo=userService.selectByPage(page, size);
		//List<User> list=pageInfo.getList();
		return renderSuccess(pageInfo);
	}
	
	@RequestMapping("/updateUser")
	@ResponseBody
	public Object  updateUser(@RequestBody UserGen user){
		String msg="更新成功";
		try {
			userService.updateUser(user);
		} catch (Exception e) {
			msg="运行时异常";
			throw new RuntimeException(e);
		}
		return renderSuccess(msg);
	}
	
	@RequestMapping("/findUserRoleByUserId")
	@ResponseBody
	public Object  getRoleByUserId(Long id){
		System.out.println(id);
		UserGen ug=userService.findUserGenById(id);
		return renderSuccess(ug.getRolesList());
	}
}
