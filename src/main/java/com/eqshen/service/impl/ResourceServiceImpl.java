package com.eqshen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eqshen.mapper.ResourceMapper;
import com.eqshen.model.Resource;
import com.eqshen.model.User;
import com.eqshen.service.IResourceService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class ResourceServiceImpl implements IResourceService {
	@Autowired
	private ResourceMapper resourceMapper;
	public PageInfo selectByPage(int page,int size) {
		PageHelper.startPage(page, size);
		List<Resource> list=resourceMapper.selectAll();
		return new PageInfo(list);
	}
	
	public void updateResource(Resource r){
		resourceMapper.updateByPrimaryKeySelective(r);
	}
}
