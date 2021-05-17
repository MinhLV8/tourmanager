<%@ page import="com.doan.util.SecurityUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/includes/taglib.jsp"%>
<header id="header" class="header">
	<div class="topnav">
		<div class="container">
			<a>
				<i class="fa fa-envelope"></i> leminh3214789@gmail.com <i class="fa fa-grip-lines-vertical"></i>
			</a>
			<a>
				<i class="fa fa-phone"></i> Hotline: 0964554389
			</a>
			<div class="topnav-right">
				<security:authorize access="isAnonymous()">
					<a href="<c:url value ='/dangnhap'/>">
						<i class="fa fa-sign-in"></i> Đăng nhập
					</a>
					<a href="<c:url value ='/dangky'/>">
						<i class="fa fa-key"></i> Đăng ký
					</a>
				</security:authorize>
				<security:authorize access="isAuthenticated()">
					<a href="#booking">
						<i class="fa fa-shopping-cart"></i> Booking
					</a>
					<a href="">
						Xin Chào:
						<%=SecurityUtils.getPrincipal().getFullName()%>
					</a>
					<a href="<c:url value ='/dangxuat'/>"><i class="fa fa-sign-out"></i>
						 Đăng xuất
					</a>
				</security:authorize>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="logo float-left">
			<a href="<c:url value ='/trangchu'/>" title="">
				<img src="<c:url value='/template/web/images/logo-header1.png'/>" alt="" />
			</a>
		</div>
		<div class="bars" id="bars"></div>
		<nav class="navigation nav-c" id="navigation" data-menu-type="1200">
			<div class="nav-inner">
				<a href="#" class="bars-close" id="bars-close">Close</a>
				<div class="tb">
					<div class="tb-cell">
						<ul class="menu-list text-uppercase">
							<li><a href="<c:url value ='/trangchu'/>" title="">Trang chủ</a></li>
							<li>
								<a href="#" title="">Tours</a>
								<!-- <ul class="sub-menu">
									<li class="current-menu-item"><a href="#" title="">Tours</a></li>
									<li><a href="#">Tour List</a></li>
									<li><a href="tour-detail.html">Tour Detail</a></li>
								</ul> -->
							</li>
							<li><a href="<c:url value ='/bai-viet/danh-sach?page=1'/>" title="">Tin tức</a>
								<!-- <ul class="sub-menu">
									<li><a href="home-hotel.html" title="">Hotel</a></li>
									<li><a href="hotel-list.html">Hotel List 1</a></li>
									<li><a href="hotel-list-2.html">Hotel List 2</a></li>
									<li><a href="hotel-maps.html">Hotel Map</a></li>
									<li><a href="hotel-detail.html">Hotel Detail</a></li>
								</ul></li> -->
							<!-- <li><a href="#" title="">Khuyến mãi</a>
								<ul class="sub-menu">
									<li><a href="home-flight.html" title="">Flights</a></li>
									<li><a href="flight-list.html">Flight List</a></li>
								</ul></li> -->
							<li><a href="#" title="">Liên hệ</a>
								<!-- <ul class="sub-menu">
									<li><a href="#" title="">Car</a></li>
									<li><a href="#">Cart List</a></li>
								</ul> --></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</div>
</header>