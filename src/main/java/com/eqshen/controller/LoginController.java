package com.eqshen.controller;


import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eqshen.base.BaseController;
import com.eqshen.bean.UserJoke;
import com.eqshen.service.IJokeService;
import com.eqshen.service.impl.JokeServiceImpl;


@Controller
public class LoginController extends BaseController {
	@Autowired
	private IJokeService JokeService;
	/**
     * 首页
     *
     * @return
     */
    @RequestMapping(value = "/")
    public String index() {
        return "redirect:/index";
    }
    
    /**
     * 首页
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/index")
    public ModelAndView index(Model model) {
    	ModelAndView mav=new ModelAndView();
    	mav.setViewName("index");
    	List<UserJoke> ls=JokeService.selectPageUserJoke(1, 5);
    	mav.addObject("userJokeList", ls);
    	return mav;
    }
    
    /**
     * GET 登录
     * @return {String}
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginGet() {
        if (SecurityUtils.getSubject().isAuthenticated()) {
        	System.out.println("用户已经登陆，跳转至首页");
        	
            return "redirect:/index";
        }
        return "login";
    }
    
    
    /**
     * POST 登录 shiro 写法
     *
     * @param username 用户名
     * @param password 密码
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Object loginPost(String username, String password) {

        if (StringUtils.isBlank(username)) {
            return renderError("用户名不能为空");
        }
        if (StringUtils.isBlank(password)) {
            return renderError("密码不能为空");
        }
        Subject user = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, DigestUtils.md5Hex(password).toCharArray());
        token.setRememberMe(true);
        try {
            user.login(token);
        } catch (UnknownAccountException e) {
            //logger.error("账号不存在：{}", e);
            return renderError("账号不存在");
        } catch (DisabledAccountException e) {
//            logger.error("账号未启用：{}", e);
            return renderError("账号未启用");
        } catch (IncorrectCredentialsException e) {
//            logger.error("密码错误：{}", e);
            return renderError("密码错误");
        } catch (RuntimeException e) {
//            logger.error("未知错误,请联系管理员：{}", e);
            return renderError("未知错误,请联系管理员");
        }
        return renderSuccess();
    }
    
    
    /**
     * 未授权
     * @return {String}
     */
    @RequestMapping(value = "/unauth")
    public String unauth() {
        if (SecurityUtils.getSubject().isAuthenticated() == false) {
        	System.out.println("未经授权，跳转至登陆界面");
            return "redirect:/login";
        }
        return "redirect:/index";
    }

//    /**
//     * 退出
//     * @return {Result}
//     */
//    @RequestMapping(value = "/logout")
//    @ResponseBody
//    public Object logout() {
//        //logger.info("登出");
//        Subject subject = SecurityUtils.getSubject();
//        subject.logout();
//        return renderSuccess();
//    }
    /**
     * 退出
     * @return {Result}
     */
    @RequestMapping(value = "/logout")
    public String logout() {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "redirect:/index";
    }
}
