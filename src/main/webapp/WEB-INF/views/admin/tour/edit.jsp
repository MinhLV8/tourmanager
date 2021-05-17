<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/includes/taglib.jsp"%>
<c:url var="tourAPI" value="/api/tour" />
<c:url var="tourURL" value="/quantri/tour/danh-sach" />
<c:url var="editTourURL" value="/quantri/tour/chinh-sua" />
<html>
<head>
<title>Chỉnh sửa bài viết</title>
</head>
<body>
    <c:if test="${not empty model.id}">
        <h3 class="mt-4">Cập nhật tour</h3>
    </c:if>
    <c:if test="${empty model.id}">
        <h3 class="mt-4">Thêm bài tour</h3>
    </c:if>
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="<c:url value='/quantri/'/>">Trang chủ</a>
                    /
                    <a href="<c:url value='/quantri/tour/danh-sach'/>">Chỉnh sửa tour</a>
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
                    <form:form action="#" method="get" id="formTour" modelAttribute="model" name="needs-validation">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="name">Tên tour</label>
                                <form:input path="name" cssClass="form-control" id="name" autocomplete="off"/>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="departure">Ngày khởi hành</label>
                                <fmt:formatDate pattern="yyyy-MM-dd" value="${model.departure}" var="departure"/>
                                <input type="date" name="departure" class="form-control" id="departure" value="${departure}"/>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="arrival">Ngày về</label>
                                <fmt:formatDate pattern="yyyy-MM-dd" value="${model.arrival}" var="arrival"/>
                                <input type="date" name="arrival" class="form-control" id="arrival" value="${arrival}" /> 
                            </div>
                            <div class="form-group col-md-2">
                                <label for="dateAndTimeOfGathering">Ngày giờ tập trung</label> 
                                <fmt:formatDate pattern="yyyy-MM-dd'T'HH:mm" value="${model.dateAndTimeOfGathering}" 
                                var="dateAndTimeOfGathering"/>
								<input type="datetime-local" name="dateAndTimeOfGathering" id="dateAndTimeOfGathering"
                                    class="form-control" value="${dateAndTimeOfGathering}"/>
                                   <!-- djhdd --> 
							</div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="thumbnail">Hình ảnh :</label>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="thumbnail" name="thumbnail"
                                        onchange="this.nextElementSibling.innerText = this.files[0].name">
                                    <label id="thumbnail" class="custom-file-label" for="thumbnail" data-browse="Duyệt hình ảnh">Chọn hình
                                        ảnh...</label>
                                </div>
                            </div>
                             <div class="form-group col-md-2">
                                <label for="seat">Số chỗ</label>
                                <form:input path="seat" cssClass="form-control" id="seat" />
                            </div>
                             <div class="form-group col-md-2">
                                <label for="placeOfGathering">Nơi tập trung</label>
                                <form:input path="placeOfGathering" cssClass="form-control" id="placeOfGathering" />
                            </div>
                            <div class="form-group col-md-2">
                                <label for="tourcategoryCode">Loại tour</label>
                                <form:select path="tourCategoryCode" id="tourCategoryCode" cssClass="custom-select">
                                    <form:option value="" label="--Chọn loại tour--" />
                                    <form:options items="${modelCat}" />
                                </form:select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <label for="priceAdult">Giá</label>
                                <fmt:formatNumber type="number" pattern = "###,###,###" value="${model.priceAdult}" var="priceAdult"/>
                                <form:input path="priceAdult" cssClass="form-control" id="priceAdult" value="${priceAdult}"/>                       
                            </div>
                            <div class="form-group col-md-2">
                                <label for="tourGuide">Hướng dẫn viên</label>
                                <form:input path="tourGuide" cssClass="form-control" id="tourGuide"/>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="surchargeSingleRoom">Phụ thu phòng đơn</label>
                                <fmt:formatNumber type="number" pattern = "###,###,###" value="${model.surchargeSingleRoom}" var="surchargeSingleRoom"/>
                                <form:input path="surchargeSingleRoom" cssClass="form-control" id="surchargeSingleRoom" value="${surchargeSingleRoom}"/>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="hotel">Thông tin khách sạn</label>
                                <form:input path="hotel" cssClass="form-control" id="hotel" />
                            </div>
                            <div class="form-group col-md-2">
                                <label for="provinceCode">Nơi khởi hành</label>
                                <form:select path="provinceCode" id="provinceCode" cssClass="custom-select">
                                    <form:option value="" label="--Chọn Tỉnh--" />
                                    <form:options items="${modelProvince}" />
                                </form:select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="content">Chương trình tour</label>
                            <form:textarea path="tourProgram" cssClass="ckeditor" id="tourProgram" />
                        </div>
                        <form:hidden path="id" id="tourId" />
                        <c:if test="${not empty model.id}">
                            <button type="button" class="btn btn-primary" id="btnAddOrUpdateTour"><i class="far fa-edit"></i> Cập
                                nhật</button>
                        </c:if>
                        <c:if test="${empty model.id}">
                            <button type="button" class="btn btn-primary" id="btnAddOrUpdateTour"><i class="fas fa-check"></i> Thêm
                                mới</button>
                        </c:if>
                        &nbsp;<button type="reset" class="btn btn-warning"><i class="fas fa-undo-alt"></i> Nhập lại</button>&nbsp;
                        <a class="btn btn-dark" href='<c:url value='/quantri/tour/danh-sach?page=1'></c:url>'>
                        <i class="far fa-hand-point-left"></i> Quay lại</a>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
    var editor = '';
    $(document).ready(function() {
        editor = CKEDITOR.replace('tourProgram');
    });
    
    $('#btnAddOrUpdateTour').click(function(e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formTour').serializeArray();
        $.each(formData, function(i, v) {
            data["" + v.name + ""] = v.value;
        });
        data["tourProgram"] = CKEDITOR.instances.tourProgram.getData();
        var id = $('#tourId').val();
        if( $("#formTour").valid()){          
            if (id == "") {
                addTour(data);    
            } else {
                updateTour(data);
            }
        }     
    });

    function addTour(data) {
        $.ajax({
            url: '${tourAPI}',
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
    
    function updateTour(data) {
        $.ajax({
            url: '${tourAPI}',
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
</body>
</html>
