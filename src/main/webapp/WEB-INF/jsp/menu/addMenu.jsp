<%--
  Created by IntelliJ IDEA.
  User: leichengyang
  Date: 2019/4/28 0028
  Time: 上午 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="../header.jsp" flush="true"></jsp:include>
<form action="<%=basePath%>menu/saveMenu">
    <p>菜单名：<input type="text" id="name" name="name"></p>
    <p>父级：<input type="text" id="pid" name="pid"></p>
    <p>排序：<input type="text" id="sort" name="sort"></p>
    <p>url：<input type="text" id="url" name="url"></p>
    <p><input type="submit" value="保存"></p>



</form>
</body>
</html>
