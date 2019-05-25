<%--
  Created by IntelliJ IDEA.
  User: leichengyang
  Date: 2019/4/29 0029
  Time: 下午 3:12
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
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
</head>
<body class="page-header-fixed">
<ul class="page-sidebar-menu">
    <li>
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
        <div class="sidebar-toggler hidden-phone"></div>
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
    </li>
    <li>
        <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
        <form class="sidebar-search">
            <div class="input-box">
                <a href="javascript:;" class="remove"></a>
                <input type="text" placeholder="Search..." />
                <input type="button" class="submit" value=" " />
            </div>
        </form>
        <!-- END RESPONSIVE QUICK SEARCH FORM -->
    </li>
    <li class="start active ">
        <a href="index.html">
            <i class="icon-home"></i>
            <span class="title">Dashboard</span>
            <span class="selected"></span>
        </a>
    </li>
    <li class="">
        <a href="javascript:;">
            <i class="icon-cogs"></i>
            <span class="title">用户管理</span>
            <span class="arrow "></span>
        </a>
        <ul class="sub-menu">
            <li >
                <a href="<%=basePath%>findAll">
                    用户列表</a>
            </li>
        </ul>
    </li>
    <li class="">
        <a href="javascript:;">
            <i class="icon-bookmark-empty"></i>
            <span class="title">土地管理</span>
            <span class="arrow "></span>
        </a>
        <ul class="sub-menu">
            <li >
                <a href="<%=basePath%>land/findAll">
                    土地列表</a>
            </li>
        </ul>
    </li>
    <li class="">
        <a href="javascript:;">
            <i class="icon-table"></i>
            <span class="title">角色管理</span>
            <span class="arrow "></span>
        </a>
        <ul class="sub-menu">
            <li >
                <a href="<%=basePath%>role/findAll">
                    角色列表</a>
            </li>
        </ul>
    </li>
    <li class="">
        <a href="javascript:;">
            <i class="icon-cogs"></i>
            <span class="title">疫苗管理</span>
            <span class="arrow "></span>
        </a>
        <ul class="sub-menu">
            <li >
                <a href="<%=basePath%>vaccine/vaccineList">
                    疫苗门诊信息列表</a>
            </li>
        </ul>
    </li>
    <li>
        <a class="active" href="javascript:;">
            <i class="icon-sitemap"></i>
            <span class="title">3 Level Menu</span>
            <span class="arrow "></span>
        </a>
        <ul class="sub-menu">
            <li>
                <a href="javascript:;">
                    Item 1
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li><a href="#">Sample Link 1</a></li>
                    <li><a href="#">Sample Link 2</a></li>
                    <li><a href="#">Sample Link 3</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    Item 1
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li><a href="#">Sample Link 1</a></li>
                    <li><a href="#">Sample Link 1</a></li>
                    <li><a href="#">Sample Link 1</a></li>
                </ul>
            </li>
            <li>
                <a href="#">
                    Item 3
                </a>
            </li>
        </ul>
    </li>
    <li>
        <a href="javascript:;">
            <i class="icon-folder-open"></i>
            <span class="title">4 Level Menu</span>
            <span class="arrow "></span>
        </a>
        <ul class="sub-menu">
            <li>
                <a href="javascript:;">
                    <i class="icon-cogs"></i>
                    Item 1
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="javascript:;">
                            <i class="icon-user"></i>
                            Sample Link 1
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li><a href="#"><i class="icon-remove"></i> Sample Link 1</a></li>
                            <li><a href="#"><i class="icon-pencil"></i> Sample Link 1</a></li>
                            <li><a href="#"><i class="icon-edit"></i> Sample Link 1</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="icon-user"></i>  Sample Link 1</a></li>
                    <li><a href="#"><i class="icon-external-link"></i>  Sample Link 2</a></li>
                    <li><a href="#"><i class="icon-bell"></i>  Sample Link 3</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="icon-globe"></i>
                    Item 2
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li><a href="#"><i class="icon-user"></i>  Sample Link 1</a></li>
                    <li><a href="#"><i class="icon-external-link"></i>  Sample Link 1</a></li>
                    <li><a href="#"><i class="icon-bell"></i>  Sample Link 1</a></li>
                </ul>
            </li>
            <li>
                <a href="#">
                    <i class="icon-folder-open"></i>
                    Item 3
                </a>
            </li>
        </ul>
    </li>
    <li class="">
        <a href="javascript:;">
            <i class="icon-user"></i>
            <span class="title">Login Options</span>
            <span class="arrow "></span>
        </a>
        <ul class="sub-menu">
            <li >
                <a href="login.html">
                    Login Form 1</a>
            </li>
            <li >
                <a href="login_soft.html">
                    Login Form 2</a>
            </li>
        </ul>
    </li>
    <li class="">
        <a href="javascript:;">
            <i class="icon-th"></i>
            <span class="title">Data Tables</span>
            <span class="arrow "></span>
        </a>
        <ul class="sub-menu">
            <li >
                <a href="table_basic.html">
                    Basic Tables</a>
            </li>
            <li >
                <a href="table_responsive.html">
                    Responsive Tables</a>
            </li>
            <li >
                <a href="table_managed.html">
                    Managed Tables</a>
            </li>
            <li >
                <a href="table_editable.html">
                    Editable Tables</a>
            </li>
            <li >
                <a href="table_advanced.html">
                    Advanced Tables</a>
            </li>
        </ul>
    </li>
    <li class="">
        <a href="javascript:;">
            <i class="icon-file-text"></i>
            <span class="title">Portlets</span>
            <span class="arrow "></span>
        </a>
        <ul class="sub-menu">
            <li >
                <a href="portlet_general.html">
                    General Portlets</a>
            </li>
            <li >
                <a href="portlet_draggable.html">
                    Draggable Portlets</a>
            </li>
        </ul>
    </li>
    <li class="">
        <a href="javascript:;">
            <i class="icon-map-marker"></i>
            <span class="title">Maps</span>
            <span class="arrow "></span>
        </a>
        <ul class="sub-menu">
            <li >
                <a href="maps_google.html">
                    Google Maps</a>
            </li>
            <li >
                <a href="maps_vector.html">
                    Vector Maps</a>
            </li>
        </ul>
    </li>
    <li class="last ">
        <a href="charts.html">
            <i class="icon-bar-chart"></i>
            <span class="title">Visual Charts</span>
        </a>
    </li>
</ul>
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
