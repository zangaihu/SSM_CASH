<%--
  Created by IntelliJ IDEA.
  User: 葬爱虎
  Date: 2019/7/30
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script
            src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script
            src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>

    <script src="http://cdn-hangzhou.goeasy.io/goeasy.js"></script>
    <script>
        var goEasy = new GoEasy({
            appkey: "BC-acceba1db96d4f80a9e439e86b4c3600"
        });
        goEasy.subscribe({
            channel: "新闻",
            onMessage: function (message) {
                alert("Channel:" + message.channel + " content:" + message.content);
                // $("#msg").innerText=message.content;
                document.getElementById("msg").innerText=message.content;

            }
        });

    </script>
</head>
<body>

<span id="msg"></span>

</body>
</html>
