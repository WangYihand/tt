<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../common/meta.jsp"%>
<title>大赛后台管理系统</title>
<%-- <%@ include file="../common/css.jsp"%> --%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/dist/css/AdminLTE.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/asset/plugins/AdminLTE/plugins/iCheck/square/blue.css">
</head>
<body
	style="background: url(<%=request.getContextPath()%>/resources/asset/images/head.jpg);background-size:100% 100%;">
	<div class="login-box">
		<div class="login-logo">
			<a><b>水土监控系统</b></a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">管理员登录</p>
			<form action="" method="post" id="form-sign">
				<div class="form-group has-feedback">
					<input type="text" class="form-control" placeholder="请输入管理员账号"
						name="name">
					<%--<span class="glyphicon glyphicon-envelope form-control-feedback" style="position: fixed"></span>--%>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" placeholder="请输入密码"
						name="password">
					<%--<span class="glyphicon glyphicon-lock form-control-feedback" style="position: fixed"></span>--%>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label> <input type="checkbox" name="remember">
								下次自动登录
							</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
					</div>
					<!-- /.col -->
				</div>
			</form>
		</div>
		<!-- /.login-box-body -->
	</div>
	<%-- <%@ include file="../common/script.jsp"%> --%>
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/bootstrap/js/bootstrap.min.js"></script>
	<!-- Validate -->
	<script src="<%=request.getContextPath() %>/resources/asset/plugins/jquery-validate/jquery.validate.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/asset/plugins/AdminLTE/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(function () {
			$('input').iCheck({
				checkboxClass: 'icheckbox_square-blue',
				radioClass: 'iradio_square-blue',
				increaseArea: '20%' 
			});
		});

		//进行登录验证
		$("#form-sign").validate({
			submitHandler:function () {
				//进行登录操作
				var name = $("input[name='name']").val();
				var password = $("input[name='password']").val();
				var remember = $("input[name='remember']").prop("checked")?1:0;

				$.post("<%=request.getContextPath()%>/sign/in",{name:name,password:password,remember:remember},function (data) {
					if(data.status=="1"){
						window.location.href="<%=request.getContextPath()%>/User/admin";
					}else{
						alert(data.msg);
					}
				},"json");
			},
			rules:{
				name:{
					required:true,
					remote: {
						url: "<%=request.getContextPath()%>/sign/check", //后台处理程序
										type : "post", //数据发送方式
										dataType : "json", //接受数据格式
										data : {
											//要传递的数据
											"name" : function() {
												return $("input[name='name']")
														.val();
											}
										}
									}
								},
								password : {
									required : true
								}
							},
							messages : {
								name : {
									required : "用户名不能为空",
									remote : "用户名不存在"
								},
								password : {
									required : "密码不能为空"
								}
							}

						});
	</script>
</body>
</html>