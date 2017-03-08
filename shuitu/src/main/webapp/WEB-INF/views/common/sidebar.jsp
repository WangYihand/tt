<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<aside class="main-sidebar" style="min-height: 95.5%;padding-top: 55px;" >
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <ul class="sidebar-menu">
           <li class="treeview">
               <a href="#">
                   <i class="fa fa-tv"></i>
                  	<span>控制面板</span>
                  	<span class="pull-right-container">
                     <i class="fa fa-angle-left pull-right"></i>
                   </span>
               </a>
           </li>
           <li class="treeview">
               <a href="#">
                   <i class="fa fa-pencil"></i>
                   <span>数据录入</span>
                   <span class="pull-right-container">
                     <i class="fa fa-angle-left pull-right"></i>
                   </span>
               </a>
           </li>
           <li class="treeview">
               <a href="#">
                   <i class="fa fa-database"></i>
                   <span>数据存档</span>
                   <span class="pull-right-container">
                       <i class="fa fa-angle-left pull-right"></i>
                     </span>
               </a>
           </li>
           <li class="treeview">
               <a href="#">
                   <i class="fa fa-group"></i>
                   <span>角色管理</span>
                   <span class="pull-right-container">
                     <i class="fa fa-angle-left pull-right"></i>
                   </span>
               </a>
           </li>
           <li class="treeview active">
               <a href="#">
                   <i class="fa fa-user"></i>
                   <span>用户管理</span>
                   <span class="pull-right-container">
                     <i class="fa fa-angle-left pull-right"></i>
                   </span>
               </a>
               <ul class="treeview-menu">
                   <li <c:if test="${page_type==200}">class="active"</c:if>>
                       <a href="<%=request.getContextPath() %>/User/admin"><i class="fa fa-dot-circle-o"></i>管理员管理</a>
                   </li>
                   <li <c:if test="${page_type==201}">class="active"</c:if>>
                       <a href="<%=request.getContextPath() %>/User/power"><i class="fa fa-dot-circle-o"></i>权限管理</a>
                   </li>
               </ul>
           </li>
           <li class="treeview">
               <a href="#">
                   <i class="fa fa-bar-chart"></i>
                   <span>数据查询</span>
                   <span class="pull-right-container">
                     <i class="fa fa-angle-left pull-right"></i>
                   </span>
               </a>
           </li>
           <li class="treeview">
               <a href="#">
                   <i class="fa fa-file-text"></i>
                   <span>数据审核</span>
                   <span class="pull-right-container">
                     <i class="fa fa-angle-left pull-right"></i>
                   </span>
               </a>
           </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
