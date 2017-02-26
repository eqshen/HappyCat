<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/commons/global.jsp"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<style>
	.nav-ul li a{
					font-size:20px;
					line-height:40px;
				}
	.nav-ul li:hover{
		background:white;
	}
</style>
<nav class="navbar navbar-default" style="background:#FFD82B;">
		  <div class="container-fluid" >
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <!--  --><a class="navbar-brand" href="${base }/index"><img style="width:40px;height:40px;" class="img-rounded" src="${base}/static/img/sys/icon.jpg"/></a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav nav-ul">
		        <li style="margin-left:0px;" ><a href="${base}">主页 <span class="sr-only">(current)</span></a></li>
		        <li><a href="${base}/Anno/randomJoke?limit=5" >随机</a></li>
		        <li><a href="${base}/Anno/hotJoke?page=1&size=5" >最热</a></li>
		        <li><a href="${base}/Anno/latestJoke?page=1&size=5" >最新</a></li>
		          
		      </ul>
		      
		      <ul class="nav navbar-nav navbar-right nav-ul">
		      	
		        <shiro:user> 
		        	<li>
 						<a href="${base}/joke/releaseJoke">发布</a>
	 				</li>
	 				<!-- <li>
	 						<a href="javascript:void(0)">审帖</a>
	 				</li> -->
 					<li>
 						<a href="javascript:void(0)"><img class="img-circle" style="width:20px;height:20px;" src="<shiro:principal  property="icon"/>"/>
 						&nbsp;<shiro:principal property="loginName" /></a>
 					</li>
				</shiro:user>
		        <shiro:guest> 
				 	<li><a href="${base }/login">登录</a></li>
				 	<li><a href="#">注册</a></li>
				</shiro:guest>
		        
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多 <span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <!-- <li><a href="#">个人中心</a></li>
		            <li><a href="#">备用1</a></li>
		            <li><a href="#">备用2</a></li> -->
		            <shiro:user> 
		            	<li role="separator" class="divider"></li>
 						<li><a href="${base}/logout">退出</a></li>
					</shiro:user>
		            
		          </ul>
		        </li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>