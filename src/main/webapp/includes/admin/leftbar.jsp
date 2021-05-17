<%@ page import ="com.doan.util.SecurityUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/includes/taglib.jsp"%>
<div id="layoutSidenav">
	<div id="layoutSidenav_nav">
		<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<div class="nav">
					<div class="sb-sidenav-menu-heading">Menu</div>
					<a class="nav-link" href="<c:url value='/quantri/'/>">
						<div class="sb-nav-link-icon">
							<i class="fas fa-tachometer-alt"></i>
						</div>
						Trang chủ
					</a>
					<div class="sb-sidenav-menu-heading">Quản Lý</div>
					<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#quanlybaiviet" aria-expanded="false"
						aria-controls="quanlybaiviet">
						<div class="sb-nav-link-icon">
							<i class="fas fa-tasks"></i>
						</div>
						Bài viết
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="quanlybaiviet" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="<c:url value='/quantri/bai-viet/danh-sach?page=1'/>">								
									<i class="fas fa-tasks"></i>&nbsp;							
								Danh sách bài viết
							</a>
							<a class="nav-link" href="<c:url value='/quantri/bai-viet/chinh-sua'/>">
								<i class="fas fa-plus"></i>&nbsp;
								Thêm bài viết
							</a>
							<a class="nav-link" href="<c:url value='/quantri/loai-bai-viet/danh-sach?page=1'/>">
								<i class="fas fa-tasks"></i>
								&nbsp;Danh sách thể loại
							</a>
						</nav>
					</div>
					<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#quanlytour" aria-expanded="false"
						aria-controls="quanlytour">
						<div class="sb-nav-link-icon">
							<i class="fas fa-columns"></i>
						</div>
						Tour
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="quanlytour" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="<c:url value='/quantri/tour/danh-sach?page=1'/>">Danh sách tour</a>
							<a class="nav-link" href="<c:url value='/quantri/loai-tour/danh-sach?page=1'/>">Danh sách loại tour</a>
							<a class="nav-link" href="#">Danh sách thành phố</a>
							<a class="nav-link" href="#">Danh sách quốc gia</a>
						</nav>
					</div>
					<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#quanlybooking" aria-expanded="false"
						aria-controls="quanlybooking">
						<div class="sb-nav-link-icon">
							<i class="fas fa-book-open"></i>
						</div>
						Đặt tour
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="quanlybooking" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="#">Danh sách đặt tour</a>
                        </nav>
                    </div>
					<!-- <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
							<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth"
								aria-expanded="false" aria-controls="pagesCollapseAuth">
								Authentication
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link" href="login.html">Login</a>
									<a class="nav-link" href="register.html">Register</a>
									<a class="nav-link" href="password.html">Forgot Password</a>
								</nav>
							</div>
							<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError"
								aria-expanded="false" aria-controls="pagesCollapseError">
								Error
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link" href="401.html">401 Page</a>
									<a class="nav-link" href="404.html">404 Page</a>
									<a class="nav-link" href="500.html">500 Page</a>
								</nav>
							</div>
						</nav>
					</div> -->
					<a class="nav-link" href="<c:url value='/quantri/nguoi-dung/danh-sach?page=1'/>">
						<div class="sb-nav-link-icon">
							<i class="fas fa-table"></i>
						</div>
						Khách hàng
					</a>
				</div>
			</div>
			<div class="sb-sidenav-footer">
				<div class="small">Logged in as:</div>
				<%=SecurityUtils.getPrincipal().getFullName()%> 
			</div>
		</nav>
	</div>