<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>个人资金管理系统 | 欢迎使用</title>
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
</head>

<body class="hold-transition skin-red-light sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <%--		<c:if test="${sessionScope.employee.post=='管理员'}">--%>
    <%--			<jsp:include page="aside.jsp"></jsp:include>--%>
    <%--		</c:if>--%>
    <%--		<c:if test="${sessionScope.employee.post=='员工'}">--%>
    <%--			<jsp:include page="aside-emp.jsp"></jsp:include>--%>
    <%--		</c:if>--%>
    <%--		<c:if test="${sessionScope.employee.post=='经理'}">--%>
    <%--			<jsp:include page="aside-leader.jsp"></jsp:include>--%>
    <%--		</c:if>--%>
    <jsp:include page="aside.jsp"></jsp:include>
    <%--<c:if test="${sessionScope.employee.post=='总经理'}">
        <jsp:include page="aside-manage.jsp"></jsp:include>
    </c:if>
    <c:if test="${sessionScope.employee.post=='员工'}">
        <jsp:include page="aside-emp.jsp"></jsp:include>
    </c:if>
    <c:if test="${sessionScope.employee.post=='财务'}">
        <jsp:include page="aside-cash.jsp"></jsp:include>
    </c:if>
    <c:if test="${sessionScope.employee.post=='部门经理'}">
        <jsp:include page="aside-leader.jsp"></jsp:include>
    </c:if>--%>

    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <%--			<img src="${pageContext.request.contextPath}/img/center.jpg"--%>
        <%--				width="100%" height="100%" />--%>
            <section class="content-header">
                <h1>
                    个人信息中心
                    <small>信息表单</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="/main"><i class="fa fa-dashboard"></i> 首页</a></li>
                    <li class="active">个人中心</li>
                </ol>
            </section>

        <section class="content">
            <form id="accountForm">
                <div class="nav-tabs-custom">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-common">
                            <div class="row data-type">



                                <div class="col-md-2 title">用户名</div>
                                <div class="col-md-10 data">
                                    <input type="text" class="form-control" placeholder="用户名" value="${account.aName}" disabled>
                                </div>

                                <div class="col-md-2 title">银行卡账号</div>
                                <div class="col-md-4 data">
                                    <input type="text" class="form-control" placeholder="银行卡号" value="${account.aNumber}" disabled>
                                </div>

                                <div class="col-md-2 title">用户状态</div>
                                <div class="col-md-4 data">
                                    <input type="text" class="form-control" placeholder="用户状态" value="${account.aState}" disabled>
                                </div>



                                <div class="col-md-2 title">电话</div>
                                <div class="col-md-4 data">
                                    <input id="phone" type="text" name="aPhone" class="form-control" placeholder="电话" value="${account.aPhone}">
                                </div>

                                <div class="col-md-2 title">身份证号码</div>
                                <div class="col-md-4 data">
                                    <input id="identity" type="text" name="aIdentity" class="form-control" placeholder="身份证号" value="${account.aIdentity}">
                                </div>

                                <div class="col-md-2 title">邮箱</div>
                                <div class="col-md-4 data">
                                    <input  id="email" type="email" name="aEmail" class="form-control" placeholder="邮箱" value="${account.aEmail}">
                                </div>

                                <div class="col-md-2 title">余额</div>
                                <div class="col-md-4 data">
                                    <div class="input-group">
                                        <input type="text" class="form-control" value="${account.money}"disabled>
                                        <span class="input-group-addon">.00</span>
                                    </div>
                                </div>

                                <div class="col-md-2 title">创建日期</div>
                                <div class="col-md-4 data">
                                    <div class="input-group">
                                    <input type="text" class="form-control" placeholder="创建日期" value=" <fmt:formatDate pattern="yyyy-MM-dd" value="${account.createtime}"></fmt:formatDate>"disabled>
                                    </div>
                                </div>
                                <div class="col-md-6"></div>

                                <div class="col-md-2 title"></div>
                                <div class="col-md-10 data text-center">
                                    <button type="button" class="btn bg-maroon" id="updateBtn">修改</button>
                                    <button type="button" class="btn bg-default"  id="resetBtn">重置</button>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </form>
        </section>

    </div>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>Copyright &copy; 2019-2099 <a
                href="http://www.itcast.cn">sh</a>.
        </strong> All rights reserved. </footer>
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
<%--layer插件解决弹出框美观等问题--%>
<script src="${pageContext.request.contextPath}/layer/layer.js"></script>
<script>
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale : 'zh-CN'
        });
    });

    function closemodal() {
        $("#myModal").css("display","none")

    }

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
        setSidebarActive("admin-index");
    });
    $("#updateBtn").click(function () {
        //Session.clear();
        var email = $("#email").val();
        if (email == "") {
            //alert("用户名账号不能为空，请输入.");
            layer.msg("邮箱不能为空，请输入.", {time: 2000, icon: 5, shift: 6}, function () {
            });
            return;
        }
        var reg = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
        if(!reg.test(email))
        {
            layer.msg("邮箱格式不正确，请输入.", {time: 2000, icon: 5, shift: 3}, function () {
            });
            return;
        }

        var phone = $("#phone").val();
        if (phone == "") {
            //alert("用户名账号不能为空，请输入.");
            layer.msg("电话不能为空，请输入.", {time: 2000, icon: 5, shift: 6}, function () {
            });
            return;
        }
        var identity = $("#identity").val();
        if (identity == "") {
            //alert("用户名账号不能为空，请输入.");
            layer.msg("身份证号码不能为空，请输入.", {time: 2000, icon: 5, shift: 6}, function () {
            });
            return;
        }
        $.ajax({
            type: "POST",
            url: "/account/Update",
            data: {
                "aId":${account.aId},
                "aPhone":phone,
                "aEmail":email,
                "aIdentity":identity
            },
            beforeSend: function () {
                loadingIndex = layer.msg('处理中', {icon: 16});
            },
            success: function (result) {
                //layer.close(loadingIndex);
                if (result.code==100) {
                    alert(result.msg);
                    window.location.href = "/account/profile?id="+${account.aId};
                } else {
                    alert(result.msg);
                }
                layer.close(loadingIndex);
            }
        })


    })

    $("#resetBtn").click(function () {
        // jquery对象中没有reset方法，但是DOM对象中有，需要将jqeury对象转换成DOM对象，只需要加个[0]即可。
        $("#accountForm")[0].reset();
    })
</script>
</body>

</html>