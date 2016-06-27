package com.eqshen.base;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.eqshen.bean.Result;
import com.eqshen.bean.ShiroUser;
import com.eqshen.bean.UserGen;
import com.eqshen.commons.utils.StringEscapeEditor;
import com.eqshen.model.User;
import com.eqshen.service.IUserService;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @基础controller
 */
public abstract class BaseController {

    @Autowired
    private IUserService userService;

    @InitBinder
    public void initBinder(ServletRequestDataBinder binder) {
       /*
        * 自动转换日期格式和类型
        * */
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));

        binder.registerCustomEditor(String.class, new StringEscapeEditor(true, false));
    }

    /**
     * 获取当前用户
     * @return
     */
    public ShiroUser getCurrentUser() {
        ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
        //User currentUser = userService.findUserById(user.id);
        return user;
    }

    /**
     * 获取当前用户id
     * @return
     */
    public Long getUserId() {
        return this.getCurrentUser().getId();
    }

    /**
     * 获取当前用户昵称
     */
    public String getUserNickName() {
        return this.getCurrentUser().getName();
    }

    /**
     * ajax失败
     * @param msg 失败的消息
     * @return {Object}
     */
    public Object renderError(String msg) {
        Result result = new Result();
        result.setMsg(msg);
        return result;
    }

    /**
     * ajax成功
     * @return {Object}
     */
    public Object renderSuccess() {
        Result result = new Result();
        result.setSuccess(true);
        return result;
    }

    /**
     * ajax成功
     * @param msg 消息
     * @return {Object}
     */
    public Object renderSuccess(String msg) {
        Result result = new Result();
        result.setSuccess(true);
        result.setMsg(msg);
        return result;
    }

    /**
     * ajax成功
     * @param obj 成功时的对象
     * @return {Object}
     */
    public Object renderSuccess(Object obj) {
        Result result = new Result();
        result.setSuccess(true);
        result.setObj(obj);
        return result;
    }
}
