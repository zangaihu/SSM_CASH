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
						<a href="#" class="dropdown-toggle"  id="dropmenu" data-toggle="dropdown" aria-expanded="false">
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
						src="${pageContext.request.contextPath}/img/user1-128x128.jpg"
						class="user-image" alt="User Image"> <span class="hidden-xs">
							${sessionScope.loginAccount.aName}
					</span>

				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img
							src="${pageContext.request.contextPath}/img/user1-128x128.jpg"
							class="img-circle" alt="User Image">
							<p>
								${loginAccount.aName}-${loginAccount.role}
							</p></li>

						<!-- Menu Footer-->
						<li class="user-footer">
							<c:if test="${loginAccount.aState !='未开户' && loginAccount.aState!='冻结'}">
							<div class="pull-left">
								<a href="/account/toeditpswd?id=${loginAccount.aId}" class="btn btn-default btn-flat">修改密码</a>
							</div>
							</c:if>
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
		channel: "${loginAccount.aState}",
		onMessage: function (news) {
			//alert("Channel:" + message.channel + " content:" + message.content);
			// $("#msg").innerText=message.content;


            // var ss=news.content

            var ss=JSON.parse(news.content)
            console.log(news.content)
            console.log(ss.News.nTitle)
          /*  layer.alert(
                "你有一条未读新闻\n"
                +ss.News.nTitle,

                {offset:'rt'}

            )*/

            layer.open({
                type: 1
                ,title: '一条未读新闻' //不显示标题栏
                ,closeBtn: false
                ,area: '300px;'
                ,shade: 0.8
                ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                ,resize: false
                ,btn: ['前去阅读', '稍后']
                ,btnAlign: 'c'
                ,moveType: 1 //拖拽模式，0或者1
                ,content: "<div style='padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;'>"+'标题：  '+ss.News.nTitle+" <br>"+'概要：  '+ss.News.nSummary+"</div>"
                ,success: function(layero){
                    var btn = layero.find('.layui-layer-btn');
                    btn.find('.layui-layer-btn0').attr({
                        href: "/news/get_news_detail_user?nId="+ss.News.nId
                    });
                }
            });


        },


	});

	goEasy.subscribe({
		channel: "${loginAccount.aId}",
		onMessage: function (message) {
			//alert("Channel:" + message.channel + " content:" + message.content);
			// $("#msg").innerText=message.content;


			layer.msg(message.content+",请重新登录", {time:3000, icon:6}, function () {
				window.location.href = "/login";
			});

		},


	});
	goEasy.subscribe({
		channel: "${loginAccount.aId}",
		onMessage: function (message) {
			//alert("Channel:" + message.channel + " content:" + message.content);
			// $("#msg").innerText=message.content;


			layer.alert(message.content ,{offser:'rt'});

		},


	});

</script>
<!-- 页面头部 /-->