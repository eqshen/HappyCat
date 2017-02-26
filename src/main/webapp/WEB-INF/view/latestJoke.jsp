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
			.myarticle{
				  padding: 35px;
				  background: #ffffff;
				  margin-bottom: 35px;
				  position: relative;
				  overflow: hidden;
			}
			
			.author img{
				height: 40px;
				width: 40px;
			}
			.author span{
				display: inline-block;
				line-height: 40px;
				font-size: 20px;
			}
			.article_content{
				margin-top: 10px;
				font-size: 18px;
				font-family: Georgia, 'Xin Gothic', 'Hiragino Sans GB', 'Droid Sans Fallback', 'Microsoft YaHei', sans-serif;
			}
			.article_status{
				font-family: "微软雅黑";
				margin-top: 10px;
				font-size: 12px;
			}
			.article_footer{
				margin-top:10px ;
				border-top: solid 1px gainsboro;
			}
		</style>
		<script type="text/javascript">
			var pageSize=5;
			var type=''
			function ajaxCommon(url,data,callBack){
				var result='null';
				if(data==null){
					data={};
				}
				//data=JSON.stringify(data);
				$.ajax({
					url : url,
					data:data,
					type : 'post',
					cache : true,
					async: false, 
					dataType : 'json',
					success : function(data) {
						//data={"success":true,"msg":"","obj":{"pageNum":1,"pageSize":6,"size":2,"orderBy":null,"startRow":1,"endRow":2,"total":2,"pages":1,"list":[{"id":1,"loginname":"hendy","name":"hendy","password":null,"sex":1,"age":18,"usertype":1,"status":1,"createdate":"2016-05-27 00:00:00","phone":"15851732142","email":"87026928@qq.com"},{"id":2,"loginname":"tom","name":"sacukra","password":null,"sex":1,"age":18,"usertype":1,"status":1,"createdate":"2016-05-27 00:00:00","phone":"123456","email":"8888@qq.com"}],"firstPage":1,"prePage":0,"nextPage":0,"lastPage":1,"isFirstPage":true,"isLastPage":true,"hasPreviousPage":false,"hasNextPage":false,"navigatePages":8,"navigatepageNums":[1]}}
						if (data.success == true) {
							result=data.obj;
							if(callBack!=null){
								callBack(data);
							}
						} else {
							//showMsg('warning',data.msg);
							alert(data.msg);
						}
					},
					error : function() {
						//showMsg('error','未知错误请联系管理员');
						alert('未知错误请联系管理员');
					}
				});
				return result;
			}
			/*
			function getRandomPageJoke(){
				$('#next').hide();
				var url="${base}/Anno/getRandomPageJoke";
				$("article").remove();
				data={size:pageSize+1};
				ajaxCommon(url, data, function(data){
					var lst=data.obj;
					addUserJoke(lst);
				});
			}
			function getHotPageJoke(){
				$('#next').hide();
				var url="${base}/Anno/getHotPageJoke";
				data={page:1,size:3};
				$("article").remove();
				ajaxCommon(url, data, function(data){
					var lst=data.obj;
					addUserJoke(lst);
				});
			}*/
			
			function getPageJoke(){
				var currentArticleNumber=$("#articleContainer").children("article").length;
				var currentPage=Math.ceil(currentArticleNumber/pageSize);
				data={page:currentPage+1,size:pageSize};
				
				url="${base}/Anno/getLastestPageJoke";
				ajaxCommon(url, data, function(data){
					var lst=data.obj;
					addUserJoke(lst);
				});
			}
			function addUserJoke(userJokeList){
				var lst=userJokeList;
				for(var i =0;i<lst.length;i++){
					var article=	'<article class="myarticle">'
							+'<div class="author">'
								+'<a href="#"><img class="img-circle" src="${userHeadPic}/'+lst[i].userId+'.jpg"/></a>'
								+'  <span data-userid="'+lst[i].userId+'">'+lst[i].username+'</span>'
							+'</div>'
							+'<div class="article_content">'
							+lst[i].content
							+'</div>'
							+'<div class="article_status">'+lst[i].good+' 好笑 · '+lst[i].bad+' 呵呵</div>'
							+'<div class="article_footer">'
								
							+'</div>'
						+'</article>';
						$("#seeMore").before(article);
					}
			}
		</script>
	</head>
	<body>
		<%@ include file="/commons/nav.jsp"%>
		<section class="content-wrap">
			<div class="container">
				<div class="row">
					<main id="articleContainer" class="col-md-8 main-content" style="">
						<!--<article class="myarticle">
							<div class="author">
								<a href="#"><img class="img-circle" src="static/img/user1.jpg"/></a>
								<span>Tom</span>
							</div>
							<div class="article_content">
								寝室一神人，从不觉得自己汗脚，鞋味很大但是自己觉得不臭，有一天我们和他说你该刷鞋了，味大，他说不大还能再穿几天，我们就和他打赌，如果他敢闻自己的鞋超过5秒，我们这一周天天给他带饭，他同意了，拿着鞋猛闻了一口，突然他就冲出去往洗漱室跑，一边跑一边吐，因为清洁大妈刚拖完地，地滑，他就摔了一跤，把腿摔肿了，请了一周的假，天天在寝室，我们轮流给他带饭。还是他赢了！！！
							</div>
							<div class="article_status">1568 好笑 · 8 评论</div>
							<div class="article_footer">
								
							</div>
						</article>-->
						
						<c:forEach items="${userJokeList}" var="joke" varStatus="index">  
							<article class="myarticle">
								<div class="author">
									<a href="#"><img class="img-circle" src="${userHeadPic}/${joke.userId}.jpg"/></a>
									<span data-userid="${joke.userId}">${joke.username}</span>
								</div>
								<div class="article_content">
									${joke.content}
								</div>
								<div class="article_status">${joke.good} 好笑 · ${joke.bad} 呵呵</div>
								<div class="article_footer">
									
								</div>
							</article>
						</c:forEach>
						<nav id="seeMore" style="margin: 0px auto;text-align: center;">
						  <!-- <ul class="pagination">
						    <li>
						      <a href="#" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
						    <li><a href="#">1</a></li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li><a href="#">4</a></li>
						    <li><a href="#">5</a></li>
						    <li>
						      <a href="#" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
						  </ul> -->
						  <div style="height:100px;">
						  	<a id="next" href="javascript:void(0)" onclick="getPageJoke()">加载更多</a>
						  </div>
						</nav>
					</main>
					<aside class="col-md-4 sidebar" style="">
						<div class="myarticle" style="height: 400px;">
							
						</div>
					</aside>
				</div>
			</div>
		</section>
		<%@ include file="/commons/footer.jsp"%>
	</body>
</html>
	