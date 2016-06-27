package com.eqshen.commons.shiro;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authz.AuthorizationFilter;
import org.apache.shiro.web.util.WebUtils;

import com.eqshen.aop.ControllerLogAspect;
import com.eqshen.bean.ShiroUser;

/**
 * @description：用户自定义shiro拦截器，用于拦截url并对权限进行判断
 * @author：eqshen
 * @date：2016年5月28日14:10:34
 */

public class UrlAuthorityInterceptor extends AuthorizationFilter {
	private static Logger log = Logger.getLogger(UrlAuthorityInterceptor.class);

	@Override
	protected boolean isAccessAllowed(ServletRequest request,
			ServletResponse response, Object arg2) throws Exception {
		HttpServletRequest httpRequest = WebUtils.toHttp(request);
		Subject currentUser=SecurityUtils.getSubject();
		if(currentUser.isAuthenticated()==false){
			log.info("用户认证失败 in UrlAuthorityInterceptor,请求资源为："+httpRequest.getRequestURI());
			//System.out.println("用户认证失败 in urlauthority");
			return false;
		}
		String uri=httpRequest.getRequestURI();
		String resource=uri.replaceAll(httpRequest.getContextPath(), "");
		if(currentUser.isPermitted(resource)==false){
			//System.out.println("用户"+((ShiroUser)currentUser.getPrincipal()).getName()+"无权限访问路径"+resource);
			log.info("用户"+((ShiroUser)currentUser.getPrincipal()).getLoginName()+"无权限访问路径:"+resource);
			return false;
		}
		//System.out.println("用户定义shiro请求拦截器,拦截到请求:"+httpRequest.getRequestURI());
		return true;
	}

}
