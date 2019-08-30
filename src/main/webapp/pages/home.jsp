<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<script src="http://cdn-hangzhou.goeasy.io/goeasy.js"></script>
<script>
    var goEasy = new GoEasy({
        appkey: "BC-acceba1db96d4f80a9e439e86b4c3600"
    });
    goEasy.subscribe({
        channel: "新闻",
        onMessage: function (message) {
            alert("Channel:" + message.channel + " content:" + message.content);
        }
    });

</script>
<body>
<!-- ship是我的项目名-->
<form action="/websocket/login">
    登录名：<input type="text" name="username"/>
    <input type="submit" value="登录"/>
</form>
</body>

</html>