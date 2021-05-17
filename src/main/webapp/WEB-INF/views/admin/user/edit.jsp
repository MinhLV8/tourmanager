<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/includes/taglib.jsp"%>
<c:url var="newAPI" value="/api/new" />
<c:url var="newURL" value="/quantri/bai-viet/danh-sach" />
<c:url var="editNewURL" value="/quantri/bai-viet/chinh-sua" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row justify-content-center">
		<div class="col-4">
			<c:if test="${not empty message}">
				<script type="text/javascript">
					$(document).ready(function() {
						$
						{
							message
						}
					});
				</script>
			</c:if>
		</div>
	</div>
	<div class="container-fluid">
		<h3 class="text-dark mb-4">Thông tin quản trị</h3>
		<form:form action="#" method="get" id="formNew" modelAttribute="model" name="needs-validation">
			<div class="row mb-3">
				<div class="col-lg-4">
					<div class="card mb-3">
						<div class="card-body text-center shadow">
							<img class="rounded-circle mb-3 mt-4" src="<c:url value="/template/web/images/blog/gallery/img-2.jpg"></c:url>"
								width="160" height="160">
							<div class="mb-3">
								<button class="btn btn-primary btn-sm" type="button">Thay đổi</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="row mb-3 d-none">
						<div class="col">
							<div class="card text-white bg-primary shadow">
								<div class="card-body">
									<div class="row mb-2">
										<div class="col">
											<p class="m-0">Peformance</p>
											<p class="m-0">
												<strong>65.2%</strong>
											</p>
										</div>
										<div class="col-auto">
											<i class="fas fa-rocket fa-2x"></i>
										</div>
									</div>
									<p class="text-white-50 small m-0">
										<i class="fas fa-arrow-up"></i>
										&nbsp;5% since last month
									</p>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card text-white bg-success shadow">
								<div class="card-body">
									<div class="row mb-2">
										<div class="col">
											<p class="m-0">Peformance</p>
											<p class="m-0">
												<strong>65.2%</strong>
											</p>
										</div>
										<div class="col-auto">
											<i class="fas fa-rocket fa-2x"></i>
										</div>
									</div>
									<p class="text-white-50 small m-0">
										<i class="fas fa-arrow-up"></i>
										&nbsp;5% since last month
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="card shadow mb-3">
								<div class="card-header py-3">
									<p class="text-primary m-0 font-weight-bold">Chỉnh sửa người dùng</p>
								</div>
								<div class="card-body">
									<form>
										<div class="form-row">
											<div class="col">
												<div class="form-group">
													<label for="username">
														<strong>Username</strong>
													</label>
													<form:input path="userName" cssClass="form-control" id="title" />
												</div>
											</div>
											<div class="col">
												<div class="form-group">
													<label for="email">
														<strong>Email</strong>
													</label>
													<form:input path="email" cssClass="form-control" id="email" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="first_name">
												<strong>Địa chỉ</strong>
											</label>
											<form:input path="address" cssClass="form-control" id="address" />
										</div>
										<div class="form-row">
											<div class="col">
												<div class="form-group">
													<label for="first_name">
														<strong>Họ và tên</strong>
													</label>
													<form:input path="fullName" cssClass="form-control" id="fullName" />
												</div>
											</div>
											<div class="col">
												<div class="form-group">
													<label for="last_name">
														<strong>Số điện thoại</strong>
													</label>
													<form:input path="phoneNumber" cssClass="form-control" id="phoneNumber" />
												</div>
											</div>
											<div class="col">
												<div class="form-group">
													<label for="first_name">
														<strong>Giới tính</strong>
													</label>
													<form:input path="gender" cssClass="form-control" id="gender" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<button class="btn btn-primary btn-sm" type="button">Lưu chỉnh sửa</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>