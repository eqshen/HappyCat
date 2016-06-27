package com.eqshen.service;

import java.util.List;

import com.eqshen.bean.UserGen;
import com.eqshen.model.User;
import com.github.pagehelper.PageInfo;

public interface IUserService {
	/**
     * 根据用户名查询用户
     *
     * @param username
     * @return
     */
    User findUserByLoginName(String username);

    /**
     * 根据用户id查询用户
     *
     * @param id
     * @return
     */
    User findUserById(Long id);
    /**
     * 分頁查詢用戶
     *
     * @param id
     * @return
     */
    PageInfo selectByPage(int page,int size);

    /**
     * 添加用户
     *
     * @param userVo
     * @throws Exception 
     */
    void addUser(UserGen userGen) throws Exception;

    /**
     * 修改密码
     *
     * @param userId
     * @param pwd
     */
    void updateUserPwdById(Long id, String pwd);

    /**
     * 根据用户id查询用户带部门
     *
     * @param id
     * @return
     */
    UserGen findUserGenById(Long id);
    
    UserGen findUserGenByLoginName(String loginname);
    /**
     * 修改用户
     *
     * @param userVo
     * @throws Exception 
     */
    void updateUser(UserGen userGen) throws Exception;

    /**
     * 删除用户
     *
     * @param id
     */
    void deleteUserById(Long id);
}
