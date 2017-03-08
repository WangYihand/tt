<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<header class="main-header">
    <!-- Logo -->
    <a href="<%=request.getContextPath() %>" class="logo" style="height:55px">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>水土</b></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg" style="line-height:55px;height:55px"><b>水土监控系统</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
    		<!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button" style="line-height:25px">
            <span class="sr-only">收缩菜单</span>
        </a>
    		<nav class="nav navbar-nav">
<!--     			<li>
    			<a href="#">
              <span class="glyphicon glyphicon-asterisk"></span>
              <span class="glyphicon-class">glyphicon glyphicon-asterisk</span>
            </a>
            </li> -->
            <li>
              <a href="#" style="text-align:center;">
            	<img  src="<%=request.getContextPath() %>/resources/asset/images/control_panel.png"></img>
                  <div>控制面板</div>
              </a>
            </li>
            <li>
              <a href="#" style="text-align:center;">
            	<img  src="<%=request.getContextPath() %>/resources/asset/images/data_input.png"></img>
                  <div>数据录入</div>
              </a>
            </li>
            <li>
              <a href="#" style="text-align:center;">
            	<img  src="<%=request.getContextPath() %>/resources/asset/images/data_restore.png"></img>
                  <div>数据存档</div>
              </a>
            </li>
            <li>
              <a href="#" style="text-align:center;">
            	<img  src="<%=request.getContextPath() %>/resources/asset/images/role_manager.png"></img>
                  <div>角色管理</div>
              </a>
            </li>
            <li class="active">
              <a href="#" style="text-align:center;">
            	<img  src="<%=request.getContextPath() %>/resources/asset/images/user_manager.png"></img>
                  <div>用户管理</div>
              </a>
            </li>
            <li>
              <a href="#" style="text-align:center;">
            	<img  src="<%=request.getContextPath() %>/resources/asset/images/data_query.png"></img>
                  <div>数据查询</div>
              </a>
            </li>
            <li>
              <a href="#" style="text-align:center;">
            	<img  src="<%=request.getContextPath() %>/resources/asset/images/data_review.png"></img>
                  <div>数据审核</div>
              </a>
            </li>
          </nav>
    		<!-- Navbar Right Menu -->
    		<div class="navbar-custom-menu">
	      <ul class="nav navbar-nav">
	       <!-- Tasks: style can be found in dropdown.less -->
	      	<li class="dropdown tasks-menu">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
	            <i class="fa fa-flag-o"></i>
	            <span class="label label-danger">9</span>
	          </a>
	          <ul class="dropdown-menu">
	            <li class="header">您有<span>9</span>条待完成任务</li>
	            <li>
	              <!-- inner menu: contains the actual data -->
	              <ul class="menu">
	                <li><!-- Task item -->
	                  <a href="#">
	                    <h3>
	                      数据录入
	                      <small class="pull-right">20%</small>
	                    </h3>
	                    <div class="progress xs">
	                      <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
	                        <span class="sr-only">20% Complete</span>
	                      </div>
	                    </div>
	                  </a>
	                </li><!-- end task item -->
	                <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        数据录入
                        <small class="pull-right">40%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">40% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        数据录入
                        <small class="pull-right">60%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">60% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        数据审查
                        <small class="pull-right">80%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">80% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
	              </ul>
	            </li>
	            <li class="footer">
	              <a href="#">查看全部</a>
	            </li>
	          </ul>
	        </li>
	        <!-- Notifications: style can be found in dropdown.less -->
	        <li class="dropdown notifications-menu">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
	            <i class="fa fa-bell-o"></i>
	            <span class="label label-warning">10</span>
	          </a>
	          <ul class="dropdown-menu">
	            <li class="header">您有<span>10</span>条提醒</li>
	            <li>
	              <!-- inner menu: contains the actual data -->
	              <ul class="menu">
	                <li>
	                  <a href="#">
	                    <i class="fa fa-users text-aqua"></i> 
	                    5 new members joined today
	                  </a>
	                </li>
	                <li>
	                    <a href="#">
	                      <i class="fa fa-users text-aqua"></i> 
	                      5 new members joined today
	                    </a>
                  	</li>
                  	<li>
	                    <a href="#">
	                      <i class="fa fa-shopping-cart text-green"></i> 
	                      25 sales made
	                    </a>
                  	</li>
                  	<li>
	                    <a href="#">
	                      <i class="fa fa-users text-aqua"></i> 
	                      5 new members joined today
	                    </a>
                  	</li>
                  	<li>
	                    <a href="#">
	                      <i class="fa fa-shopping-cart text-green"></i> 
	                      25 sales made
	                    </a>
                  	</li>
	              </ul>
	            </li>
	            <li class="footer"><a href="#">查看全部</a></li>
	          </ul>
	        </li>
	        <!-- Messages: style can be found in dropdown.less-->
	        <li class="dropdown messages-menu">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
	            <i class="fa fa-envelope-o"></i>
	            <span class="label label-primary">4</span>
	          </a>
	          <ul class="dropdown-menu">
	            <li class="header">您有<span>4</span>条信息</li>
	            <li>
	              <!-- inner menu: contains the actual data-->
	              <ul class="menu">
	                <li><!-- start message -->
	                  <a href="#">
	                    <div class="pull-left">
	                      <img src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
	                    </div>
	                    <h4>
	                      Sender Name
	                      <small><i class="fa fa-clock-o"></i> 5 mins</small>
	                    </h4>
	                    <p>Message Excerpt</p>
	                  </a>
	                </li><!-- end message -->
	              </ul>
	            </li>
	            <li class="footer"><a href="#">查看全部</a></li>
	          </ul>
	        </li>
	        <!-- User Account: style can be found in dropdown.less -->
	        <li class="dropdown user user-menu">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="height:55px">
	            <img src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/dist/img/user2-160x160.jpg" class="user-image" alt="User Image" style="height: 45px;
    width: 45px;
	            ">
	            <span class="hidden-xs" style="line-height: 45px;font-size: 16px;">周明</span>
	          </a>
	          <ul class="dropdown-menu">
	            <!-- User image -->
	            <li class="user-header">
	              <img src="<%=request.getContextPath() %>/resources/asset/plugins/AdminLTE/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
	              <p>
	                周明 - Web Developer
	              </p>
	            </li>
	            <!-- Menu Footer-->
	            <li class="user-footer">
	              <div class="pull-left">
	                <button type="button" class="btn btn-block btn-primary">个人信息</button>
	              </div>
	              <div class="pull-right">
	                <button type="button" class="btn btn-block btn-danger">退出登录</button>
	              </div>
	            </li>
	          </ul>
	        </li>
	      </ul>
	    </div>
    </nav>
</header>