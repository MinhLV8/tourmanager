<%@include file="/includes/taglib.jsp"%>
<c:url var="provinceAPI" value="/api/province" />
<c:url var="provinceURL" value="/quantri/tinh/danh-sach" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách tỉnh thành</title>
</head>
<body>
    <form action="<c:url value='/quantri/tinh/danh-sach'/>" id="formSubmit" method="get">
        <h3 class="mt-4">Quản lý tỉnh thành - ${model.totalItem } tỉnh</h3>
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="<c:url value='/quantri/'/>">Trang chủ</a>
                        <i class="fas fa-chevron-right"></i>
                        <a href="<c:url value='/quantri/tinh/danh-sach'/>">Quản lý tỉnh thành</a>
                    </li>
                </ul>
            </div>
            <c:if test="${not empty message}">
                <script type="text/javascript">
                    $(document).ready(function() {
                        ${message}
                    });
                </script>
            </c:if>
            <div class="card mb-4 bg-light">
                <div class="card-body">
                    <div class="d-flex bd-highlight">
                        <div class="p-2 flex-grow-1 bd-highlight">
                            <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                <div class="btn-group mr-2" role="group" aria-label="First group">
                                    <a class="btn btn-primary" title=''
                                        href="<c:url value='/quantri/tinh/chinh-sua'/>">
                                        <i class="fas fa-plus"></i>
                                        Thêm tỉnh mới
                                    </a>
                                    <button id="btnDelete" type="button" class="btn btn-warning" onclick="beforeDelete()" data-toggle="tooltip"
                                        title='Xóa bài viết' disabled="disabled"><i class="fas fa-trash-alt"></i> Xóa tỉnh</button>
                                </div>               
                            </div>
                        </div>
                        <div class="p-2 bd-highlight">
                            <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                <div class="btn-group" role="group" aria-label="Third group">
                                </div>
                            </div>
                        </div>
                    </div>                  
                    <div class="float-none">&nbsp;</div>
                    <div class="col-xs-12">
                        <div class="table-responsive">
                            <table class="table table-hover" style="text-align: center;" id="tblData">
                                <thead class="thead-light">
                                    <tr>
                                        <th style="width: 120px;">
                                            <div class="col-auto my-1">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="checkAll" onclick="CheckUncheckAll(this)" />
                                                    <label class="custom-control-label" for="checkAll"></label>
                                                </div>
                                            </div>
                                        <th>#ID</th>
                                        <th style="width: 520px;">Tên tỉnh</th>
                                        <th>Mã mã tỉnh</th>
                                        <th style="width: 100px">Thao tác</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="item" items="${model.listResult}">
                                        <tr>
                                            <td style="text-align: center">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" 
                                                    id="checkbox_${item.id}" value="${item.id}" name="name[]">
                                                    <label class="custom-control-label" for="checkbox_${item.id}"></label>
                                                </div>
                                            </td>
                                            <td>${item.id}</td>
                                            <td>${item.name}</td>
                                            <td>${item.code}</td>
                                            <td style="text-align: center">
                                                <c:url var="updateProvinceURL" value="/quantri/tinh/chinh-sua">
                                                    <c:param name="id" value="${item.id}"></c:param>
                                                </c:url>
                                                <a class="btn btn-primary btn-sm" title=""
                                                href='${updateProvinceURL}'>
                                                    <i class="fa fa-edit"></i>
                                                    Cập nhật
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <hr class="my-4">
                            <div class="d-flex align-items-sm-start bd-highlight">
                                <div class="p-2 flex-grow-1 bd-highlight">Hiển thị ${model.page} đến ${model.offset + model.limit} của
                                    ${model.totalItem} tỉnh</div>
                                <div class="p-2 bd-highlight">
                                    <nav aria-label="Page navigation" class="pagination">
                                        <ul class="pagination" id="pagination"></ul>
                                    </nav>
                                </div>
                            </div>
                            <input type="hidden" value="" id="page" name="page" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>
        var totalPages = ${model.totalPage};
        var currentPage = ${model.page};
        var limit = ${model.limit};
        $(function() {
            window.pagObj = $('#pagination').twbsPagination({
                totalPages : totalPages,
                visiblePages : 5,
                startPage : currentPage,
                onPageClick : function(event, page) {
                    if (currentPage != page) {
                        $('#limit').val(limit);
                        $('#page').val(page);
                        $('#formSubmit').submit();
                    }
                }
            });
        });
        function CheckUncheckAll(checkAll) {
            var rows = document.getElementById("tblData").rows;
            for (var i = 1; i < rows.length; i++) {
                rows[i].getElementsByTagName("input")[0].checked = checkAll.checked;
            }
        };

        function CheckUncheckHeader() {
            var checkAll = document.getElementById("checkAll");
            checkAll.checked = true;
            var rows = document.getElementById("tblData").rows;
            for (var i = 1; i < rows.length; i++) {
                if (!rows[i].getElementsByTagName("input")[0].checked) {
                    checkAll.checked = false;
                    break;
                }
            }
        };
        function beforeDelete() {
            swal({
                  title: "Bạn có chắc chắn ?",
                  text: "Dữ liệu của bạn sẽ không thể khôi phục!",
                  type: "warning",
                  showCancelButton: true,
                  confirmButtonClass: "btn-success btn-sm",
                  cancelButtonClass: "btn-outline-danger btn-sm",
                  confirmButtonText: "Đồng ý !",
                  cancelButtonText: "Không !",
                  closeOnConfirm: false,
                  closeOnCancel: false
                },
                function(isConfirm) {
                  if (isConfirm) {
                      var ids = $('tbody input[type=checkbox]:checked').map(function () {
                          return $(this).val();
                      }).get();
                      deleteNewCat(ids);                      
                  } else {
                      swal("Đã hủy !", "Dữ liệu của bạn đã an toàn :)", "error");
                      }
                });
        }
        function deleteNewCat(data) {
            $.ajax({
                url: '${provinceAPI}',
                type: 'DELETE',
                contentType: 'application/json',
                data: JSON.stringify(data),
                success: function (result) {
                    window.location.href = "${provinceURL}?page="+currentPage+"&message=delete_success";
                },
                error: function (error) {
                    window.location.href = "${provinceURL}?page=1&message=error_system";
                }
            });
        }
        $('#btnDelete').prop("disabled", true);
        $('input:checkbox').click(function() {
         if ($(this).is(':checked')) {
         $('#btnDelete').prop("disabled", false);
         } else {
         if ($('.checks').filter(':checked').length < 1){
         $('#btnDelete').attr('disabled',true);}
         }
        });
    </script>
</body>
</html>