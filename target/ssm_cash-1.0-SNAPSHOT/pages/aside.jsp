<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/img/user1-128x128.jpg"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>${loginAccount.aName}</p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>


		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="treeview"><a
				href="/account_main"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>

			<li class="treeview"><a href="/account/profile?id=${loginAccount.aId}"> <i class="fa fa-cogs"></i>
					<span>个人中心</span>
			</a>

			<li id="treeview" class="active"><a href="/record?id=${loginAccount.aId}">
			<i class="fa fa-cogs"></i>
			<span>交易记录</span></a></li>





			<li class="treeview"><a href="#"> <i class="fa fa-money"></i>
				<span>资金管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
							href="/toInmoney?id=${loginAccount.aId}">
						<i class="fa fa-circle-o"></i> 存款
					</a></li>
					<li id="system-setting"><a
							href="/toOutmoney?id=${loginAccount.aId}"> <i
							class="fa fa-circle-o"></i> 取款
					</a></li>

					<li id="system-setting"><a
							href="/totransfer?id=${loginAccount.aId}"> <i
							class="fa fa-circle-o"></i> 转账
					</a></li>

				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa fa-money"></i>
				<span>阅读新闻</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">


					<li id="system-setting"><a
							href="/news/get_all_news_user"> <i
							class="fa fa-circle-o"></i> 新闻列表
					</a></li>

				</ul></li>



		</ul>
	</section>
	<!-- /.sidebar -->
</aside>

