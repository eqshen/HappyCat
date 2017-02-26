<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<footer class="main-footer" style="background: #fff;min-height: 80px;">
			
			<div style="margin:0px auto;width:400px;">
				<shiro:hasRole name="管理员"> 
	            	<a href="${base}/man/manage">管理</a><br>
				</shiro:hasRole>
				=============================================<br>
	            	 <div style="font-size:14px;color:gray;word-wrap:break-word;">版权所有 &copy;HappyCat 2015-2018&nbsp;&nbsp;&nbsp;&nbsp;   粤ICP备007007号-007</div>
			</div>
</footer>