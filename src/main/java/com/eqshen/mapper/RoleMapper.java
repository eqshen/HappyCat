package com.eqshen.mapper;

import java.util.List;
import java.util.Map;

import com.eqshen.model.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
    
    List<Map<Long, String>> findRoleResourceListByRoleId(Long id);
    
    List<Role> selectAll();
}