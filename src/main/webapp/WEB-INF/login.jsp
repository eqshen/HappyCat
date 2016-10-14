<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/commons/global.jsp"%>
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>后台管理</title>
    <%@include file="/commons/superuiBase.jsp" %>
    <style type="text/css">
        input {
            font-family: "Microsoft Yahei";
        }

        .control-label {
            color: #B2DFEE;
            padding-left: 4px;
        }
        
        
    </style>
    <script type="text/javascript">
    	function login(){
    		var url="${base}/login";
    		var username=$("#username").val();
    		var password=$("#password").val();
    		
			$.ajax({
					url : url, 
					data : {
						username : username,
						password : password
					},
					type : 'post',
					cache : false,
					dataType : 'json',
					success : function(data) {
						if (data.success == true) { 
							showMsg('success',data.msg);
							window.location="${base}"+"/index";
						} else {
							//alert(data.msg);
							showMsg('warning',data.msg);
						}
					},
					error : function() {
						// view("异常！");  
						showMsg('error','未知错误请联系管理员');
					}
				});
			}
    		
    		function showMsg(type,msg){
    			//var arry=new Array('success','success','info','warning','error');
    			toastr.options = {
    					  "closeButton": true,
    					  "debug": false,
    					  "positionClass": "toast-top-right",
    					  "onclick": null,
    					  "showDuration": "1000",
    					  "hideDuration": "6000",
    					  "timeOut": "5000",
    					  "extendedTimeOut": "1000",
    					  "showEasing": "swing",
    					  "hideEasing": "linear",
    					  "showMethod": "fadeIn",
    					  "hideMethod": "fadeOut"
    					}
    			toastr[type](msg, "提示");
    		}
    	
		</script>
</head>
<body>
    <div id="loginbox">
        <div class="control-group normal_text">
            <h2 style="color:#B2DFEE;font-size:28px;">HappyCat 登录</h2>
        </div>
        <form id="loginform" class="form-vertical" method="POST" action="${base}/login">
            <div class="control-group">
                <label class="control-label">登陆账号</label>
                <div class="controls">
                    <div class="main_input_box">
                        <span class="add-on bg_lg"><i class="icon-user" style="font-size:16px;"></i></span><input id="username" name="username" type="text" />
                    </div>
                </div>
            </div>
            <div class="control-group2">
                <label class="control-label">登陆密码</label>
                <div class="controls">
                    <div class="main_input_box">
                        <span class="add-on bg_ly"><i class="icon-lock" style="font-size:16px;"></i></span><input id="password" name="password" type="password" />
                    </div>
                </div>
            </div>
            <div class="form-actions">
                <a  href="javascript:void(0)" onclick="login()" class="flip-link btn btn-success" style="width:440px;" id="checkBtn" >登录</a>
            </div>
            
            
            
            <div class="control-group normal_text">
               
            </div>
        </form>

       
    </div>
    <script src="content/superui/min/js/superui.common.min.js"></script>
    
    <script src="content/superui/base/jquery/jquery-1.9.1.min.js"></script>
    <script src="content/superui/base/bootstrap/js/bootstrap.js"></script>
    <script src="content/superui/pages/login/matrix.login.js"></script>
</body>
</html>

