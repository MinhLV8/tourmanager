<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/includes/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="shortcut icon" type="image/png" href="<c:url value='/template/favicon.png'/>" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	crossorigin="anonymous">
<link href="<c:url value='/template/admin/css/styles.css'/>" rel="stylesheet" />
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="<c:url value='/template/admin/ckeditor/ckeditor.js'/>"></script>
<script type="text/javascript" src="<c:url value='/template/admin/js/validate.js'/>"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
<%-- <link rel='stylesheet' href="<c:url value='/template/admin/sweetalert/sweetalert.css'/>"> --%>
<link rel='stylesheet' href="<c:url value='/template/admin/sweetalert/dist/sweetalert2.min.css'/>">
<title>Trang chủ</title>
</head>
<body class="sb-nav-fixed">
	<%@ include file="/includes/admin/header.jsp"%>
	<%@ include file="/includes/admin/leftbar.jsp"%>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<dec:body />
		</main>
		<%@ include file="/includes/admin/footer.jsp"%>
	</div>
	</div>
	<script src="<c:url value='/template/admin/sweetalert/dist/sweetalert2.min.js'/>"></script>
	<%-- <script src="<c:url value='/template/admin/sweetalert/sweetalert.js'/>"></script> --%>
	<script src="<c:url value='/template/admin/paging/jquery.twbsPagination.js'/>"></script>
	<script src="<c:url value='/template/admin/js/scripts.js'/>"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/template/admin/assets/demo/chart-area-demo.js'/>"></script>
	<script src="<c:url value='/template/admin/assets/demo/chart-bar-demo.js'/>"></script>
	<!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
	<!-- <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script> -->
	<!-- <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script> -->
	<%-- <script src="<c:url value='/template/admin/assets/demo/datatables-demo.js'/>"></script> --%>
</body>
</html>