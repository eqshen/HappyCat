package com.eqshen.mapper;

import java.util.List;

import com.eqshen.bean.UserGen;
import com.eqshen.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    //add by self
    User selectByLoginName(String loginname); 
    
    void updateUserPwdById(Long id,String pwd);
    
    UserGen findUserGenById(Long id);
    
    UserGen findUserGenByLoginName(String loginname);
    
    List<User> selectAll();
}