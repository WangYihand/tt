<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../common/meta.jsp"%>
<title>用户管理 - 水土监控系统</title>
<%@ include file="../../common/css.jsp"%>
</head>
<body class="hold-transition skin-green-light sidebar-mini">
	<div class="wrapper">
		<%@ include file="../../common/top.jsp"%>
		<!-- 左边导航栏 -->
		<%@ include file="../../common/sidebar.jsp"%>
		<!-- C主要内容 -->
		<div class="content-wrapper">
			<section class="content">
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
		              <li class="active"><a href="#tab_admin" data-toggle="tab" aria-expanded="true">管理员表</a></li>
		              <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false">Tab 2</a></li>
		              <li class=""><a href="#tab_3" data-toggle="tab" aria-expanded="false">Tab 3</a></li>
		            </ul>
	            <div class="tab-content">
	            <div class="tab-pane active" id="tab_admin">
					<div class="row">
						<div class="col-xs-12">
							<div class="box box-primary panel-default">
	    							<div class="panel-heading">
	    								<i class="fa fa-table"></i>
		    							<h3 class="panel-title" style="width: 50%;display: inline;">
		    								管理员表
		    							</h3>
	    							</div>
	    							<div class="panel-body" style="padding: 0px;">
	    								<div class="box-body">
									<table id="adminList" data-toggle="table" data-search="true"
									data-search-align="left" data-query-params="queryParams"
									data-page-size="10" data-url="<%=request.getContextPath() %>/User/admin/list"
									data-side-pagination="server" data-pagination="true">
									<thead>
										<tr>
											<th data-field="currentRow" data-align="center"></th>
											<th data-field="name" data-align="center">姓名</th>
											<th data-field="gname" data-align="center">角色</th>
											<th data-field="operate" data-align="center"
												data-formatter="adminListFormatter"
												data-events="operateEvents">操&nbsp;&nbsp;作</th>
										</tr>
									</thead>
									</table>
									</div>	
	    							</div> 
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="tab_2">
                The European languages are members of the same family. Their separate existence is a myth.
                For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ
                in their grammar, their pronunciation and their most common words. Everyone realizes why a
                new common language would be desirable: one could refuse to pay expensive translators. To
                achieve this, it would be necessary to have uniform grammar, pronunciation and more common
                words. If several languages coalesce, the grammar of the resulting language is more simple
                and regular than that of the individual languages.
              	</div>
              	<div class="tab-pane" id="tab_3">
                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                It has survived not only five centuries, but also the leap into electronic typesetting,
                remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset
                sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
                like Aldus PageMaker including versions of Lorem Ipsum.
              	</div>
				</div>
				</div>
			</section>
		</div>
		<!-- /.c页脚 -->
		<%@ include file="../../common/footer.jsp"%>
	</div>
	<!-- ./wrapper -->
	<%@ include file="../../common/script.jsp"%>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/user/admin.js"></script>
</body>
</html>

