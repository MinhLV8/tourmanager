<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/includes/taglib.jsp"%>
<c:url var="tourCatAPI" value="/api/tourcat" />
<c:url var="tourCatURL" value="/quantri/loai-tour/danh-sach" />
<c:url var="editTourCatURL" value="/quantri/loai-tour/chinh-sua" />
<html>
<head>
<title>Chỉnh sửa loại</title>
</head>
<body>
  <c:if test="${not empty model.id}">
        <h3 class="mt-4">Cập nhật loại</h3>
    </c:if>
    <c:if test="${empty model.id}">
        <h3 class="mt-4">Thêm mới loại</h3>
    </c:if>
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="<c:url value='/quantri/'/>">Trang chủ</a>
                    /
                    <a href="<c:url value='/quantri/bai-viet/danh-sach'/>">Chỉnh sửa loại tour</a>
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
                    <form:form action="#" method="get" id="formTourCat" modelAttribute="model" name="needs-validation">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="name">Tên loại tour</label>
                                <form:input path="name" cssClass="form-control" id="name" autocomplete="off"/>
                            </div>
                            <div class="form-group col-md-6">
                                <label for=code>Mã loại</label>
                                <form:input path="code" cssClass="form-control" id="code" autocomplete="off"/>
                            </div>
                        </div>       
                        <form:hidden path="id" id="tourCatId" />
                        <c:if test="${not empty model.id}">
                            <button type="button" class="btn btn-primary" id="btnAddOrUpdateTour"><i class="far fa-edit"></i> Cập
                                nhật</button>
                        </c:if>
                        <c:if test="${empty model.id}">
                            <button type="button" class="btn btn-primary" id="btnAddOrUpdateTour"><i class="fas fa-check"></i> Thêm
                                mới</button>
                        </c:if>
                        &nbsp;<button type="reset" class="btn btn-warning"><i class="fas fa-undo-alt"></i> Nhập lại</button>&nbsp;
                        <a class="btn btn-dark" href='<c:url value='/quantri/loai-tour/danh-sach?page=1'></c:url>'>
                        <i class="far fa-hand-point-left"></i> Quay lại</a>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">  
    $('#btnAddOrUpdateTour').click(function(e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formTourCat').serializeArray();
        $.each(formData, function(i, v) {
            data["" + v.name + ""] = v.value;
        });
        var id = $('#tourCatId').val();
        if( $("#formTourCat").valid()){          
            if (id == "") {
                addTourCat(data);    
            } else {
                updateTourCat(data);
            }
        }     
    });

    function addTourCat(data) {
        $.ajax({
            url: '${tourCatAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {            
                window.location.href = "${editTourURL}?id="+result.id+"&message=add_success";              
            },
            error: function (error) {
                window.location.href = "${editTourURL}?message=error_system";
            }
        });
    }
    
    function updateTourCat(data) {
        $.ajax({
            url: '${tourCatAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${editTourURL}?id="+result.id+"&message=update_success";
            },
            error: function (error) {
                window.location.href = "${editTourURL}?id="+result.id+"&message=error_system";
            }
        });       
    }
</script>