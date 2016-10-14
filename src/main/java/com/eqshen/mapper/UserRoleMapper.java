package com.eqshen.mapper;

import java.util.List;

import com.eqshen.model.UserRole;

public interface UserRoleMapper {
    int deleteByPrimaryKey(Long id);
    
    int deleteByUserId(Long userid);
    
    int insert(UserRole record);

    int insertSelective(UserRole record);

    UserRole selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UserRole record);

    int updateByPrimaryKey(UserRole record);
    
    List<UserRole> selectByUserAndRoleId(Long userid,Long roleid);
    
    //add by self
    List<Long> findRoleIdListByUserId(Long userId);
}