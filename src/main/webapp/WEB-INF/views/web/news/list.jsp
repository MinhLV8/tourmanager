<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/includes/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<section class="sub-banner">
    <div class="bg-parallax bg-1"></div>
    <div class="container">
        <div class="logo-banner text-center">
            <a href="#" title="">
                <img src="images/logo-banner.png" alt="">
            </a>
        </div>
    </div>
</section>
<div class="main">
    <div class="container">
        <div class="main-cn bg-white clearfix">
            <section class="breakcrumb-sc">
                <ul class="breadcrumb arrow">
                    <li>
                        <a href="index-2.html">
                            <i class="fa fa-home"></i>
                        </a>
                    </li>
                    <li>Our blog</li>
                </ul>
                <div class="search-blog">
                    <form action="#">
                        <input type="text" class="search-blog-input" placeholder="To seach type and hit enter">
                        <button class="btn-search-blog">Search</button>
                    </form>
                </div>
            </section>
            <form action="<c:url value='/quantri/bai-viet/danh-sach'/>" id="formSubmit" method="get">
            <section class="blog-content">
                <div class="row">
                    <div class="col-md-9 col-md-push-3 ">
                        <div class="post-cn">
                            <c:forEach var="item" items="${model.listResult}">
                            <div class="post">
                                <div class="post-media">
                                    <div class="image-wrap">
                                        <img src="<c:url value="/template/web/images/blog/gallery/img-2.jpg"></c:url>" alt="">
                                    </div>
                                </div>
                                <div class="post-text row">
                                    <div class="col-sm-6">
                                        <div class="author-date">
                                            <a href="#">${item.createdBy}</a>
                                            <small>///</small> <span><fmt:formatDate pattern="dd-MM-yyyy HH:mm" value="${item.createdDate}" /></span>
                                        </div>
                                        <h2>
                                            <a href="blog-detail.html">${item.title}</a>
                                        </h2>
                                        <div class="post-share">
                                            <a href="#" title="">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                            <a href="#" title="">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                            <a href="#" title="">
                                                <i class="fa fa-google-plus"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <p>${item.shortDes}
                                                <c:url var="detailNewURL" value="/bai-viet/chi-tiet">
                                                    <c:param name="id" value="${item.id}"></c:param>
                                                </c:url>
                                                <a href="${detailNewURL}">(Xem thêm...)</a>
                                        </p><!-- 
                                        <ul class="post-meta">
                                            <li>
                                                <a href="#">20 comments</a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    in <span>Summer, Ontario</span>
                                                </a>
                                            </li>
                                        </ul> -->
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            <div class="navpage-post">
                                <div class="d-flex align-items-sm-start bd-highlight">
                               <%--  <div class="p-2 flex-grow-1 bd-highlight">Hiển thị ${model.page} đến ${model.offset + model.limit} của
                                    ${model.totalItem} bài viết</div> --%>
                                      <ul class="pagination" id="pagination"></ul>
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
                    <div class="col-md-3 col-md-pull-9">
                        <div class="widget widget_categories">
                            <h2 class="title-sidebar">Thể loại</h2>
                            <ul>
                                <li>
                                    <a href="#">Tin tức</a>
                                </li>
                                <li>
                                    <a href="#">Cẩm nang du lịch</a>
                                </li>
                                <li>
                                    <a href="#">Kinh nghiệm du lịch</a>
                                </li>
                                <li>
                                    <a href="#">Thông tin Visa</a>
                                </li>
                            </ul>
                        </div>
                        <div class="widget widget_recent_entries">
                            <h2 class="title-sidebar">Bài viết gần đây</h2>
                            <ul>
                                <li>
                                    <a href="#">Chưa có bài viết nào</a>
                                    <span> / 20 comments</span>
                                </li>
                                <li>
                                    <a href="#">Chưa có bài viết nào</a>
                                    <span> / 20 comments</span>
                                </li>
                                <li>
                                    <a href="#">Chưa có bài viết nào</a>
                                    <span> / 20 comments</span>
                                </li>
                            </ul>
                        </div>
                        <div class="widget widget_tag_cloud">
                            <h2 class="title-sidebar">Tag</h2>
                            <div class="tagcloud">
                                <a href="#">Du-lich</a>
                                <a href="#">Kinh-nghiệm</a>
                                <a href="#">đà nẵng</a>
                                <a href="#">vietnam</a>
                                <a href="#">visa</a>
                                <a href="#">cam nang</a>
                            </div>
                        </div>
                        <div class="widget widget_archive">
                            <h2 class="title-sidebar">Archives</h2>
                            <ul class="nav-sidebar-blog">
                                <li>
                                    <a href="#">Tháng 6 2020</a>
                                </li>
                                <li>
                                    <a href="#">Tháng 5 2020</a>
                                </li>
                                <li>
                                    <a href="#">Tháng 4 2020</a>
                                </li>
                                <li>
                                    <a href="#">Tháng 3 2020</a>
                                </li>
                                <li>
                                    <a href="#">Tháng 2 2020</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
             </form>
        </div>
    </div>
</div>
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
</script>
</body>
</html>
