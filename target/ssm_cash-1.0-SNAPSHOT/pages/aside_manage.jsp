<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/img/user2-160x160.jpg"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>${sessionScope.existUser.userName}</p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>

			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
					<span>账户管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>


			</a>
				<ul class="treeview-menu">

					<li ><a
						href="${pageContext.request.contextPath}/account/get_all_account"> <i
							class="fa fa-circle-o"></i> 所有账户列表
					</a></li>
					<li ><a
						href="/account/get_dj_account"> <i
							class="fa fa-circle-o"></i> 冻结账户
					</a></li>
					<li ><a
						href="/account/get_wkh_account"> <i
							class="fa fa-circle-o"></i> 未开户账户
					</a></li>

				</ul></li>



			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
					<span>账户信息</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li ><a
						href="${pageContext.request.contextPath}/account/get_detail"> <i
							class="fa fa-circle-o"></i> 所有账户信息
					</a></li>


				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
					<span>新闻管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li ><a
						href="${pageContext.request.contextPath}/news/get_all_news"> <i
							class="fa fa-circle-o"></i> 新闻列表
					</a></li>

					<li ><a
						href="${pageContext.request.contextPath}/news/go_add_news"> <i
							class="fa fa-circle-o"></i> 发布新闻
					</a></li>
					<li ><a
						href="${pageContext.request.contextPath}/news/sendmsg"> <i
							class="fa fa-circle-o"></i> 测试发布新闻
					</a></li>


				</ul></li>

		</ul>
	</section>
	<!-- /.sidebar -->
</aside>