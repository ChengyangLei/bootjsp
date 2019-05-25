<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>listall</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</head>
<body>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<jsp:include page="left.jsp" flush="true"></jsp:include>
<div class="container">
    <div><a href="<%=basePath%>addUser">添加</a></div>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>密码</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${userlist}" var="user">

            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td><a href="<%=basePath%>updateUser?id=${user.id}">修改</a></td>
                <td><a href="<%=basePath%>delUser?id=${user.id}">删除</a></td>
            </tr>
        </c:forEach>


        </tbody>
    </table>
</div>

</body>
</html>
