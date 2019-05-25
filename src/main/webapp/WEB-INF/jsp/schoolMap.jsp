<%@ page import="com.huotn.bootjsp.bootjsp.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: leichengyang
  Date: 2019/5/24
  Time: 下午 3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>武汉市教育局发布幼儿园一览</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8"/>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
    <style type="text/css">
        body, html {
            width: 100%;
            height: 100%;
            margin: 0;
            font-family: "微软雅黑";
        }

        #l-map {
            height: 100%;
            width: 100%;
        }

        #r-result {
            width: 100%;
            font-size: 14px;
            line-height: 20px;
        }

        #float-layer {
            width: 300px;
            height: 100px;
            top: 30px;
            left: 30px;
            position: absolute;
            z-index: 9999;
            border: 1px solid blue;
            background-color: #FFFFFF;
        }

        #float-search-layer {
            width: 300px;
            height: 50px;
            top: 30px;
            right: 30px;
            position: absolute;
            z-index: 9999;
            border: 1px solid blue;
            background-color: #FFFFFF;
        }

        #input-search, button-search {
            height: 30px;
        }

        h3 {
            text-align: center;
        }
        .sub_title{
            text-align: center;
        }

    </style>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <script src="./media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=2.0&ak=F7Af5OCDq1wyR3iw3HXLCQzDvLEdSIes"></script>
</head>
<body>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="container-fluid">

    <%--<div id="float-layer">--%>
    <%--<div class="container-fluid" style="height:20%;z-index: 999">--%>
    <%--<p>--%>
    <%--武汉市教育局发布幼儿园一览--%>
    <%--商务合作请联系：--%>
    <%--电话：15871439226--%>
    <%--QQ：779688036--%>
    <%--</p>--%>
    <%--</div>--%>

        <h3>武汉市教育局发布幼儿园一览</h3>
        <div class="sub_title">发表单位：武汉市教育局   发表时间：2018-04-11  联系方式：QQ：779688036  电话：15871439226</div>
        <div><a href="<%=basePath%>school/schoolList">表格查看</a></div>
        <br>
    <table>
        <tr>
            <%--<input type="text" id="input-search">--%>
            <td><input type="text" class="form-control" id="input-search" name="input-search" placeholder="名称"></td>
            <td>
                <button class="btn btn-default" onclick="buttonSearch()" type="submit">搜索</button>
            </td>
        </tr>
        <%--<input type="button" id="button-search" value="搜索" onclick="buttonSearch()">--%>
    </table>
    <%--<div id="r-result">--%>
    <%--<input type="button" value="批量地址解析" onclick="bdGEO()" />--%>
    <%--<div id="result"></div>--%>
    <%--</div>--%>
    <div id="l-map"></div>
</div>

</body>
</html>
<script type="text/javascript">
    $(function () {
        bdGEO();
    });


    // 百度地图API功能
    var map = new BMap.Map("l-map");
    map.centerAndZoom(new BMap.Point(114.311831, 30.598739), 13);
    map.enableScrollWheelZoom(true);
    var index = 0;
    var myGeo = new BMap.Geocoder();

    var list = "${list}";
    list = list.replace(/\[|]/g, '');
    var adds = list.split(",");


    function buttonSearch() {
        var input_search_value = $("#input-search").val();
        $.ajax({
            type: "POST",
            url: "<%=basePath%>school/getListByName",
            dataType: "json",
            data: {name: input_search_value},
            success: function (data) {
                map.clearOverlays(adds);
                adds = data;
                index = 0;
                bdGEO();
            },
            error: function (jqXHR) {
                console.log("Error: " + jqXHR.status);
            }
        });
    }

    // var adds = [
    //     "包河区金寨路1号（金寨路与望江西路交叉口）",
    //     "庐阳区凤台路209号（凤台路与蒙城北路交叉口）",
    //     "蜀山区金寨路217号(近安医附院公交车站)",
    //     "蜀山区梅山路10号(近安徽饭店) ",
    //     "蜀山区 长丰南路159号铜锣湾广场312室",
    //     "合肥市寿春路93号钱柜星乐町KTV（逍遥津公园对面）",
    //     "庐阳区长江中路177号",
    //     "新站区胜利路89"
    // ];
    function bdGEO() {
        var add = adds[index];
        geocodeSearch(add);
        index++;
    }

    function geocodeSearch(add) {
        if (index < adds.length) {
            setTimeout(window.bdGEO, 400);
        }
        myGeo.getPoint(add, function (point) {
            if (point) {
                // document.getElementById("result").innerHTML +=  index + "、" + add + ":" + point.lng + "," + point.lat + "</br>";
                var address = new BMap.Point(point.lng, point.lat);
                addMarker(address, new BMap.Label(index + ":" + add, {offset: new BMap.Size(20, -10)}));
            }
        }, "武汉市");
    }

    // 编写自定义函数,创建标注
    function addMarker(point, label) {
        var marker = new BMap.Marker(point);
        map.addOverlay(marker);
        // marker.setLabel(label);
    }
</script>