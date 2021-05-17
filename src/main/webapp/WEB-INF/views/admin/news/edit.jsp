<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/includes/taglib.jsp"%>
<c:url var="newAPI" value="/api/new" />
<c:url var="newURL" value="/quantri/bai-viet/danh-sach" />
<c:url var="editNewURL" value="/quantri/bai-viet/chinh-sua" />
<html>
<head>
<title>Chỉnh sửa bài viết</title>
</head>
<body>
	<c:if test="${not empty model.id}">
		<h3 class="mt-4">Cập nhật bài viết</h3>
	</c:if>
	<c:if test="${empty model.id}">
		<h3 class="mt-4">Thêm bài viết mới</h3>
	</c:if>
	<div class="main-content-inner">
		<div class="breadcrumbs ace-save-state" id="breadcrumbs">
			<ul class="breadcrumb">
				<li>
					<i class="ace-icon fa fa-home home-icon"></i>
					<a href="<c:url value='/quantri/'/>">Trang chủ</a>
					/
					<a href="<c:url value='/quantri/bai-viet/danh-sach'/>">Chỉnh sửa bài viết</a>
				</li>
			</ul>
			<div class="row justify-content-center">
				<div class="col-4">
					<c:if test="${not empty message}">
					    <script type="text/javascript">
					    $(document).ready(function(){
					        ${message}
					        });
					    </script>
					</c:if>
				</div>
			</div>
			<div class="card mb-4">
				<div class="card-body">
					<form:form action="#" method="get" id="formNew" modelAttribute="model" name="needs-validation">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="title">Tiêu đề</label>
								<form:input path="title" cssClass="form-control" id="title" autocomplete="off"/>
							</div>
							<div class="form-group col-md-6">
								<label for="shortDes">Mô tả ngắn</label>
								<form:textarea path="shortDes" cssClass="form-control" id="shortDes" />
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="thumbnail">Hình ảnh</label>
								<div class="custom-file">
									<input type="file" class="custom-file-input" id="thumbnail" name="thumbnail"
										onchange="this.nextElementSibling.innerText = this.files[0].name">
									<label id="thumbnail" class="custom-file-label" for="thumbnail" data-browse="Duyệt hình ảnh">Chọn hình
										ảnh...</label>
								</div>
							</div>
							<div class="form-group col-md-2">
								<label for="categoryCode">Thể loại bài viết</label>
								<form:select path="newCategoryCode" id="newCategoryCode" cssClass="custom-select">
									<form:option value="" label="--Chọn thể loại--" />
									<form:options items="${modelCat}" />
								</form:select>
							</div>
						</div>
						<div class="form-group">
							<label for="content">Nội dung</label>
							<form:textarea path="content" cssClass="ckeditor" id="content" />
						</div>
						<form:hidden path="id" id="newId" />
						<c:if test="${not empty model.id}">
							<button type="button" class="btn btn-primary" id="btnAddOrUpdateNew"><i class="far fa-edit"></i> Cập
								nhật</button>
						</c:if>
						<c:if test="${empty model.id}">
							<button type="button" class="btn btn-primary" id="btnAddOrUpdateNew"><i class="fas fa-check"></i> Thêm
								mới</button>
						</c:if>
						&nbsp;<button type="reset" class="btn btn-warning"><i class="fas fa-undo-alt"></i> Nhập lại</button>&nbsp;
						<a class="btn btn-dark" href='<c:url value='/quantri/bai-viet/danh-sach?page=1'></c:url>'>
						<i class="far fa-hand-point-left"></i> Quay lại</a>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
    var editor = '';
    $(document).ready(function() {
        editor = CKEDITOR.replace('content');
    });
    
    $('#btnAddOrUpdateNew').click(function(e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formNew').serializeArray();
        $.each(formData, function(i, v) {
            data["" + v.name + ""] = v.value;
        });
        data["content"] = CKEDITOR.instances.content.getData();
        var id = $('#newId').val();
        if( $("#formNew").valid()){       	 
            if (id == "") {
                addNew(data);    
            } else {
                updateNew(data);
            }
        }     
    });

    function addNew(data) {
        $.ajax({
            url: '${newAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {          	
                window.location.href = "${editNewURL}?id="+result.id+"&message=add_success";              
            },
            error: function (error) {
                window.location.href = "${editNewURL}?message=error_system";
            }
        });
    }
    
    function updateNew(data) {
        $.ajax({
            url: '${newAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editNewURL}?id="+result.id+"&message=update_success";
            },
            error: function (error) {
                window.location.href = "${editNewURL}?id="+result.id+"&message=error_system";
            }
        });       
    }
</script>
</body>
</html>
