
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>个人资金管理系统 | Log in</title>


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

<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">


        <a href="all-admin-index.html"><b>"互联网+"</b>个人资金管理系统</a>


    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">登录系统</p>

        <form action="login" method="post">
            <div class="form-group has-feedback">
                <input id="name" type="text" name="name" class="form-control" placeholder="UserCode">
                <span class="glyphicon glyphicon-barcode form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input id="password" type="password" name="password" class="form-control" placeholder="Password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <div>
                    <input type="text" name="code" class="form-control">
                </div>

                <div class="col-md-offset-9">
                    <img src="/getVerifyCode" style="margin-left:5px" id="Img" onclick="changeCode()">
                </div>


            </div>
            <div class="row">

                <div class="col-xs-8">
                    <span  id="logintip"></span>
                </div>

                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="button" onclick="dologin()" class="btn btn-primary btn-block btn-flat">登录</button>
                </div>
                <!-- /.col -->
            </div>

        </form>

        <a href="/register" class="text-center">新用户注册</a>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 2.2.3 -->
<!-- Bootstrap 3.3.6 -->
<!-- iCheck -->
<script  type="text/javascript" src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<%--layer插件解决弹出框美观等问题--%>
<script src="${pageContext.request.contextPath}/layer/layer.js"></script>

<script type="text/javascript">
    $(function() {
        $('input').iCheck({


            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
        $("#logintip").val()

    })


    function genTimestamp() {
        var time = new Date();
        return time.getTime();
    }
    function changeCode() {
        $("#Img").attr("src", "/getVerifyCode?t=" + genTimestamp());
    }
    function dologin() {
        //1.首先进行非空校验
        var loginacct = $("#name").val();
        if (loginacct == "") {
            //alert("用户名账号不能为空，请输入.");
            layer.msg("用户名账号不能为空，请输入.", {time: 2000, icon: 5, shift: 6}, function () {
            });
            return;
        }
        var pswd = $("#password").val();
        if (pswd == "") {
            //alert("用户名密码不能为空，请输入.");
            layer.msg("用户名密码不能为空，请输入.", {time: 2000, icon: 5, shift: 6}, function () {
            });
            return;
        }
        var loadingIndex = "";
        var code= $("input[name='code']").val();
        //$("#loginForm").submit();
        //使用ajax提交数据
        $.ajax({
            type: "POST",
            url: "doAjaxlogin",
            data: {
                "aName": loginacct,
                "aPassword": pswd,
                "code":code
            },
            beforeSend: function () {
                loadingIndex = layer.msg('处理中', {icon: 16});
            },
            success: function (result) {

                if (result.code==100) {
                    if (result.map.account.role=="用户") {
                    window.location.href = "account_main";
                    }else{
                        window.location.href ="manage_main";
                    }
                } else {
                  alert(result.map.msg)
                }
                layer.close(loadingIndex);
            }
        })
    }


</script>
</body>

</html>