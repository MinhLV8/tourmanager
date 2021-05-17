<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Modal đăng nhập -->
	<div class="modal" tabindex="-1" role="dialog" id="dangnhap">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					&nbsp;
					<div class="col-md-6">
						<h4 class="modal-title" id="exampleModalLongTitle">
							<span style="color: #59c45a; font-weight: bold">Đăng nhập</span>
						</h4>
					</div>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span style="color: #ff0000; font-size: 150%" aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-6">
							<img src="<c:url value='/template/web/images/logo-login.png'/>" alt="">
						</div>
						<div class="col-md-6">
							<form action="#" method="get">
								<div class="form-group">
									<label for="username" class="col-form-label">Tài khoản:</label>
									<div class="row">
										<div class="col-md-12">
											<input type="text" class="form-control" id="username">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="password" class="col-form-label">Mật Khẩu:</label>
									<div class="row">
										<div class="col-md-12">
											<input type="password" class="form-control" id="password"></input>
										</div>
									</div>
								</div>
								<div class="checkbox">
									<label style="color: #59c45a; font-size: 120%"> <input name="remember" id="remember" type="checkbox">
										Nhớ thông tin
									</label>
									<p class="help-block">(Nếu sử dụng máy tính cá nhân)</p>
								</div>
								<button type="submit" class="btn btn-success">
									<i class="fa fa-sign-in"></i> Đăng nhập
								</button>
								<button type="reset" class="btn btn-danger">
									<!-- data-dismiss="modal" -->
									<i class="fa fa-ban"></i> Reset
								</button>
							</form>
						</div>
					</div>
					<p style="color: #59c45a; font-size: 120%">
						Bạn chưa có tài khoản?
						<a href="#dangky" class="tooltip-test" title="Đăng ký"> Đăng ký ngay hoàn toàn miễn phí.</a>
					</p>
					<p style="color: #59c45a; font-size: 120%">
						Quên mật khẩu?
						<a href="#dangnhap" class="tooltip-test" title="Quên mật khẩu"> Lấy lại mật khẩu.</a>
					</p>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<!-- End  -->
</body>
</html>