<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">




<title>个人资金管理系统 | 账户列表</title>
<meta name="description" content="AdminLTE2定制版">
<meta name="keywords" content="AdminLTE2定制版">




<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<!-- Font Awesome -->
<!-- Ionicons -->
<!-- iCheck -->
<!-- Morris chart -->
<!-- jvectormap -->
<!-- Date Picker -->
<!-- Daterange picker -->
<!-- Bootstrap time Picker -->
<!--<link rel="stylesheet" href="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.css">-->
<!-- bootstrap wysihtml5 - text editor -->
<!--数据表格-->
<!-- 表格树 -->
<!-- select2 -->
<!-- Bootstrap Color Picker -->
<!-- bootstrap wysihtml5 - text editor -->
<!--bootstrap-markdown-->
<!-- Theme style -->
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<!-- Ion Slider -->
<!-- ion slider Nice -->
<!-- bootstrap slider -->
<!-- bootstrap-datetimepicker -->

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->








<!-- jQuery 2.2.3 -->
<!-- jQuery UI 1.11.4 -->
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<!-- Bootstrap 3.3.6 -->
<!-- Morris.js charts -->
<!-- Sparkline -->
<!-- jvectormap -->
<!-- jQuery Knob Chart -->
<!-- daterangepicker -->
<!-- datepicker -->
<!-- Bootstrap WYSIHTML5 -->
<!-- Slimscroll -->
<!-- FastClick -->
<!-- iCheck -->
<!-- AdminLTE App -->
<!-- 表格树 -->
<!-- select2 -->
<!-- bootstrap color picker -->
<!-- bootstrap time picker -->
<!--<script src="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.js"></script>-->
<!-- Bootstrap WYSIHTML5 -->
<!--bootstrap-markdown-->
<!-- CK Editor -->
<!-- InputMask -->
<!-- DataTables -->
<!-- ChartJS 1.0.1 -->
<!-- FLOT CHARTS -->
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
<!-- jQuery Knob -->
<!-- Sparkline -->
<!-- Morris.js charts -->
<!-- Ion Slider -->
<!-- Bootstrap slider -->
<!-- bootstrap-datetimepicker -->
<!-- 页面meta /-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/select2/select2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">


</head>

<%
    String errorInfo = (String)request.getAttribute("msg");         // 获取错误属性
    if(errorInfo != null) {
%>
<script type="text/javascript" language="javascript">
    alert("<%=errorInfo%>");
    window.location.href="/account/get_all_account"
</script>
<%
    }
%>

<body class="hold-transition skin-yellow-light skin-yellow-light">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header_manage.jsp"></jsp:include>


		<jsp:include page="aside_manage.jsp"></jsp:include>


		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<!-- @@master = admin-layout.html-->
		<!-- @@block = content -->

		<div class="content-wrapper">

			<!-- 内容头部 -->
			<section class="content-header">
				<h1>
					账户管理 <small>账户列表</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
					<li><a href="#">账户管理</a></li>
					<li class="active">账户列表</li>
				</ol>
			</section>
			<!-- 内容头部 /-->

			<!-- 正文区域 -->
			<section class="content">

				<!-- .box-body -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">列表</h3>
					</div>

                    <div class="panel panel-info">
                        <div class="panel-body">
                            <form class="form-inline" action="/account/get_account_select" method="post">

                                <div class="form-group">
                                    <label for="aName">账户名</label>
                                    <input type="text" class="form-control" id="aName" name="aName">
                                </div>
                                <div class="form-group">
                                    <label for="aState">账户状态</label>
									<select class="form-control" id="aState" name="aState">
										<option value="">--请选择--</option>
										<option value="未开户">--未开户--</option>
										<option value="冻结">--冻结--</option>
										<option value="已开户">--已开户--</option>
									</select>
                                </div>
                                <button type="submit" class="btn btn-info">查询</button>

                            </form>

                        </div>
                    </div>
					<div class="box-body">

						<!-- 数据表格 -->
						<div class="table-box">

							<!--工具栏-->
							<div class="pull-left">
								<div class="form-group form-inline">
									<div class="btn-group">
									</div>
								</div>
							</div>

							<!--工具栏/-->

							<!--数据列表-->
							<table id="dataList"
								class="table table-bordered table-striped table-hover dataTable">
								<thead>
									<tr>

										<th class="sorting">账户Id</th>
										<th class="sorting">账户名</th>
										<th class="sorting">卡号</th>
										<th class="sorting">状态</th>
										<th class="text-center">操作</th>
									</tr>
								</thead>
								<tbody>


									<c:forEach items="${pageInfo.list}" var="account">
										<tr>

											<td>${account.aId}</td>
											<td>${account.aName}</td>
											<td>${account.aNumber}</td>
											<td>
													<c:if test="${account.aState=='冻结'}">
														<span class="label label-danger">${account.aState}</span>
													</c:if>
													<c:if test="${account.aState=='未开户'}">
														<span class="label label-info">${account.aState}</span>
													</c:if><c:if test="${account.aState=='已开户'}">
														<span class="label label-success">${account.aState}</span>
													</c:if>
											</td>


											<td class="text-center">
                                                <c:if test="${account.aState=='已开户'}">
                                                    <button type="button" class="btn btn-danger btn-sm" id="update_dj" value="${account.aId}" >冻结</button>
                                                    <button type="button" class="btn btn-info btn-sm disabled"disabled="disabled" id="update_jied" value="${account.aId}">解冻</button>
                                                </c:if>
                                                <c:if test="${account.aState=='未开户'}">
                                                    <button type="button" class="btn btn-success btn-sm"  id="update_kh" value="${account.aId}">开户</button>
                                                </c:if>
                                                <c:if test="${account.aState=='冻结'}">
                                                    <button type="button" class="btn btn-info btn-sm" id="update_jied" value="${account.aId}">解冻</button>
                                                </c:if>
												<button type="button" class="btn bg-light-blue-active btn-sm" id="delete" value="${account.aId}" >删除</button>

											</td>
										</tr>
									</c:forEach>
								</tbody>

							</table>
							<!--数据列表/-->

							<!--工具栏-->
							<div class="pull-left">
								<div class="form-group form-inline">
									<div class="btn-group">


									</div>
								</div>
							</div>
							<div class="box-tools pull-right">

							</div>
							<!--工具栏/-->

						</div>
						<!-- 数据表格 /-->


					</div>
					<!-- /.box-body -->

					<!-- .box-footer-->
					<div class="box-footer">
						<div class="pull-left">
							<div class="form-group form-inline">
								总${pageInfo.pages}页，总共${pageInfo.total}条
							</div>
						</div>


						<div class="box-tools pull-right">
							<ul class="pagination">
								<li><a href="/account/get_all_account?pn=1" aria-label="Previous">首页</a></li>

								<c:if test="${pageInfo.hasPreviousPage}">
									<li><a href="/account/get_all_account?pn=${pageInfo.pageNum-1}"><span aria-hidden="true">&laquo;</span></a></li>
								</c:if>

								<c:forEach items="${pageInfo.navigatepageNums}" var="page_num">

									<c:if test="${page_num == pageInfo.pageNum}">
										<li class="active"><a href="/account/get_all_account?pn=${page_num}">${page_num}</a></li>
									</c:if>
									<c:if test="${page_num != pageInfo.pageNum}">
										<li><a href="/account/get_all_account?pn=${page_num}">${page_num}</a></li>
									</c:if>
								</c:forEach>
								<c:if test="${pageInfo.hasNextPage}">
									<li><a href="/account/get_all_account?pn=${pageInfo.pageNum+1}"><span aria-hidden="true">&raquo;</span></a></li>
								</c:if>

								<li><a href="/account/get_all_account?pn=${pageInfo.pages}" aria-label="Next">尾页</a></li>
							</ul>
						</div>

					</div>
					<!-- /.box-footer-->



				</div>

			</section>
			<!-- 正文区域 /-->

		</div>
		<!-- @@close -->
		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0.8
			</div>
			<strong>Copyright &copy; 2014-2017 <a
				href="http://www.itcast.cn">研究院研发部</a>.
			</strong> All rights reserved.
		</footer>
		<!-- 底部导航 /-->

	</div>


	<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});


		});

		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}

		$(document).ready(function() {

            // 激活导航位置
            setSidebarActive("admin-datalist");

            // 列表按钮
            $("#dataList td input[type='checkbox']").iCheck({
                checkboxClass: 'icheckbox_square-blue',
                increaseArea: '20%'
            });
            // 全选操作
            $("#selall").click(function () {
                var clicks = $(this).is(':checked');
                console.log(clicks)
                if (!clicks) {
                    $("#dataList td input[type='checkbox']").iCheck("uncheck");
                } else {
                    $("#dataList td input[type='checkbox']").iCheck("check");
                }
                $(this).data("clicks", !clicks);

            })

            //批量删此
            $(function () {
                $("#deleteall").click(function () {


                    var custIds = [];
                    var clicks = $("#selall").is(':checked');
                    $("#dataList td input[type='checkbox']").each(function () {
                        var id = $(this).val();
                        custIds.push(id)
                        console.log(custIds)

                    })

                    console.log(custIds)
                    if (clicks) {
                        $.ajax({
                            type: "post",

                            traditional: true,
                            data: {
                                "ids": custIds
                            },
                            url: "/cust/deletallcust",
                            success: function (data) {
                                if (data) {
                                    alert("删除成功")
                                    window.location.reload()
                                } else {
                                    alert("删除失败")
                                }
                            }
                        })
                    }


                })

            });


            //删除
            $('[id=delete]').click(function () {
                var aId = $(this).val();
                console.log(aId)
                $.ajax({
                    type: "get",
                    dataType: "json",
                    url: "/account/delete_account",
                    data: {
                        "aId": aId,
                    },
                    success: function (data) {
                        alert(data.msg)
                        window.location.reload()
                    }
                })
            })


            //开户
            $('[id=update_kh]').click(function () {
                var aId = $(this).val();
				var loadingIndex = "";
                console.log(aId)
                $.ajax({
                    url: "/account/changeState",
                    type: "post",
                    data: {
                        aState: "已开户",
                        aId: aId

                    },
					beforeSend: function () {
						loadingIndex = layer.msg('处理中', {icon: 16});
					},
                    success: function (data) {

                        alert(data.msg);
						layer.close(loadingIndex);
                        window.location.reload();
                    }
                })
            })


            //冻结
            $('[id=update_dj]').click(function () {
                var aId = $(this).val();
				var loadingIndex = "";
                console.log(aId)
                $.ajax({
                    url: "/account/changeState",
                    type: "post",
                    data: {
                        aState: "冻结",
                        aId: aId

                    },
					beforeSend: function () {
						loadingIndex = layer.msg('处理中', {icon: 16});
					},
                    success: function (data) {

                        alert(data.msg);
						layer.close(loadingIndex);
                        window.location.reload();
                    }
                })
            })


            //解冻
            $('[id=update_jied]').click(function () {
                var aId = $(this).val();
				var loadingIndex = "";
                console.log(aId)
                $.ajax({
                    url: "/account/changeState",
                    type: "post",
                    data: {
                        aState: "已开户",
                        aId: aId

                    },
					beforeSend: function () {
						loadingIndex = layer.msg('处理中', {icon: 16});
					},
                    success: function (data) {

                        alert(data.msg);
						layer.close(loadingIndex);
                        window.location.reload();
                    }
                })
            })

        });






	</script>
</body>

</html>