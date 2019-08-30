<%--
  Created by IntelliJ IDEA.
  User: 葬爱虎
  Date: 2019/8/13
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="item-inner">

    <input type="text" name="code" style="width:134px;  height:27px;"><img src="/getVerifyCode" style="margin-left:5px" id="Img" onclick="changeCode()"></p>
    <input type="button" value="确定" id="login_btn"/>
    <button onclick="yanzheng()">验证</button>
</div>

<script  type="text/javascript" src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script>

    function genTimestamp() {
        var time = new Date();
        return time.getTime();
    }
    function changeCode() {
        $("#Img").attr("src", "/getVerifyCode?t=" + genTimestamp());
    }

    function yanzheng()
    {
        var code= $("input[name='code']").val();
        $.ajax({

            type:"POST",
            url:"/login_sub",
            data:{
                code:code
            },
            success:function (data) {
                alert(data.map.msg)
            }

        })
    }

</script>
</body>
</html>
