<%@include file="/includes/taglib.jsp"%>
<c:url var="tourAPI" value="/api/tour" />
<c:url var="tourURL" value="/quantri/tour/danh-sach" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách tour</title>
</head>
<body>
    <form action="<c:url value='/quantri/tour/danh-sach'/>" id="formSubmit" method="get">
        <h3 class="mt-4">Quản lý Tour - ${model.totalItem} tour</h3>
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="<c:url value='/quantri/'/>">Trang chủ</a>
                        <i class="fas fa-chevron-right"></i>
                        <a href="<c:url value='/quantri/tour/danh-sach'/>">Quản lý tour</a>
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
                                    <c:url var="createTourURL" value="/quantri/tour/chinh-sua" />
                                    <a class="btn btn-primary" data-toggle="tooltip" title='Thêm tour' href='${createTourURL}'>
                                        <i class="fas fa-plus"></i>
                                        Thêm tour
                                    </a>
                                    <button id="btnDelete" type="button" class="btn btn-warning" onclick="beforeDelete()" data-toggle="tooltip"
                                        title='Xóa bài viết' disabled="disabled"><i class="fas fa-trash-alt"></i> Xóa Tour</button>
                                </div>
                                <div class="btn-group" role="group" aria-label="Second group">
                                    <a class="btn btn-info" title='Thêm thể loại bài viết' href='/quantri/loai-tour/chinh-sua'>
                                        <i class="fas fa-plus"></i>
                                        Thêm loại tour
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="p-2 bd-highlight">
                            <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                <div class="btn-group mr-2" role="group" aria-label="First group">
                                    <div class="input-group flex-nowrap">
                                        <form action="#" method="get">
                                            <input name="search" class="form-control" placeholder="Tìm kiếm..." aria-label="Timkiem"
                                                aria-describedby="addon-wrapping" />
                                            <div class="input-group-append">
                                                <button type="submit" id="btnSearch" class="btn btn-primary"><i class="fas fa-search"></i> Tìm kiếm</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="btn-group mr-2" role="group" aria-label="Second group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="addon-wrapping">Lọc</span>
                                        </div>
                                        <select class="custom-select" id="inputGroupSelect01">
                                            <option selected>Chọn...</option>
                                            <option value="1">Đã xoá</option>
                                            <option value="2">Two</option>
                                        </select>
                                        <div class="input-group-append">
                                            <button class="btn btn-warning"><i class="fas fa-filter"></i> Lọc</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="btn-group" role="group" aria-label="Third group"></div>
                            </div>
                        </div>
                    </div>
                    <div class="float-none">&nbsp;</div>
                    <div class="col-xs-12">
                        <div class="table-responsive">
                            <table class="table table-hover" style="text-align: center;" id="tblData">
                                <thead class="thead-light">
                                    <tr>
                                        <th>
                                            <div class="col-auto my-1">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="checkAll" onclick="CheckUncheckAll(this)" />
                                                    <label class="custom-control-label" for="checkAll"></label>
                                                </div>
                                            </div>
                                        <th style="width: 220px;">Tên tour</th>
                                        <th>Hình ảnh</th>
                                        <th>Thời gian</th>
                                        <th>T/gian t/trung</th>
                                        <th>Số chỗ</th>
                                        <th>Giá</th>
                                        <th>Nơi khởi hành</th>
                                        <th>Loại tour</th>
                                        <th>Modified By</th>
                                        <th style="width: 100px">Thao tác</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="item" items="${model.listResult}">
                                        <tr>
                                            <td style="text-align: center">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="checkbox_${item.id}" value="${item.id}"
                                                        name="name[]">
                                                    <label class="custom-control-label" for="checkbox_${item.id}"></label>
                                                </div>
                                            </td>
                                            <td>${item.name}</td>                                           
                                            <td>
                                                <img style="width: 80px;" src='<c:url value="/template/web/images/blog/gallery/img-2.jpg"></c:url>'
                                                    class="rounded mx-auto d-block" alt="...">
                                               ${item.thumbnail}
                                            </td>
                                            <td>
                                                <fmt:formatDate pattern="dd/MM/yyyy" value="${item.departure}" /> <i class="fas fa-arrow-right"></i>
                                                <fmt:formatDate pattern="dd/MM/yyyy" value="${item.arrival}" />
                                            </td>
                                            <td><fmt:formatDate pattern="dd/MM/yyyy HH:mm a" value="${item.dateAndTimeOfGathering}" /></td>
                                            <td><span class="badge badge-info">${item.seat}</span></td>
											<td>
												<fmt:formatNumber type="number" pattern = "###,###,###" value="${item.priceAdult}" /> đ
											</td>
                                            <td>${item.provinceName}</td>
											<td>${item.tourCategoryName}</td>
                                            <td>
                                                <h5>
                                                    <span class="badge badge-warning">${item.modifiedBy}</span>
                                                </h5>
                                            </td>
                                            <td style="text-align: center">
                                                <c:url var="updateTourURL" value="/quantri/tour/chinh-sua">
                                                    <c:param name="id" value="${item.id}"></c:param>
                                                </c:url>
                                                <a class="btn btn-primary btn-sm" title="Cập nhật" href='${updateTourURL}'>
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <hr class="my-4">
                            <div class="d-flex align-items-sm-start bd-highlight">
                                <div class="p-2 flex-grow-1 bd-highlight">Hiển thị ${model.page} đến ${model.offset + model.limit} của
                                    ${model.totalItem} bài viết</div>
                                <div class="p-2 bd-highlight">
                                    <nav aria-label="Page navigation" class="pagination">
                                        <ul class="pagination" id="pagination"></ul>
                                    </nav>
                                </div>
                            </div>
                            <input type="hidden" value="1" id="page" name="page" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>
        var totalPages = ${model.totalPage};
        var currentPage = ${model.page};
        var limit = ${model.limit}
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
        $('#btnDelete').prop("disabled", true);
        $('input:checkbox').click(function() {
            if ($(this).is(':checked')) {
                $('#btnDelete').prop("disabled", false);
            } else {
                if ($('.checks').filter(':checked').length < 1) {
                    $('#btnDelete').attr('disabled', true);
                }
            }
        });
        function beforeDelete() {
        	Swal.fire({
        		  title: 'Bạn có chắc không ?',
        		  text: "Bạn sẽ không thể hoàn lại tác vụ này!",
        		  icon: 'warning',
        		  showCancelButton: true,
        		  confirmButtonColor: '#218838',
        		  cancelButtonColor: '#d33',
        		  confirmButtonText: 'Vâng, xoá đi!',
        		  cancelButtonText: 'Không, huỷ bỏ!',
        		  reverseButtons: true,
        		}).then((result) => {
        		  if (result.value) {
        			  var ids = $('tbody input[type=checkbox]:checked').map(function() {
                          return $(this).val();
                      }).get();
        			  deleteNew(ids);
        		  }else{Swal.fire('Đã huỷ','Dữ liệu đã an toàn :)','error')}    					         		  
        		})
        }
        function deleteNew(data) {
            $.ajax({
                url : '${tourAPI}',
                type : 'DELETE',
                contentType : 'application/json',
                data : JSON.stringify(data),
                success : function(result) {
                    window.location.href = "${tourURL}?page=" + currentPage+ "&message=delete_success";
                },
                error : function(error) {
                    window.location.href = "${tourURL}?page=" + currentPage+ "&message=error_system";
                }
            });
        }
    </script>
</body>
</html>