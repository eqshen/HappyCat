package com.eqshen.mapper;

import java.util.List;

import com.eqshen.model.UserRole;

public interface UserRoleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UserRole record);

    int insertSelective(UserRole record);

    UserRole selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UserRole record);

    int updateByPrimaryKey(UserRole record);
    
    //add by self
    List<Long> findRoleIdListByUserId(Long userId);
}