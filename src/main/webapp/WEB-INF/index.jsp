<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Index</title>
</head>
<body>
	欢迎[<shiro:principal/>]，这里是主页，只有登录的用户可以看到
	
	
	<a href="http://localhost:8080${pageContext.request.contextPath}/info">查看信息</a><br>
	<a href="http://localhost:8080${pageContext.request.contextPath}/man/manage">管理</a><br>
</body>
</html>