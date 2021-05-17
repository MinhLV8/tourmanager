<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/includes/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Đăng nhập</title>
</head>
<body>
	<div id="layoutAuthentication_content">
		<main>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-5">
						<div class="card shadow-lg border-0 rounded-lg mt-5">
							<div class="card-header">
								<div class="text-center">
									<img class="col" alt="login" src="<c:url value='/template/admin/assets/img/logo.png'/>">
								</div>
								<h3 class="text-center font-weight-bold my-4">&hearts; Đăng nhập &hearts;</h3>
							</div>
							<div class="card-body">
								<c:if test="${param.incorrectAccount != null}">
									<div class="alert alert-danger alert-dismissible fade show" role="alert">
										<strong>Lỗi!</strong> Username hoặc password không đúng!
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
										</button>
									</div>
								</c:if>
								<c:if test="${param.accessDenied != null}">
									<div class="alert alert-danger alert-dismissible fade show" role="alert">
										<strong>Lỗi!</strong> Bạn không có quyền vào trang này !
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
										</button>
									</div>
								</c:if>
								<form action="j_spring_security_check" method="post" id="formLogin">
									<div class="form-group flex-nowrap">
										<label class="small mb-1">Tài khoản:</label>
										<div class="form-group">
											<input class="form-control py-4 rounded-pill" name="j_username" id="userName" type="text"
												placeholder="Nhập vào tài khoản..." autocomplete="off" />
										</div>
									</div>
									<div class="form-group">
										<label class="small mb-1">Mật khẩu:</label>
										<div class="form-group">
											<input class="form-control py-4 rounded-pill" id="passWord" name="j_password" type="password"
												placeholder="Nhập vào mật khẩu..." />
										</div>
									</div>
									<div class="form-group">
										<div class="custom-control custom-checkbox">
											<input class="custom-control-input" name="remember-me" id="remember-me" type="checkbox" />
											<label class="custom-control-label" for="remember-me">Nhớ mật khẩu</label>	
										</div>									
									</div>
									<div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
										<button class="btn btn-info btn-lg btn-block rounded-pill btn-sm" type="submit" id="btnLogin"><i
												class="fal fa-sign-in-alt"></i> Đăng nhập</button>										
									</div>
									<hr>
									<button class="btn btn-danger btn-lg btn-block rounded-pill btn-sm" type="submit" id="btnLogin"><i
                                                class="fal fa-sign-in-alt"></i> Đăng nhập với Google</button>
                                    <button class="btn btn-primary btn-lg btn-block rounded-pill btn-sm" type="submit" id="btnLogin"><i
                                                class="fal fa-sign-in-alt"></i> Đăng nhập với Facebook</button>
									<div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
										
										<a class="small" href="password.html">Quên mật khẩu?</a>
									</div>
								</form>
							</div>
							<div class="card-footer text-center">
								<div class="small">
									<a href="register.html">
										<i class="fad fa-camera"></i>
										Cần tài khoản? Hãy liên hệ với quản lý!
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
	<div id="layoutAuthentication_footer">
		<footer class="py-4 bg-dark mt-auto">
			<div class="container-fluid">
				<div class="d-flex align-items-center justify-content-between small">
					<div class="text-light">Copyright &copy; VietNam Trips 2020</div>
					<div class="text-light">
						<a href="#" class="text-light">Chính sách bảo mật</a>
						&middot;
						<a href="#" class="text-light">Điều khoản &amp; dịch vụ</a>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script type="text/javascript">
		$('#btnLogin').on('click', function() {
			$("#formLogin").valid();
		});
	</script>
</body>
</html>
