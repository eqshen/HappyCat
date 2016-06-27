项目采用spring+springMVC+mybatis+shiro架构
其中
1.shiro使用注意
	shiro采用独立的session及校验机制，自定义ShiroDbRealm完成登录的认证和权限的校验。
	 doGetAuthenticationInfo()方法在currentUser.login()或currentUser.isAuthenticated()时调用
	 doGetAuthorizationInfo()是权限认证方法，只有在currentUser.isPrimetted()方法调用时才会执行
	 并且以上两个方法只会在初次调用的时候执行，之后多次调用直接查询缓存，这样减少了数据库的压力。
	 在jsp页面中通常使用以下标签进行检测权限
	 <shiro:hasPermission name=“users:manage”>
        <a href=“manageUsers.jsp”>
            Click here to manage users
        </a>
    </shiro:hasPermission>
    <shiro:lacksPermission name=“users:manage”>
        No user management for you!
    </shiro:lacksPermission>
    
	使用用户自定义shiro拦截器对每个用户请求的url进行权限认证（该用户是否有访问该url的权限）
	参考教程
	http://blog.csdn.net/wxwzy738/article/details/10992161

2.使用aop切面的方式对controller增加日志记录，使用log4j


3.分页插件使用pagehelper