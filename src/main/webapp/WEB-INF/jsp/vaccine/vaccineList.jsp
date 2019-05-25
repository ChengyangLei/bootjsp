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
    <title>儿童免疫疫苗接种门诊信息</title>
    <link rel="icon" href="<%=basePath%>/favicon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid" style="text-align: center">

<h3>儿童免疫疫苗接种门诊信息</h3>
    <div>发表单位：武汉市疾控中心</div>
    <div>发表时间：2018-04-11</div>
    <br>

<form action="<%=basePath%>vaccine/getVaccineList">
    <table>
        <tr>
            <td><input type="text" class="form-control" id="name" name="name" placeholder="名称"></td>
            <td>
                <select id="areaName" name="areaName" class="form-control">
                <c:forEach items="${areaList}" var="area">
                    <option>${area}</option>
                </c:forEach>
            </select>
            </td>
            <td><button class="btn btn-default" type="submit">查询</button></td>

        </tr>
    </table>
</form>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenuDivider">
        <li role="separator" class="divider"></li>
    </ul>
    <table class="table table-hover">
        <thead>
        <td>名称</td>
        <td>地址(精确到门牌号)</td>
        <td>电话</td>
        <td>营业时间</td>
        <td>市区</td>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="entity">
            <tr>
                <td>${entity.name}</td>
                <td>${entity.addr}</td>
                <td>${entity.tel}</td>
                <td>${entity.onTime}</td>
                <td>${entity.areaName}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
