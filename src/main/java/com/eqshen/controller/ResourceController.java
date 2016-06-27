package com.eqshen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eqshen.base.BaseController;
import com.eqshen.model.Resource;
import com.eqshen.service.IResourceService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/resource")
public class ResourceController extends BaseController {
	@Autowired
	private IResourceService resourceService;
	
	
	@RequestMapping("/getPageResource")
	@ResponseBody
	public Object  getPageResource(int page,int size){
		PageInfo pageInfo=resourceService.selectByPage(page, size);
		//List<User> list=pageInfo.getList();
		return renderSuccess(pageInfo);
	}
	
	@RequestMapping("/updateResource")
	@ResponseBody
	public Object  updateResource(@RequestBody Resource r){
		resourceService.updateResource(r);
		return renderSuccess("更新成功");
	}
	
}
