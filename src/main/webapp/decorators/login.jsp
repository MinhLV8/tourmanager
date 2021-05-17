<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/includes/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png" />
<title>Đăng nhập</title>
<link href="<c:url value='/template/admin/css/styles.css'/>" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="<c:url value='/template/admin/js/scripts.js'/>"></script>
<script src="<c:url value='/template/admin/js/validate.js'/>"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
</head>
<body class="bg-primary"
	style="background-image: url(<c:url value='/template/admin/assets/img/nen1.jpg'/>);background-position: center center; background-size: cover">
	<div id="layoutAuthentication">
		<dec:body />
	</div>
</body>
</html>
