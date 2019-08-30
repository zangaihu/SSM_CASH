<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/30
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>个人资金管理系统 | Register </title>


    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- Theme style -->
    <!-- iCheck -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
</head>

<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">


        <a href="all-admin-index.html"><b>"互联网+"</b>个人资金管理系统</a>


    </div>

    <div class="register-box-body">
        <p class="login-box-msg">新用户注册</p>

        <form id="registForm" action="all-admin-index.html" method="get">
            <div class="form-group has-feedback">
                <input id="regname" type="text" class="form-control" placeholder="name">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                <h5 style="color: red;">${sessionScope.errorMsg}</h5>
    </div>

            <div class="form-group has-feedback">
                <input id="email" type="email" class="form-control" placeholder="Email">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>

            <div class="form-group has-feedback">
                <input id="phone" type="text" class="form-control" placeholder="phone">
                <span class="glyphicon glyphicon-phone form-control-feedback"></span>
            </div>

            <div class="form-group has-feedback">
                <input id="identity" type="text" class="form-control" placeholder="identity">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>

            <div class="form-group has-feedback">
                <input id="password1" type="password" class="form-control" placeholder="password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>

            <div class="form-group has-feedback">
                <input id="password2" type="password" class="form-control" placeholder="confirmPswd">
                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input id="checkbox" type="checkbox"> 我同意 <a href="#">协议</a>
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="button" onclick="doregister()" class="btn btn-primary btn-block btn-flat">注册</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

        <a href="/login" class="text-center">我有账号，现在就去登录</a>
    </div>
    <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 2.2.3 -->
<!-- Bootstrap 3.3.6 -->
<!-- iCheck -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<%--layer插件解决弹出框美观等问题--%>
<script src="${pageContext.request.contextPath}/layer/layer.js"></script>
<script  type="text/javascript">
    $(function() {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
    function doregister() {
         //1.首先进行非空校验
        var loginacct = $("#regname").val();
        if (loginacct == "") {
            //alert("用户名账号不能为空，请输入.");
            layer.msg("用户名账号不能为空，请输入.", {time: 2000, icon: 5, shift: 6}, function () {
            });
            return;
        }

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

        var pswd1 = $("#password1").val();
        if (pswd1 == "") {
            //alert("用户名密码不能为空，请输入.");
            layer.msg("用户名密码不能为空，请输入.", {time: 2000, icon: 5, shift: 6}, function () {
            });
            return;
        }
        var pswd2 = $("#password2").val();
        if (pswd2 == "") {
            //alert("用户名密码不能为空，请输入.");
            layer.msg("确认密码不能为空，请输入.", {time: 2000, icon: 5, shift: 6}, function () {
            });
            return;
        }
        if (pswd1 != pswd2) {
            layer.msg("两次输入的密码不相同，请确入.", {time: 2000, icon: 5, shift: 6}, function () {
            });
            return;
        }
        var checkbox = $("#registForm :checked");
        if (checkbox.length == 0){
            layer.msg("请勾选同意协议", {time:1000, icon:5, shift:6}, function () {
            });
            return;
        }

        var loadingIndex = "";
        //使用ajax提交数据

        $.ajax({
            type: "POST",
            url: "Regist",
            data: {
                "aName": loginacct,
                "aPassword": pswd1,
                "aPhone":phone,
                "aEmail":email,
                "aIdentity":identity
            },
            beforeSend: function () {
                loadingIndex = layer.msg('处理中,时间较长', {icon: 16});
            },
            success: function (result) {
                layer.close(loadingIndex);
                if (result.code==100) {
                    alert(result.map.msg)
                    window.location.href = "login";
                    alert("邮件已发送，请去激活")
                } else {
                    alert(result.map.msg)
                    window.location.reload()

                }
            }
        })
    }
</script>
</body>

</html>


