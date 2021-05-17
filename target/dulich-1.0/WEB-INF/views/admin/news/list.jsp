<%@include file="/includes/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-new" />
<c:url var="NewURL" value="/admin-new" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách bài viết</title>
</head>
<body>
	<form action="#" id="formSubmit" method="get">
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang chủ</a></li>
				</ul> <!-- /.breadcrumb -->
		</div>
			<div class="card mb-4">
				<div class="card-body"><c:if test="${not empty messageResponse}">
						<div class="alert alert-${alert}">${messageResponse}</div>
					</c:if>
					<div class="widget-box table-filter">
						<div class="table-btn-controls">
							<div class="pull-right tableTools-container">
								<div class="dt-buttons btn-overlap btn-group"><a flag="info" class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
									data-toggle="tooltip" title='Thêm bài viết' href='<!-- <c:url value="/admin-new?type=edit"/> -->'> <span><i
											class="fa fa-plus-circle fa-spin"></i> Thêm bài viết
									</span>
								</a>
									<button id="btnDelete" type="button" class="dt-button buttons-html5 btn btn-white btn-warning btn-bold" data-toggle="tooltip"
										title='Xóa bài viết'>
										<span> <i class="fa fa-trash-o bigger-110 pink"></i> Xóa bài viết
										</span>
									</button></div>
						</div>
					</div>
				</div>&nbsp;
					<div class="col-xs-12">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr style="text-align: center">
										<th style="width: 50px"><input type="checkbox" id="checkAll"></th>
										<th>Tên bài viết</th>
										<th>Mô tả ngắn</th>
										<th>Thao tác</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${model.listResult}">
										<tr>
											<td><input type="checkbox" id="checkbox_${item.id}" value="${item.id}"></td>
											<td>${item.title}</td>
											<td>${item.shortDescription}</td>
											<td><a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip" title="Cập nhật bài viết" href='#'><i
													class="fa fa-pencil-square-o" aria-hidden="true"></i> </a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
					</div>
				</div></div>
		</div>
		</div>
	</form>

	<!-- /.main-content -->
	<script>
		
	</script>
</body>

</html>