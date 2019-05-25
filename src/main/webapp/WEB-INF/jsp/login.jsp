<%--
  Created by IntelliJ IDEA.
  User: leichengyang
  Date: 2019/4/28 0028
  Time: 上午 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="<%=basePath%>css/common_form.css">
</head>
<body>
<div class="content">
    <img class="content-logo" src="<%=basePath%>img/form_logo.png" alt="logo">
    <h1 class="content-title">登录</h1>
    <div class="content-form">
        <form method="post" action="<%=basePath%>userLogin" onsubmit="">
            <div id="change_margin_1">
                <input class="user" type="text" name="username" placeholder="请输入用户名" onblur="" onfocus="">
            </div>
            <!-- input的value为空时弹出提醒 -->
            <p id="remind_1"></p>
            <div id="change_margin_2">
                <input class="password" type="password" name="password" placeholder="请输入密码" onblur="" onfocus="">
            </div>
            <!-- input的value为空时弹出提醒 -->
            <p id="remind_2"></p>
            <div id="change_margin_3">
                <input class="content-form-signup" type="submit" value="登录">
            </div>
        </form>
    </div>
    <%--<div class="content-login-description">没有账户？</div>--%>
<%--
    <div><a class="content-login-link" href="<%=basePath%>addUser">注册</a></div>
--%>
</div>

</body>
</html>
