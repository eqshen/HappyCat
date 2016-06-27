package com.eqshen.test;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.shiro.session.mgt.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.eqshen.mapper.UserMapper;
import com.eqshen.model.User;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

public class SqlHelperTest {
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext(new String[]{"spring/spring-config.xml"});
		SqlSessionFactory sf=(SqlSessionFactory) ac.getBean("sqlSessionFactory");
		SqlSession session= sf.openSession();
		UserMapper userMapper=session.getMapper(UserMapper.class);
		
		PageHelper.startPage(1, 1);
		List<User> list=userMapper.selectAll();
		System.out.println(list.get(0).getLoginname());
		PageInfo page =new PageInfo(list);
		System.out.println(page.getPages());
		System.out.println(page.getPageSize());
		System.out.println(page.getTotal());
		
		
		session.close();
		
	}
}
