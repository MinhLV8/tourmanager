<%@ page import="com.doan.util.SecurityUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/includes/taglib.jsp"%>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark d-flex bd-highlight">
	<div class="p-2 flex-grow-1 bd-highlight">
		<a class="navbar-brand" href="index.html">
			<i class="fas fa-plane-departure"></i>
			VietNam Travel
		</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle"><i class="fas fa-bars"></i></button>
	</div>
	<div class="p-2 bd-highlight">
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
					Xin Chào:
					<%=SecurityUtils.getPrincipal().getFullName()%>
					<img class="img-profile rounded-circle" alt="" src="<c:url value='/template/admin/assets/img/avatar.jpg'/>">
					<!-- <i class="fas fa-user fa-fw"></i> -->
				</a>
				<div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
					<a class="dropdown-item" href="">
						<i class="fas fa-info-circle"></i>
						Thông tin cá nhân
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="<c:url value ='/dangxuat'/>">
						<i class="fas fa-sign-out-alt"></i>
						Đăng xuất
					</a>
				</div>
			</li>
		</ul>
	</div>
</nav>