<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/global.jsp" %>
<%@ include file="/common/include_index.jsp" %>
<html lang="zh-cn">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Yan Frame Demo</title>
	<style>
	/** skins **/
	#header {background: #29A176;}
	.content_tab{background: #29A176;}
	.s-profile>a{background: url(${pageContext.request.contextPath}/resources/images/background.png) left top no-repeat;}
	</style>
</head>
<body>
<header id="header">
	<ul id="menu">
		<li id="guide" class="line-trigger">
			<div class="line-wrap">
				<div class="line top"></div>
				<div class="line center"></div>
				<div class="line bottom"></div>
			</div>
		</li>
		<li id="logo" class="hidden-xs">
			<!-- <img src="${pageContext.request.contextPath}/resources/images/logo.png"/> -->
			<span id="system_title"> Yan Frame Demo</span>
		</li>
		<li class="pull-right">
			<ul class="hi-menu">
				<!-- 搜索 -->
				<li class="dropdown">
					<a class="waves-effect waves-light" data-toggle="dropdown" href="javascript:;">
						<i class="him-icon zmdi zmdi-search"></i>
					</a>
					<ul class="dropdown-menu dm-icon pull-right">
						<form id="search-form" class="form-inline">
							<div class="input-group">
								<input id="keywords" type="text" name="keywords" class="form-control" placeholder="搜索"/>
								<div class="input-group-btn">
									<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
								</div>
							</div>
						</form>
					</ul>
				</li>
				<li class="dropdown">
					<a class="waves-effect waves-light" data-toggle="dropdown" href="javascript:;">
						<i class="him-icon zmdi zmdi-dropbox"></i>
					</a>
					<ul class="dropdown-menu dm-icon pull-right">
						<li class="skin-switch">
							角色切换
						</li>
						<li class="divider"></li>
						<li>
							<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-shield-security"></i> 管理员</a>
						</li>
						
						<li>
							<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-wikipedia"></i> 一般用户</a>
						</li>
						
						<li>
							<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-paypal-alt"></i> 高级用户</a>
						</li>
					</ul>
				</li>
				<li class="dropdown">
					<a class="waves-effect waves-light" data-toggle="dropdown" href="javascript:;">
						<i class="him-icon zmdi zmdi-more-vert"></i>
					</a>
					<ul class="dropdown-menu dm-icon pull-right">
						<li class="hidden-xs">
							<a class="waves-effect" data-ma-action="fullscreen" href="javascript:fullPage();"><i class="zmdi zmdi-fullscreen"></i> 全屏模式</a>
						</li>
						<li>
							<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-account"></i> 个人资料</a>
						</li>
						<li>
							<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-settings"></i> 系统设置</a>
						</li>
						<li>
							<a class="waves-effect" href="javascript:logout();"><i class="zmdi zmdi-run"></i> 退出登录</a>
						</li>
					</ul>
				</li>
			</ul>
		</li>
	</ul>
</header>
<section id="main">
	<!-- 左侧导航区 -->
	<aside id="sidebar">
		<!-- 个人资料区 -->
		<div class="s-profile">
			<a class="waves-effect waves-light" href="javascript:;">
				<div class="sp-pic">
					<img src="${pageContext.request.contextPath}/resources/images/avatar.png"/>
				</div>
				<div class="sp-info">
					${user.userName }，您好！
					<i class="zmdi zmdi-caret-down"></i>
				</div>
			</a>
			<ul class="main-menu">
				<li>
					<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-account"></i> 个人资料</a>
				</li>
				<li>
					<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-settings"></i> 系统设置</a>
				</li>
				<li>
					<a class="waves-effect" href="javascript:logout();"><i class="zmdi zmdi-run"></i> 退出登录</a>
				</li>
			</ul>
		</div>
		<!-- /个人资料区 -->
		<!-- 菜单区 -->
		<ul id="main-menu" class="main-menu">
			<!-- 
			<li>
			<a class="waves-effect" href="javascript:Tab.addTab('首页', 'home');"><i class="zmdi zmdi-home"></i> 首页</a>
			</li>
			<li class="sub-menu system_menus">
			<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-accounts"></i> 角色用户管理</a>
			<ul>
				<li><a class="waves-effect" href="javascript:Tab.addTab('角色管理', '/manage/role/index');">角色管理</a></li>
				<li><a class="waves-effect" href="javascript:Tab.addTab('用户管理', '${pageContext.request.contextPath}/common/user/init');">用户管理</a></li>
				<li><a class="waves-effect" href="javascript:Tab.addTab('产品管理', '${pageContext.request.contextPath}/demo/product/init');">产品管理</a></li>
			</ul>
			</li>
			<li class="sub-menu system_menus">
			<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-lock-outline"></i> 权限资源管理</a>
			<ul>
				<li><a class="waves-effect" href="javascript:Tab.addTab('权限管理', '/manage/resources/index');">权限管理</a></li>
				<li><a class="waves-effect" href="javascript:Tab.addTab('菜单管理', '${pageContext.request.contextPath}/common/menu/init');">菜单管理</a></li>
			</ul>
			</li>
			<li class="sub-menu system_menus">
			<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-more"></i> 其他数据管理</a>
			<ul>
				<li><a class="waves-effect" href="javascript:Tab.addTab('日志记录', '${pageContext.request.contextPath}/common/logging/init');">日志记录</a></li>
				<li><a class="waves-effect" href="javascript:Tab.addTab('模板查看', '${pageContext.request.contextPath}/template');">模板查看</a></li>
			</ul>
			</li>
			<li>
			<div class="upms-version">
				&copy; YAN FRAME V1.0
			</div>
			</li>
			 -->
		</ul>
		<!-- /菜单区 -->
	</aside>
	<!-- /左侧导航区 -->
	<section id="content">
		<div class="content_tab">
			<div class="tab_left">
				<a class="waves-effect waves-light" href="javascript:;"><i class="zmdi zmdi-chevron-left"></i></a>
			</div>
			<div class="tab_right">
				<a class="waves-effect waves-light" href="javascript:;"><i class="zmdi zmdi-chevron-right"></i></a>
			</div>
			<ul id="tabs" class="tabs">
				<li id="tab_home" data-index="home" data-closeable="false" class="cur">
					<a class="waves-effect waves-light">首页</a>
				</li>
			</ul>
		</div>
		<div class="content_main">
			<div id="iframe_home" class="iframe cur">
				<p><h4>Yan Frame Demo</h4></p>
				<p><b>该项目这是一个基于 SpringMVC+Spring+MyBatis（SSM）支持分布式的高效率便捷开发框架，使开发人员更专注于业务，达到面向业务开发</b></p>
				<p><b>项目使用 Maven 构建便于项目管理，支持 MySql、Oracle、Mongodb 等主流数据库</b></p>
				<p><b>前端采用基于 Boostrap 实现的响应式布局，支持移动端，并集成了一系列的动画效果插件，整体界面美观大方，可优雅的与后台完成交互操作</b></p>
				<p><b>项目目标为中小型企业打造全方位的J2EE企业级开发解决方案</b></p>
				<p><b>代码已托管至<a href="https://github.com/micyo202/yan_demo"> github</a>，目前正在不断完善，敬请期待...</b></p>
				<p>Created by Yanzheng on 2017-08-01</p>
				<p>Copyright <a href="https://github.com/micyo202" target="_blank">https://github.com/micyo202</a>. All rights reserved.<br/>
			</div>
		</div>
	</section>
</section>
<footer id="footer"></footer>
<script type="text/javascript">
	function logout(){
		$.confirm({
			type: 'grey',
			animationSpeed: 300,
			title: false,
			content: '您确认要退出系统吗？',
			buttons: {
				confirm: {
					text: '确认',
					btnClass: 'waves-effect waves-button',
					action: function () {
						location.href = "${pageContext.request.contextPath}/common/login/signout";
					}
				},
				cancel: {
					text: '取消',
					btnClass: 'waves-effect waves-button'
				}
			}
		});
	}
</script>
</body>
</html>