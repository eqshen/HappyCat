package com.eqshen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/man")
public class ManageController {
	@RequestMapping(value="/manage")
	public String manage(Model model){
		return "manageView/manage";
	}
	@RequestMapping(value="/user_man")
	public String userMan(Model model){
		return "manageView/user_man";
	}
	@RequestMapping(value="/role_man")
	public String roleMan(Model model){
		return "manageView/role_man";
	}
	@RequestMapping(value="/resource_man")
	public String resourceMan(Model model){
		return "manageView/resource_man";
	}
}
