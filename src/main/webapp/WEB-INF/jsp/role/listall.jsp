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
<jsp:include page="../header.jsp" flush="true"></jsp:include>
<div class="container">
    <div><a href="<%=basePath%>role/addRole">添加</a></div>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>编号</th>
            <th>角色名称</th>
            <th>类型</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${list}" var="role">

            <tr>
                <td>${role.id}</td>
                <td>${role.name}</td>
                <td>${role.type}</td>
                <td><a href="<%=basePath%>role/delRole?id=${user.id}">删除</a></td>
            </tr>
        </c:forEach>


        </tbody>
    </table>
</div>

</body>
</html>
