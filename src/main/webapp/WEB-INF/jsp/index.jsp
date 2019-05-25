<%@ page import="com.huotn.bootjsp.bootjsp.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: leichengyang
  Date: 2019/4/28 0028
  Time: 上午 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="media/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/daterangepicker.css" rel="stylesheet" type="text/css" />
    <link href="media/css/fullcalendar.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- END PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="media/image/favicon.ico" />

</head>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    User user = (User) request.getSession().getAttribute("user");
%>
<body class="page-header-fixed">

<%--<div class="left-menu-cls">

<p><a href="<%=basePath%>findAll">用户列表</a></p>
<p><a href="<%=basePath%>land/findAll">土地列表</a></p>
<p><a href="<%=basePath%>role/findAll">角色列表</a></p>
</div>--%>
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="navbar-inner">
        <div class="container-fluid">
            <jsp:include page="header.jsp" flush="true"></jsp:include>
        </div>
    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar nav-collapse collapse">
        <%--左侧菜单--%>
            <jsp:include page="left.jsp" flush="true"></jsp:include>
        <!-- END SIDEBAR MENU -->
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN PAGE -->
    <div class="page-content">
        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
        <div id="portlet-config" class="modal hide">
            <div class="modal-header">
                <button data-dismiss="modal" class="close" type="button"></button>
                <h3>Widget Settings</h3>
            </div>
            <div class="modal-body">
                Widget settings form goes here
            </div>
        </div>
        <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
        <!-- BEGIN PAGE CONTAINER-->
        <div class="container-fluid">
        <%--主题设置--%>
            <!-- BEGIN PAGE HEADER-->
            <div class="row-fluid">
                <div class="span12">
                    <!-- BEGIN STYLE CUSTOMIZER -->
                    <div class="color-panel hidden-phone">
                        <div class="color-mode-icons icon-color"></div>
                        <div class="color-mode-icons icon-color-close"></div>
                        <div class="color-mode">
                            <p>THEME COLOR</p>
                            <ul class="inline">
                                <li class="color-black current color-default" data-style="default"></li>
                                <li class="color-blue" data-style="blue"></li>
                                <li class="color-brown" data-style="brown"></li>
                                <li class="color-purple" data-style="purple"></li>
                                <li class="color-grey" data-style="grey"></li>
                                <li class="color-white color-light" data-style="light"></li>
                            </ul>
                            <label>
                                <span>Layout</span>
                                <select class="layout-option m-wrap small">
                                    <option value="fluid" selected>Fluid</option>
                                    <option value="boxed">Boxed</option>
                                </select>
                            </label>
                            <label>
                                <span>Header</span>
                                <select class="header-option m-wrap small">
                                    <option value="fixed" selected>Fixed</option>
                                    <option value="default">Default</option>
                                </select>
                            </label>
                            <label>
                                <span>Sidebar</span>
                                <select class="sidebar-option m-wrap small">
                                    <option value="fixed">Fixed</option>
                                    <option value="default" selected>Default</option>
                                </select>
                            </label>
                            <label>
                                <span>Footer</span>
                                <select class="footer-option m-wrap small">
                                    <option value="fixed">Fixed</option>
                                    <option value="default" selected>Default</option>
                                </select>
                            </label>
                        </div>
                    </div>
                    <!-- END BEGIN STYLE CUSTOMIZER -->
                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                    <h3 class="page-title">
                        Dashboard <small>statistics and more</small>
                    </h3>
                    <ul class="breadcrumb">
                        <li>
                            <i class="icon-home"></i>
                            <a href="index.html">Home</a>
                            <i class="icon-angle-right"></i>
                        </li>
                        <li><a href="#">Dashboard</a></li>
                        <li class="pull-right no-text-shadow">
                            <div id="dashboard-report-range" class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive" data-tablet="" data-desktop="tooltips" data-placement="top" data-original-title="Change dashboard date range">
                                <i class="icon-calendar"></i>
                                <span></span>
                                <i class="icon-angle-down"></i>
                            </div>
                        </li>
                    </ul>
                    <!-- END PAGE TITLE & BREADCRUMB-->
                </div>
            </div>
            <!-- END PAGE HEADER-->
            <%--仪表盘--%>
            <div id="dashboard">
                <!-- BEGIN DASHBOARD STATS -->
                <div class="row-fluid">
                    <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                        <div class="dashboard-stat blue">
                            <div class="visual">
                                <i class="icon-comments"></i>
                            </div>
                            <div class="details">
                                <div class="number">
                                    1349
                                </div>
                                <div class="desc">
                                    New Feedbacks
                                </div>
                            </div>
                            <a class="more" href="#">
                                View more <i class="m-icon-swapright m-icon-white"></i>
                            </a>
                        </div>
                    </div>
                    <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                        <div class="dashboard-stat green">
                            <div class="visual">
                                <i class="icon-shopping-cart"></i>
                            </div>
                            <div class="details">
                                <div class="number">549</div>
                                <div class="desc">New Orders</div>
                            </div>
                            <a class="more" href="#">
                                View more <i class="m-icon-swapright m-icon-white"></i>
                            </a>
                        </div>
                    </div>
                    <div class="span3 responsive" data-tablet="span6  fix-offset" data-desktop="span3">
                        <div class="dashboard-stat purple">
                            <div class="visual">
                                <i class="icon-globe"></i>
                            </div>
                            <div class="details">
                                <div class="number">+89%</div>
                                <div class="desc">Brand Popularity</div>
                            </div>
                            <a class="more" href="#">
                                View more <i class="m-icon-swapright m-icon-white"></i>
                            </a>
                        </div>
                    </div>
                    <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                        <div class="dashboard-stat yellow">
                            <div class="visual">
                                <i class="icon-bar-chart"></i>
                            </div>
                            <div class="details">
                                <div class="number">12,5M$</div>
                                <div class="desc">Total Profit</div>
                            </div>
                            <a class="more" href="#">
                                View more <i class="m-icon-swapright m-icon-white"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- END DASHBOARD STATS -->
                <div class="clearfix"></div>
                <div class="row-fluid">
                    <div class="span6">
                        <!-- BEGIN PORTLET-->
                        <div class="portlet solid bordered light-grey">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-bar-chart"></i>Site Visits</div>
                                <div class="tools">
                                    <div class="btn-group pull-right" data-toggle="buttons-radio">
                                        <a href="" class="btn mini">Users</a>
                                        <a href="" class="btn mini active">Feedbacks</a>
                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div id="site_statistics_loading">
                                    <img src="media/image/loading.gif" alt="loading" />
                                </div>
                                <div id="site_statistics_content" class="hide">
                                    <div id="site_statistics" class="chart"></div>
                                </div>
                            </div>
                        </div>
                        <!-- END PORTLET-->
                    </div>
                    <div class="span6">
                        <!-- BEGIN PORTLET-->
                        <div class="portlet solid light-grey bordered">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-bullhorn"></i>Activities</div>
                                <div class="tools">
                                    <div class="btn-group pull-right" data-toggle="buttons-radio">
                                        <a href="" class="btn blue mini active">Users</a>
                                        <a href="" class="btn blue mini">Orders</a>
                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div id="site_activities_loading">
                                    <img src="media/image/loading.gif" alt="loading" />
                                </div>
                                <div id="site_activities_content" class="hide">
                                    <div id="site_activities" style="height:100px;"></div>
                                </div>
                            </div>
                        </div>
                        <!-- END PORTLET-->
                        <!-- BEGIN PORTLET-->
                        <div class="portlet solid bordered light-grey">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-signal"></i>Server Load</div>
                                <div class="tools">
                                    <div class="btn-group pull-right" data-toggle="buttons-radio">
                                        <a href="" class="btn red mini active">
                                            <span class="hidden-phone">Database</span>
                                            <span class="visible-phone">DB</span></a>
                                        <a href="" class="btn red mini">Web</a>
                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div id="load_statistics_loading">
                                    <img src="media/image/loading.gif" alt="loading" />
                                </div>
                                <div id="load_statistics_content" class="hide">
                                    <div id="load_statistics" style="height:108px;"></div>
                                </div>
                            </div>
                        </div>
                        <!-- END PORTLET-->
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="row-fluid">
                    <div class="span6">
                        <div class="portlet box purple">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-calendar"></i>General Stats</div>
                                <div class="actions">
                                    <a href="javascript:;" class="btn yellow easy-pie-chart-reload"><i class="icon-repeat"></i> Reload</a>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="row-fluid">
                                    <div class="span4">
                                        <div class="easy-pie-chart">
                                            <div class="number transactions"  data-percent="55"><span>+55</span>%</div>
                                            <a class="title" href="#">Transactions <i class="m-icon-swapright"></i></a>
                                        </div>
                                    </div>
                                    <div class="margin-bottom-10 visible-phone"></div>
                                    <div class="span4">
                                        <div class="easy-pie-chart">
                                            <div class="number visits"  data-percent="85"><span>+85</span>%</div>
                                            <a class="title" href="#">New Visits <i class="m-icon-swapright"></i></a>
                                        </div>
                                    </div>
                                    <div class="margin-bottom-10 visible-phone"></div>
                                    <div class="span4">
                                        <div class="easy-pie-chart">
                                            <div class="number bounce"  data-percent="46"><span>-46</span>%</div>
                                            <a class="title" href="#">Bounce <i class="m-icon-swapright"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span6">
                        <div class="portlet box blue">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-calendar"></i>Server Stats</div>
                                <div class="tools">
                                    <a href="" class="collapse"></a>
                                    <a href="#portlet-config" data-toggle="modal" class="config"></a>
                                    <a href="" class="reload"></a>
                                    <a href="" class="remove"></a>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="row-fluid">
                                    <div class="span4">
                                        <div class="sparkline-chart">
                                            <div class="number" id="sparkline_bar"></div>
                                            <a class="title" href="#">Network <i class="m-icon-swapright"></i></a>
                                        </div>
                                    </div>
                                    <div class="margin-bottom-10 visible-phone"></div>
                                    <div class="span4">
                                        <div class="sparkline-chart">
                                            <div class="number" id="sparkline_bar2"></div>
                                            <a class="title" href="#">CPU Load <i class="m-icon-swapright"></i></a>
                                        </div>
                                    </div>
                                    <div class="margin-bottom-10 visible-phone"></div>
                                    <div class="span4">
                                        <div class="sparkline-chart">
                                            <div class="number" id="sparkline_line"></div>
                                            <a class="title" href="#">Load Rate <i class="m-icon-swapright"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="row-fluid">
                    <div class="span6">
                        <!-- BEGIN REGIONAL STATS PORTLET-->
                        <div class="portlet">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-globe"></i>Regional Stats</div>
                                <div class="tools">
                                    <a href="" class="collapse"></a>
                                    <a href="#portlet-config" data-toggle="modal" class="config"></a>
                                    <a href="" class="reload"></a>
                                    <a href="" class="remove"></a>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div id="region_statistics_loading">
                                    <img src="media/image/loading.gif" alt="loading" />
                                </div>
                                <div id="region_statistics_content" class="hide">
                                    <div class="btn-toolbar">
                                        <div class="btn-group " data-toggle="buttons-radio">
                                            <a href="" class="btn mini active">Users</a>
                                            <a href="" class="btn mini">Orders</a>
                                        </div>
                                        <div class="btn-group pull-right">
                                            <a href="" class="btn mini dropdown-toggle" data-toggle="dropdown">
                                                Select Region <span class="icon-angle-down"></span>
                                            </a>
                                            <ul class="dropdown-menu pull-right">
                                                <li><a href="javascript:;" id="regional_stat_world">World</a></li>
                                                <li><a href="javascript:;" id="regional_stat_usa">USA</a></li>
                                                <li><a href="javascript:;" id="regional_stat_europe">Europe</a></li>
                                                <li><a href="javascript:;" id="regional_stat_russia">Russia</a></li>
                                                <li><a href="javascript:;" id="regional_stat_germany">Germany</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div id="vmap_world" class="vmaps chart hide"></div>
                                    <div id="vmap_usa" class="vmaps chart hide"></div>
                                    <div id="vmap_europe" class="vmaps chart hide"></div>
                                    <div id="vmap_russia" class="vmaps chart hide"></div>
                                    <div id="vmap_germany" class="vmaps chart hide"></div>
                                </div>
                            </div>
                        </div>
                        <!-- END REGIONAL STATS PORTLET-->
                    </div>
                    <div class="span6">
                        <!-- BEGIN PORTLET-->
                        <div class="portlet paddingless">
                            <div class="portlet-title line">
                                <div class="caption"><i class="icon-bell"></i>Feeds</div>
                                <div class="tools">
                                    <a href="" class="collapse"></a>
                                    <a href="#portlet-config" data-toggle="modal" class="config"></a>
                                    <a href="" class="reload"></a>
                                    <a href="" class="remove"></a>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <!--BEGIN TABS-->
                                <div class="tabbable tabbable-custom">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#tab_1_1" data-toggle="tab">System</a></li>
                                        <li><a href="#tab_1_2" data-toggle="tab">Activities</a></li>
                                        <li><a href="#tab_1_3" data-toggle="tab">Recent Users</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab_1_1">
                                            <div class="scroller" data-height="290px" data-always-visible="1" data-rail-visible="0">
                                                <ul class="feeds">
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-success">
                                                                        <i class="icon-bell"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        You have 4 pending tasks.
                                                                        <span class="label label-important label-mini">
																			Take action
																			<i class="icon-share-alt"></i>
																			</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                Just now
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-success">
                                                                            <i class="icon-bell"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc">
                                                                            New version v1.4 just lunched!
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date">
                                                                    20 mins
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-important">
                                                                        <i class="icon-bolt"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        Database server #12 overloaded. Please fix the issue.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                24 mins
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-info">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                30 mins
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-success">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                40 mins
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-warning">
                                                                        <i class="icon-plus"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New user registered.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                1.5 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-success">
                                                                        <i class="icon-bell-alt"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        Web server hardware needs to be upgraded.
                                                                        <span class="label label-inverse label-mini">Overdue</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                2 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                3 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-warning">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                5 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-info">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                18 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                21 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-info">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                22 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                21 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-info">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                22 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                21 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-info">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                22 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                21 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-info">
                                                                        <i class="icon-bullhorn"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        New order received. Please take care of it.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                22 hours
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="tab_1_2">
                                            <div class="scroller" data-height="290px" data-always-visible="1" data-rail-visible1="1">
                                                <ul class="feeds">
                                                    <li>
                                                        <a href="#">
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-success">
                                                                            <i class="icon-bell"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc">
                                                                            New user registered
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date">
                                                                    Just now
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-success">
                                                                            <i class="icon-bell"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc">
                                                                            New order received
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date">
                                                                    10 mins
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <div class="col1">
                                                            <div class="cont">
                                                                <div class="cont-col1">
                                                                    <div class="label label-important">
                                                                        <i class="icon-bolt"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="cont-col2">
                                                                    <div class="desc">
                                                                        Order #24DOP4 has been rejected.
                                                                        <span class="label label-important label-mini">Take action <i class="icon-share-alt"></i></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                24 mins
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-success">
                                                                            <i class="icon-bell"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc">
                                                                            New user registered
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date">
                                                                    Just now
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-success">
                                                                            <i class="icon-bell"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc">
                                                                            New user registered
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date">
                                                                    Just now
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-success">
                                                                            <i class="icon-bell"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc">
                                                                            New user registered
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date">
                                                                    Just now
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-success">
                                                                            <i class="icon-bell"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc">
                                                                            New user registered
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date">
                                                                    Just now
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-success">
                                                                            <i class="icon-bell"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc">
                                                                            New user registered
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date">
                                                                    Just now
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-success">
                                                                            <i class="icon-bell"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc">
                                                                            New user registered
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date">
                                                                    Just now
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-success">
                                                                            <i class="icon-bell"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc">
                                                                            New user registered
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date">
                                                                    Just now
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="tab_1_3">
                                            <div class="scroller" data-height="290px" data-always-visible="1" data-rail-visible1="1">
                                                <div class="row-fluid">
                                                    <div class="span6 user-info">
                                                        <img alt="" src="media/image/avatar.png" />
                                                        <div class="details">
                                                            <div>
                                                                <a href="#">Robert Nilson</a>
                                                                <span class="label label-success">Approved</span>
                                                            </div>
                                                            <div>29 Jan 2013 10:45AM</div>
                                                        </div>
                                                    </div>
                                                    <div class="span6 user-info">
                                                        <img alt="" src="media/image/avatar.png" />
                                                        <div class="details">
                                                            <div>
                                                                <a href="#">Lisa Miller</a>
                                                                <span class="label label-info">Pending</span>
                                                            </div>
                                                            <div>19 Jan 2013 10:45AM</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row-fluid">
                                                    <div class="span6 user-info">
                                                        <img alt="" src="media/image/avatar.png" />
                                                        <div class="details">
                                                            <div>
                                                                <a href="#">Eric Kim</a>
                                                                <span class="label label-info">Pending</span>
                                                            </div>
                                                            <div>19 Jan 2013 12:45PM</div>
                                                        </div>
                                                    </div>
                                                    <div class="span6 user-info">
                                                        <img alt="" src="media/image/avatar.png" />
                                                        <div class="details">
                                                            <div>
                                                                <a href="#">Lisa Miller</a>
                                                                <span class="label label-important">In progress</span>
                                                            </div>
                                                            <div>19 Jan 2013 11:55PM</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row-fluid">
                                                    <div class="span6 user-info">
                                                        <img alt="" src="media/image/avatar.png" />
                                                        <div class="details">
                                                            <div>
                                                                <a href="#">Eric Kim</a>
                                                                <span class="label label-info">Pending</span>
                                                            </div>
                                                            <div>19 Jan 2013 12:45PM</div>
                                                        </div>
                                                    </div>
                                                    <div class="span6 user-info">
                                                        <img alt="" src="media/image/avatar.png" />
                                                        <div class="details">
                                                            <div>
                                                                <a href="#">Lisa Miller</a>
                                                                <span class="label label-important">In progress</span>
                                                            </div>
                                                            <div>19 Jan 2013 11:55PM</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row-fluid">
                                                    <div class="span6 user-info">
                                                        <img alt="" src="media/image/avatar.png" />
                                                        <div class="details">
                                                            <div><a href="#">Eric Kim</a> <span class="label label-info">Pending</span>
                                                            </div>
                                                            <div>19 Jan 2013 12:45PM</div>
                                                        </div>
                                                    </div>
                                                    <div class="span6 user-info">
                                                        <img alt="" src="media/image/avatar.png" />
                                                        <div class="details">
                                                            <div>
                                                                <a href="#">Lisa Miller</a>
                                                                <span class="label label-important">In progress</span>
                                                            </div>
                                                            <div>19 Jan 2013 11:55PM</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row-fluid">
                                                    <div class="span6 user-info">
                                                        <img alt="" src="media/image/avatar.png" />
                                                        <div class="details">
                                                            <div><a href="#">Eric Kim</a> <span class="label label-info">Pending</span>
                                                            </div>
                                                            <div>19 Jan 2013 12:45PM</div>
                                                        </div>
                                                    </div>
                                                    <div class="span6 user-info">
                                                        <img alt="" src="media/image/avatar.png" />
                                                        <div class="details">
                                                            <div>
                                                                <a href="#">Lisa Miller</a>
                                                                <span class="label label-important">In progress</span>
                                                            </div>
                                                            <div>19 Jan 2013 11:55PM</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row-fluid">
                                                    <div class="span6 user-info">
                                                        <img alt="" src="media/image/avatar.png" />
                                                        <div class="details">
                                                            <div>
                                                                <a href="#">Eric Kim</a>
                                                                <span class="label label-info">Pending</span>
                                                            </div>
                                                            <div>19 Jan 2013 12:45PM</div>
                                                        </div>
                                                    </div>
                                                    <div class="span6 user-info">
                                                        <img alt="" src="media/image/avatar.png" />
                                                        <div class="details">
                                                            <div>
                                                                <a href="#">Lisa Miller</a>
                                                                <span class="label label-important">In progress</span>
                                                            </div>
                                                            <div>19 Jan 2013 11:55PM</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--END TABS-->
                            </div>
                        </div>
                        <!-- END PORTLET-->
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="row-fluid">
                    <div class="span6">
                        <!-- BEGIN PORTLET-->
                        <div class="portlet box blue calendar">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-calendar"></i>Calendar</div>
                            </div>
                            <div class="portlet-body light-grey">
                                <div id="calendar">
                                </div>
                            </div>
                        </div>
                        <!-- END PORTLET-->
                    </div>
                    <div class="span6">
                        <!-- BEGIN PORTLET-->
                        <div class="portlet">
                            <div class="portlet-title line">
                                <div class="caption"><i class="icon-comments"></i>Chats</div>
                                <div class="tools">
                                    <a href="" class="collapse"></a>
                                    <a href="#portlet-config" data-toggle="modal" class="config"></a>
                                    <a href="" class="reload"></a>
                                    <a href="" class="remove"></a>
                                </div>
                            </div>
                            <div class="portlet-body" id="chats">
                                <div class="scroller" data-height="435px" data-always-visible="1" data-rail-visible1="1">
                                    <ul class="chats">
                                        <li class="in">
                                            <img class="avatar" alt="" src="media/image/avatar1.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="#" class="name">Bob Nilson</a>
                                                <span class="datetime">at Jul 25, 2012 11:09</span>
                                                <span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
                                            </div>
                                        </li>
                                        <li class="out">
                                            <img class="avatar" alt="" src="media/image/avatar2.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="#" class="name">Lisa Wong</a>
                                                <span class="datetime">at Jul 25, 2012 11:09</span>
                                                <span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
                                            </div>
                                        </li>
                                        <li class="in">
                                            <img class="avatar" alt="" src="media/image/avatar1.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="#" class="name">Bob Nilson</a>
                                                <span class="datetime">at Jul 25, 2012 11:09</span>
                                                <span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
                                            </div>
                                        </li>
                                        <li class="out">
                                            <img class="avatar" alt="" src="media/image/avatar3.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="#" class="name">Richard Doe</a>
                                                <span class="datetime">at Jul 25, 2012 11:09</span>
                                                <span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
                                            </div>
                                        </li>
                                        <li class="in">
                                            <img class="avatar" alt="" src="media/image/avatar3.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="#" class="name">Richard Doe</a>
                                                <span class="datetime">at Jul 25, 2012 11:09</span>
                                                <span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
                                            </div>
                                        </li>
                                        <li class="out">
                                            <img class="avatar" alt="" src="media/image/avatar1.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="#" class="name">Bob Nilson</a>
                                                <span class="datetime">at Jul 25, 2012 11:09</span>
                                                <span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
                                            </div>
                                        </li>
                                        <li class="in">
                                            <img class="avatar" alt="" src="media/image/avatar3.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="#" class="name">Richard Doe</a>
                                                <span class="datetime">at Jul 25, 2012 11:09</span>
                                                <span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
													sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
                                            </div>
                                        </li>
                                        <li class="out">
                                            <img class="avatar" alt="" src="media/image/avatar1.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="#" class="name">Bob Nilson</a>
                                                <span class="datetime">at Jul 25, 2012 11:09</span>
                                                <span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. sed diam nonummy nibh euismod tincidunt ut laoreet.
													</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="chat-form">
                                    <div class="input-cont">
                                        <input class="m-wrap" type="text" placeholder="Type a message here..." />
                                    </div>
                                    <div class="btn-cont">
                                        <span class="arrow"></span>
                                        <a href="" class="btn blue icn-only"><i class="icon-ok icon-white"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END PORTLET-->
                    </div>
                </div>
            </div>
        </div>
        <!-- END PAGE CONTAINER-->
    </div>
    <!-- END PAGE -->
</div>
<!-- END CONTAINER -->

<%--底部--%>
<!-- BEGIN FOOTER -->
<div class="footer">
    <div class="footer-inner">
        2013 &copy; Metronic by keenthemes.
    </div>
    <div class="footer-tools">
			<span class="go-top">
			<i class="icon-angle-up"></i>
			</span>
    </div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="media/js/bootstrap.min.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="media/js/excanvas.min.js"></script>
<script src="media/js/respond.min.js"></script>
<![endif]-->
<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>
<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>
<script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="media/js/jquery.vmap.js" type="text/javascript"></script>
<script src="media/js/jquery.vmap.russia.js" type="text/javascript"></script>
<script src="media/js/jquery.vmap.world.js" type="text/javascript"></script>
<script src="media/js/jquery.vmap.europe.js" type="text/javascript"></script>
<script src="media/js/jquery.vmap.germany.js" type="text/javascript"></script>
<script src="media/js/jquery.vmap.usa.js" type="text/javascript"></script>
<script src="media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>
<script src="media/js/jquery.flot.js" type="text/javascript"></script>
<script src="media/js/jquery.flot.resize.js" type="text/javascript"></script>
<script src="media/js/jquery.pulsate.min.js" type="text/javascript"></script>
<script src="media/js/date.js" type="text/javascript"></script>
<script src="media/js/daterangepicker.js" type="text/javascript"></script>
<script src="media/js/jquery.gritter.js" type="text/javascript"></script>
<script src="media/js/fullcalendar.min.js" type="text/javascript"></script>
<script src="media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>
<script src="media/js/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="media/js/app.js" type="text/javascript"></script>
<script src="media/js/index.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function() {
        App.init(); // initlayout and core plugins
        Index.init();
        Index.initJQVMAP(); // init index page's custom scripts
        Index.initCalendar(); // init index page's custom scripts
        Index.initCharts(); // init index page's custom scripts
        Index.initChat();
        Index.initMiniCharts();
        Index.initDashboardDaterange();
        Index.initIntro();
    });
</script>
<!-- END JAVASCRIPTS -->
<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>
<!-- END BODY -->
</html>
