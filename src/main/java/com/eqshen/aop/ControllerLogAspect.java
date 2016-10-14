package com.eqshen.aop;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.aspectj.lang.ProceedingJoinPoint;

import com.eqshen.bean.ShiroUser;
import com.eqshen.model.User;

public class ControllerLogAspect {
	private static Logger log = Logger.getLogger(ControllerLogAspect.class);
	
	public Object aroundCheck(ProceedingJoinPoint jp){
		Subject currentUser=SecurityUtils.getSubject();
		String username=null;
		username=(currentUser==null||currentUser.getPrincipal()==null ?"匿名":((ShiroUser)currentUser.getPrincipal()).getLoginName());
		
		//获取类名
		String className=jp.getTarget().getClass().getSimpleName();
		//获取方法名字
		String methodName=jp.getSignature().getName();
		//获取目标方法的参数
		Object []args=jp.getArgs();
		//目标方法的返回值
		Object rvt=null;
		try {
			//执行目标方法
			rvt=jp.proceed(args);
		} catch (Throwable e) {
			log.error("aop日志操作，执行目标方法出错",e);
		}
		log.info("用户："+username+"执行类"+className+",方法："+methodName+",返回值"+rvt.toString());
		return rvt;
	}
}
