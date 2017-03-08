<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <!-- 项目公共脚本 -->
	<!-- jQuery 2.2.3 -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="http://apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
	    $.widget.bridge('uibutton', $.ui.button);
	</script>
	<!-- Bootstrap 3.3.6 -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/bootstrap/js/bootstrap.min.js"></script>
	<!-- Bootstrap Table -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
	<!-- bootstrap-datetimepicker 
	<script src="<%=request.getContextPath() %>/resources/asset/js/bootstrap-datetimepicker.js"></script>
	<script src="<%=request.getContextPath() %>/resources/asset/js/bootstrap-datetimepicker.zh-CN.js"></script>
	-->
	<!-- Morris.js charts -->
	<script src="https://apps.bdimg.com/libs/raphael/2.1.2/raphael-min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/morris/morris.min.js"></script>
	<!-- Sparkline -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/sparkline/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/knob/jquery.knob.js"></script>
	<!-- datepicker -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/datepicker/bootstrap-datepicker.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/dist/js/app.min.js"></script>
	<!-- Validate -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/jquery-validate/jquery.validate.js"></script>
	<!-- Confirm -->
	<script src="<%=request.getContextPath()%>/resources/asset/plugins/jquery-confirm/jquery-confirm.min.js"></script>
	<!-- Fileupload 
	<script src="<%=request.getContextPath() %>/resources/asset/js/jquery.fileupload.js"></script>
	-->
	<%--自定义js--%>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>