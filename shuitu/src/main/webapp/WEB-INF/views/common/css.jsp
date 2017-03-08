<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/asset/images/favicon.ico" type="image/x-icon">
	<!-- 项目必要的外部依赖 -->
	<!-- Bootstrap 3.3.6 -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/bootstrap/css/bootstrap.min.css">
	<!-- Bootstrap Table -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap-table.min.css">
	<!-- bootstrap-datetimepicker 
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap-datetimepicker.min.css">
	-->
	<!-- Theme style -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/dist/css/AdminLTE.min.css">
	<!-- AdminLTE Skins. Choose a skin from the css/skins
	folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/dist/css/skins/_all-skins.min.css">
	<!-- iCheck -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/iCheck/flat/blue.css">
	<!-- Morris chart -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/morris/morris.css">
	<!-- jvectormap -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
	<!-- Date Picker -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/datepicker/datepicker3.css">
	<!-- Daterange picker -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/daterangepicker/daterangepicker.css">
	<!-- bootstrap wysihtml5 - text editor -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
	<!-- Confirm -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/plugins/jquery-confirm/jquery-confirm.min.css">
	<!-- Font-Awesome 系统中使用的大部分icon-->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/font-awesome.min.css">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
    <script type="text/javascript" src="../../vendor/html5shiv/dist/html5shiv.min.js"></script>
    <script type="text/javascript" src="../../vendor/respond/dest/respond.min.js"></script>
    <![endif]-->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:https:// -->
    <style type="text/css">
    /* 一级导航栏active样式 */
    .navbar-nav > .active{
    	 border-bottom:solid 4px #f7b128; 
    } 
    .navbar-nav > .active > a {
    	padding-bottom:1px;
    }
    
    /* top导航栏右边部分icon样式 */
    .navbar-custom-menu > ul > li > a > i{
    	font-size:20px;
   		margin-top: 12px;
        margin-bottom: 12px;
    }
    /* top导航栏右边部分数字起泡位置 */
    .navbar-custom-menu > ul > li > a > span{
    	top: 8px !important;
    } 
    /* top导航栏a标签的padding调整 */
    .navbar-nav>li>a {
    	padding-top:5px;
    	padding-bottom:5px;
    }
    </style>

	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/common.css">
