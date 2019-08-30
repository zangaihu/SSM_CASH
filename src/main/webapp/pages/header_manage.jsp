<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 页面头部 -->
<header class="main-header">
	<!-- Logo -->
	<a href="all-admin-index.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>"互联网+"</b></span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>"互联网+"</b>个人资金管理系统</span>
	</a>
	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar navbar-static-top">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<c:if test="${sessionScope.loginAccount.role=='用户'}">
					<li class="dropdown notifications-menu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
							<i class="fa fa-bell-o"></i>
							<span class="label label-danger" id="num"></span>
						</a>
						<ul class="dropdown-menu">
							<li class="header">你有新消息</li>
							<li>
								<!-- inner menu: contains the actual data -->
								<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;"><ul class="menu" style="overflow: hidden; width: 100%; height: 200px;">




									<li>
										<a href="#">
											<i class="fa fa-user text-red" id="msg"></i>
										</a>
									</li>
								</ul><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 3px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 195.122px;"></div><div class="slimScrollRail" style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
							</li>

						</ul>
					</li>
				</c:if>





				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="${pageContext.request.contextPath}/img/user2-160x160.jpg"
						class="user-image" alt="User Image"> <span class="hidden-xs">
							${sessionScope.loginAccount.aName}
					</span>

				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img
							src="${pageContext.request.contextPath}/img/user2-160x160.jpg"
							class="img-circle" alt="User Image">
							<p>
								${loginAccount.aName}-${loginAccount.role}
							</p></li>

						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="/account/toeditpswd?id=${loginAccount.aId}" class="btn btn-default btn-flat">修改密码</a>
							</div>
							<div class="pull-right">
								<a href="/quit"
									class="btn btn-default btn-flat">注销</a>
							</div>
						</li>
					</ul></li>

			</ul>
		</div>
	</nav>
</header>
<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
		src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
<%--layer插件解决弹出框美观等问题--%>
<script src="${pageContext.request.contextPath}/layer/layer.js"></script>
<script src="http://cdn-hangzhou.goeasy.io/goeasy.js"></script>
<script>
	var goEasy = new GoEasy({
		appkey: "BC-acceba1db96d4f80a9e439e86b4c3600"
	});
	goEasy.subscribe({
		channel: "申请",
		onMessage: function (message) {
			layer.alert(message.content,{offset:'rt'})
		},
	});
	goEasy.subscribe({
		channel: "登录",
		onMessage: function (message) {
			layer.alert(message.content,{offset:'rt'})
		},
	});
	goEasy.subscribe({
		channel: "退出",
		onMessage: function (message) {
			layer.alert(message.content,{offset:'rt'})
		},


	});


</script>
<!-- 页面头部 /-->
<!-- 页面头部 /-->