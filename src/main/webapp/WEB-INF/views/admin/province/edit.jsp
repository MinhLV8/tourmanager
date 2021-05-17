<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/includes/taglib.jsp"%>
<c:url var="provinceAPI" value="/api/province" />
<c:url var="provinceURL" value="/quantri/tinh/danh-sach" />
<c:url var="editProvinceURL" value="/quantri/tinh/chinh-sua" />
<html>
<head>
<title>Chỉnh sửa tỉnh</title>
</head>
<body>
  <c:if test="${not empty model.id}">
        <h3 class="mt-4">Cập nhật tỉnh thành</h3>
    </c:if>
    <c:if test="${empty model.id}">
        <h3 class="mt-4">Thêm mới tỉnh thành</h3>
    </c:if>
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="<c:url value='/quantri/'/>">Trang chủ</a>
                    /
                    <a href="<c:url value='/quantri/tinh/danh-sach'/>">Chỉnh sửa tỉnh thành</a>
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
                    <form:form action="#" method="get" id="formProvince" modelAttribute="model" name="needs-validation">
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="name">Tên Tỉnh thành</label>
                                <form:input path="name" cssClass="form-control" id="name" autocomplete="off"/>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="code">Mã Tỉnh thành</label>
                                <form:input path="code" cssClass="form-control" id="code" autocomplete="off"/>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="categoryCode">Quốc gia</label>
                                <form:select path="newCategoryCode" id="newCategoryCode" cssClass="custom-select">
                                    <form:option value="" label="--Chọn quốc gia--" />
                                    <form:options items="${modelCat}" />
                                </form:select>
                            </div>
                        </div>       
                        <form:hidden path="id" id="provinceId" />
                        <c:if test="${not empty model.id}">
                            <button type="button" class="btn btn-primary" id="btnAddOrUpdate"><i class="far fa-edit"></i> Cập
                                nhật</button>
                        </c:if>
                        <c:if test="${empty model.id}">
                            <button type="button" class="btn btn-primary" id="btnAddOrUpdate"><i class="fas fa-check"></i> Thêm
                                mới</button>
                        </c:if>
                        &nbsp;<button type="reset" class="btn btn-warning"><i class="fas fa-undo-alt"></i> Nhập lại</button>&nbsp;
                        <a class="btn btn-dark" href='<c:url value='/quantri/tinh/danh-sach?page=1'></c:url>'>
                        <i class="far fa-hand-point-left"></i> Quay lại</a>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">  
    $('#btnAddOrUpdate').click(function(e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formProvince').serializeArray();
        $.each(formData, function(i, v) {
            data["" + v.name + ""] = v.value;
        });
        var id = $('#provinceId').val();
        if( $("#formProvince").valid()){          
            if (id == "") {
                addProvince(data);    
            } else {
                updateProvince(data);
            }
        }     
    });

    function addProvince(data) {
        $.ajax({
            url: '${provinceAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {            
                window.location.href = "${provinceURL}?id="+result.id+"&message=add_success";              
            },
            error: function (error) {
                window.location.href = "${provinceURL}?message=error_system";
            }
        });
    }
    
    function updateProvince(data) {
        $.ajax({
            url: '${provinceAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${provinceURL}?id="+result.id+"&message=update_success";
            },
            error: function (error) {
                window.location.href = "${provinceURL}?id="+result.id+"&message=error_system";
            }
        });       
    }
</script>