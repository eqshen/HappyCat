<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@ include file="/commons/global.jsp"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8" />
    <title>后台管理</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!--全局通用框架样式 begin-->
    <!-- 全局基本样式 -->
    <link href="../content/superui/min/css/superui.common.min.css" rel="stylesheet" />
    <!-- 全局主题样式 -->
    <link href="../content/superui/global/css/components.min.css" id="style_components" rel="stylesheet" />
    <link href="../content/superui/pages/layouts/css/themes/darkblue.min.css" rel="stylesheet" type="text/css" id="style_color" />
    <!--全局通用框架样式 end-->

    
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
    <!-- Header头部 -->
    <div class="page-header navbar navbar-fixed-top">
        <div class="page-header-inner ">
            <!-- login -->
            <div class="page-logo">
                <a href="index.html" style="margin-top: 10px; margin-left: 20px;">
                    <span style="color: white; font-size: 20px; " class="logo-default">Happy</span><span style="color: red; font-size: 20px;" class="logo-default">Cat</span>
                </a>
                <div class="menu-toggler sidebar-toggler"> </div>
            </div>
            <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    
                   
                              
                      
                  
                    <li class="dropdown dropdown-user">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <img alt="" class="img-circle" src="../content/superui/global/img/photos/girl1.png" />
                            <span class="username username-hide-on-mobile"> <shiro:principal/> </span>
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default">
                            <li>
                                <a link="../page/page_user_profile_1.html">
                                    <i class="icon-user"></i> 个人信息
                                </a>
                            </li>
                            
                            <li>
                                <a href="${base }/logout">
                                    <i class="icon-key"></i> 退出
                                </a>
                            </li>
                        </ul>
                    </li>
                   <!--   <li class="dropdown dropdown-quick-sidebar-toggler">
                        <a href="javascript:;" class="dropdown-toggle">
                            <i class="icon-logout"></i>
                        </a>
                    </li>-->
                </ul>
            </div>
        </div>
    </div>
    <div class="clearfix"> </div>
    <div class="page-container">
        <!--侧边栏菜单-->
        <div class="page-sidebar-wrapper">
            <div class="page-sidebar navbar-collapse collapse">
                <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="true" data-auto-scroll="false" data-slide-speed="200" style="padding-top: 20px">
                    <li class="sidebar-toggler-wrapper hide">
                        <div class="sidebar-toggler"> </div>
                    </li>
                    <li class="sidebar-search-wrapper">
                        <form class="sidebar-search  " action="#" method="POST">
                            <a href="javascript:;" class="remove">
                                <i class="icon-close"></i>
                            </a>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="搜索...">
                                <span class="input-group-btn">
                                    <a href="javascript:;" class="btn submit">
                                        <i class="icon-magnifier"></i>
                                    </a>
                                </span>
                            </div>
                        </form>
                    </li>


                </ul>
            </div>
        </div>
        <div class="page-content-wrapper">
            <div class="page-content">
                <!--换肤设置-->
                <div class="theme-panel hidden-xs hidden-sm" style="margin-top:0px;">
                    <div class="toggler"> </div>
                    <div class="toggler-close"> </div>
                    <div class="theme-options">
                        <div class="theme-option theme-colors clearfix">
                            <span> 主题颜色 </span>
                            <ul>
                                <li class="color-default current tooltips" data-style="default" data-container="body" data-original-title="默认"> </li>
                                <li class="color-darkblue tooltips" data-style="darkblue" data-container="body" data-original-title="蓝黑色"> </li>
                                <li class="color-blue tooltips" data-style="blue" data-container="body" data-original-title="蓝色"> </li>
                                <li class="color-grey tooltips" data-style="grey" data-container="body" data-original-title="灰色"> </li>
                                <li class="color-light tooltips" data-style="light" data-container="body" data-original-title="浅色"> </li>
                                <li class="color-light2 tooltips" data-style="light2" data-container="body" data-html="true" data-original-title="浅色 2"> </li>
                            </ul>
                        </div>
                        <div class="theme-option">
                            <span> 主题风格 </span>
                            <select class="layout-style-option form-control input-sm">
                                <option value="square" selected="selected">方块</option>
                                <option value="rounded">圆角</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span> 布局 </span>
                            <select class="layout-option form-control input-sm">
                                <option value="fluid" selected="selected">流式布局</option>
                                <option value="boxed">盒式布局</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span> 头部 </span>
                            <select class="page-header-option form-control input-sm">
                                <option value="fixed" selected="selected">自适应</option>
                                <option value="default">默认</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span> 顶级下拉菜单</span>
                            <select class="page-header-top-dropdown-style-option form-control input-sm">
                                <option value="light" selected="selected">浅色</option>
                                <option value="dark">深色</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span> 侧边栏</span>
                            <select class="sidebar-option form-control input-sm">
                                <option value="fixed">自适应</option>
                                <option value="default" selected="selected">默认</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span> 滑动菜单 </span>
                            <select class="sidebar-menu-option form-control input-sm">
                                <option value="accordion" selected="selected">手风琴</option>
                                <option value="hover">滑动</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span> 侧边栏样式 </span>
                            <select class="sidebar-style-option form-control input-sm">
                                <option value="default" selected="selected">默认</option>
                                <option value="light">浅色</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span> 侧边栏位置 </span>
                            <select class="sidebar-pos-option form-control input-sm">
                                <option value="left" selected="selected">左</option>
                                <option value="right">右</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span> 尾部 </span>
                            <select class="page-footer-option form-control input-sm">
                                <option value="fixed">自适应</option>
                                <option value="default" selected="selected">默认</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="page-bar" style="margin-top:10px">
                    <ul class="page-breadcrumb">
                        <li>
                            <a href="#">首页</a>
                            <i class="fa fa-circle"></i>
                        </li>
                        <li>
                            <span>后台管理</span>
                        </li>
                    </ul>
                  
                </div>
                <div class="page-content-body" id="tab-page-content"></div>

            </div>
        </div>
        <a href="javascript:;" class="page-quick-sidebar-toggler">
            <i class="icon-login"></i>
        </a>
        <!--侧边栏（提醒）-->
        <div class="page-quick-sidebar-wrapper" data-close-on-body-click="false">
            <div class="page-quick-sidebar">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="javascript:;" data-target="#quick_sidebar_tab_1" data-toggle="tab">
                            用户
                            <span class="badge badge-danger">2</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" data-target="#quick_sidebar_tab_2" data-toggle="tab">
                            警告
                            <span class="badge badge-success">7</span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                            更多
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                                    <i class="icon-bell"></i> 警告
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                                    <i class="icon-info"></i> 提醒
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                                    <i class="icon-speech"></i> 活动
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                                    <i class="icon-settings"></i> 设置
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
               
                    <div class="tab-pane page-quick-sidebar-settings" id="quick_sidebar_tab_3">
                        <div class="page-quick-sidebar-settings-list">
                            <h3 class="list-heading">常用设置</h3>
                            <ul class="list-items borderless">
                                <li>
                                    提醒设置
                                    <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="success" data-on-text="启动" data-off-color="default" data-off-text="关闭">
                                </li>
                                <li>
                                    允许跟踪
                                    <input type="checkbox" class="make-switch" data-size="small" data-on-color="info" data-on-text="启动" data-off-color="default" data-off-text="关闭">
                                </li>
                                <li>
                                    日志错误
                                    <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="danger" data-on-text="启动" data-off-color="default" data-off-text="关闭">
                                </li>
                                <li>
                                    服务器监控
                                    <input type="checkbox" class="make-switch" data-size="small" data-on-color="warning" data-on-text="启动" data-off-color="default" data-off-text="关闭">
                                </li>
                                <li>
                                    SMS短信抱紧
                                    <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="success" data-on-text="启动" data-off-color="default" data-off-text="关闭">
                                </li>
                            </ul>
                            <h3 class="list-heading">系统设置</h3>
                            <ul class="list-items borderless">
                                <li>
                                    安全级别
                                    <select class="form-control input-inline input-sm input-small">
                                        <option value="1">正常</option>
                                        <option value="2" selected>中</option>
                                        <option value="e">高</option>
                                    </select>
                                </li>
                                <li>
                                    邮件失败重试次数
                                    <input class="form-control input-inline input-sm input-small" value="5" />
                                </li>
                                <li>
                                    SMTP端口号
                                    <input class="form-control input-inline input-sm input-small" value="3560" />
                                </li>
                                <li>
                                    系统错误短信提醒
                                    <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="danger" data-on-text="开启" data-off-color="default" data-off-text="关闭">
                                </li>
                                <li>
                                    系统错误邮件提醒
                                    <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="warning" data-on-text="开启" data-off-color="default" data-off-text="关闭">
                                </li>
                            </ul>
                            <div class="inner-content">
                                <button class="btn btn-success">
                                    <i class="icon-settings"></i> 保存
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-footer">
        <div style="font-size:14px;color:gray;word-wrap:break-word;">版权所有 &copy;HappyCat 2015-2018&nbsp;&nbsp;&nbsp;&nbsp;   粤ICP备007007号-007</div>
        <div class="scroll-to-top">
            <i class="icon-arrow-up"></i>
        </div>
    </div>
    <!-- END FOOTER -->
    <!--[if lt IE 9]>
    <script src="../content/superui/base/base-core/excanvas.min.js"></script>
    <script src="../content/superui/base/base-core/respond.min.js"></script>
    <![endif]-->
    <!-- 全局公共类库Begin -->
    <script src="../content/superui/min/js/superui.common.min.js"></script>
    <!--全局公共类库 End-->
    <script>
        App.fixIframeCotent();
        $(function () {
            //菜单格式
            var menus = [
            { id: "10010", text: "我的工作台", isHeader: true },
            {
                id: "10001", text: "Manage", isOpen: true, icon: "icon-diamond",  children: [
                { id: "10002", text: "用户管理", url: "${base}/man/user_man", targetType: "ajax", icon: "icon-diamond" },
                 { id: "10003", text: "角色管理", url: "${base}/man/role_man", targetType: "ajax", icon: "icon-diamond" },
                { id: "10004", text: "资源管理", url: "${base}/man/resource_man", targetType: "ajax", icon: "icon-diamond" }	
                ]
            }
            ];//page-content-body
            $('.page-sidebar-menu').sidebarMenu({ data: menus, param: { strUser: 'admin' } });
            //处理菜单ajax方式加载
            jQuery('.page-sidebar-menu').on('click', ' li > a.ajaxify', function (e) {
                //  $(".tab_iframe").attr("src", $(this).attr('link'));
                e.preventDefault();
                App.scrollTop();
                var url = $(this).attr("href");
                var pageContent = $('#tab-page-content');
                var pageContentBody = $('#tab-page-content');// $('.page-content .page-content-body');

                App.blockUI({
                    target: pageContent, overlayColor: 'none',
                    animate: false
                });
                $.get(url, {}, function (res) {
                    pageContentBody.html(res);
                    //  App.fixContentHeight(); // fix content height
                    App.unblockUI(pageContent);
                    App.initUniform(); // initialize uniform elements
                });
            });
        });
    </script>
</body>
</html>