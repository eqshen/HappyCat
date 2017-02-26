package com.eqshen.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eqshen.base.BaseController;
import com.eqshen.bean.ShiroUser;
import com.eqshen.bean.UserJoke;
import com.eqshen.model.Joke;
import com.eqshen.service.IJokeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Controller
@RequestMapping("/joke")
public class JokeController  extends BaseController{
	@Autowired
	private IJokeService jokeService;
	
	/*
	 * 发布笑话页面
	 * 
	 * */
	@RequestMapping("/releaseJoke")
	public String releaseJoke(){
		return "view/releaseJoke";
	}
	
	
	@RequestMapping("/releaseOneJoke")
	public String releaseOneJoke(@RequestParam(value="article") String article){
		Joke joke=new Joke();
		Subject user = SecurityUtils.getSubject();
		ShiroUser shiroUesr=(ShiroUser)user.getPrincipal();
		joke.setUserId(shiroUesr.getId());
		joke.setContent(article);
		
		Date now = new Date(); 
		//SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		joke.setCreatedate(now);
		
		jokeService.insert(joke);
		return "redirect:/Anno/latestJoke?page=1&size=5";
	}
	
}
