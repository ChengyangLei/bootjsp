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
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    %>
    <style type="text/css">
        .block-cls {
            /*background-color: green;*/
            width: 100px;
            height: 80px;
            float: left;
            margin-left: 5px;
            background-image: url("<%=basePath%>img/timg.jpg");
            color: white;
            font-family: "Adobe 宋体 Std L";
            font-size: 10px;
        }

        .left-content-cls{
            float: left;
            height:100%;
        }


    </style>
</head>
<body>

<jsp:include page="../header.jsp" flush="true"></jsp:include>
<div class="container">
    <div><a href="<%=basePath%>land/addLand">添加</a></div>
        <c:forEach items="${landlist}" var="land">
            <div class="block-cls">
                <div>${land.owner}拥有土地：${land.name} ${land.area}亩</div>
            </div>
        </c:forEach>
</div>

</body>
</html>
