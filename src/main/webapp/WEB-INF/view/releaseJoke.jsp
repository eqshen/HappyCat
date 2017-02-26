<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/commons/global.jsp"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>HappyCat</title>
		<!-- 新 Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="http:////cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
		
		<!-- 可选的Bootstrap主题文件（一般不用引入） -->
		<link rel="stylesheet" href="http:////cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
		
		<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
		<script src="http:////cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
		
		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
		<script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		
		
		<style>
			
			body{
				background: #ebebeb;
			}
			
		</style>
		<script type="text/javascript">
			
		</script>
	</head>
	<body>
		<%@ include file="/commons/nav.jsp"%>
		<section class="content-wrap">
			<div class="container">
				<div class="row" >
					<main id="articleContainer" class=" main-content" ">
						<div style="background: #fff;min-height: 400px;max-width:1000px;padding:50px;margin:0px auto;margin-bottom:50px;" >
							<form style="" method="POST" action="${base}/joke/releaseOneJoke">
								<input style="height:100px;" type="text" name="article" class="form-control" placeholder="请输入..." />
								<input type="reset" class="btn btn-warning" value="清空"/>
								<input type="submit" class="btn btn-success" value="发布"/>
							</form>
						</div>
					</main>
				</div>
			</div>
		</section>
		<%@ include file="/commons/footer.jsp"%>
	</body>
</html>
	