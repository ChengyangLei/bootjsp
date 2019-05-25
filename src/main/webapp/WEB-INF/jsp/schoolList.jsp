<%--
  Created by IntelliJ IDEA.
  User: leichengyang
  Date: 2019/6/28 0028
  Time: 上午 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
    <title>武汉市教育局发布幼儿园一览</title>
    <link rel="icon" href="<%=basePath%>/favicon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid" style="text-align: center">

<h3>武汉市教育局发布幼儿园一览</h3>
    <div>发表单位：武汉市教育局</div>
    <div>发表时间：2018年4月13日</div>
    <br>

<form action="<%=basePath%>school/getSchoolListByParam">
    <table>
        <tr>
            <td><input type="text" class="form-control" id="name" name="name" placeholder="名称"></td>
            <td><button class="btn btn-default" type="submit">查询</button></td>

        </tr>
    </table>
</form>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenuDivider">
        <li role="separator" class="divider"></li>
    </ul>
    <table class="table table-hover">
        <thead>
        <td>学校代码</td>
        <td>学校名称</td>
        <td>办学类型</td>
        <td>举办者</td>
        <td>学校地址</td>
        <td>电话</td>
        <td>校长</td>
        <td>普惠性（是/否）</td>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="entity">
            <tr>
                <td>${entity.code}</td>
                <td>${entity.name}</td>
                <td>${entity.type}</td>
                <td>${entity.master}</td>
                <td>${entity.address}</td>
                <td>${entity.mobile}</td>
                <td>${entity.teacher}</td>
                <td>${entity.gernaral}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
