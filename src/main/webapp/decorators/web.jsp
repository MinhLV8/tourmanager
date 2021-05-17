<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/includes/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="shortcut icon" type="image/png" href="<c:url value='/template/favicon.png'/>" />
<title>Trang chủ</title>
<link href='https://fonts.googleapis.com/css2?family=Lobster&family=Philosopher:ital@1&display=swap' rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/template/web/css/library/font-awesome.min.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/css/library/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/css/library/jquery-ui.min.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/css/library/owl.carousel.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/css/style.css'/>">
<link rel="shortcut icon" type="image/png" href="/favicon.png" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div id="preloader">
		<div class="tb-cell">
			<div id="page-loading">
				<div></div>
				<p>Đang tải trang</p>
			</div>
		</div>
	</div>
	<div id="wrap">
		<%@ include file="/includes/web/header.jsp"%>
		<dec:body />
		<%@ include file="/includes/web/footer.jsp"%>
	</div>
	<script src="<c:url value='/template/web/paging/jquery.twbsPagination.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/template/web/js/library/jquery-1.11.0.min.js'/>"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script type="text/javascript" src="<c:url value='/template/web/js/library/jquery-ui.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/template/web/js/library/bootstrap.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/template/web/js/library/owl.carousel.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/template/web/js/library/parallax.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/template/web/js/library/jquery.nicescroll.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/template/web/js/library/jquery.ui.touch-punch.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/template/web/js/library/SmoothScroll.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/template/web/js/script.js'/>"></script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'../../../www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-20585382-5', 'megadrupal.com');
		ga('send', 'pageview');
	</script>
</body>
</html>