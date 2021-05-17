<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/includes/taglib.jsp"%>
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
					<li>Blog Detail</li>
				</ul>
				<div class="search-blog">
					<form action="http://envato.megadrupal.com/html/bookawesome/blogsearch">
						<input type="text" class="search-blog-input" placeholder="To seach type and hit enter">
						<button class="btn-search-blog">Search</button>
					</form>
				</div>
			</section>
			<section class="blog-content">
				<div class="row">
					<div class="col-md-9 col-md-push-3">
						<div class="post post-single">
							<div class="author-date">
								<a href="#">${model.createdBy}</a>
								<small>///</small><span> <fmt:formatDate pattern="dd-MM-yyyy HH:mm" value="${model.createdDate}" /></span>
							</div>
							<h1 class="title-post-head"></h1>
							<div class="post-media">
								<div class="image-wrap">
									<img src="<c:url value="/template/web/images/blog/gallery/img-2.jpg"></c:url>" alt="">
								</div>
							</div>
							<div class="post-content">
								<blockquote>
									<p>${model.shortDes}</p>
								</blockquote>
								<br>
								${model.content}
							</div>
							<div class="post-meta-share">
								<ul class="post-meta float-left">
									<li>
										<a href="#">20 comments</a>
									</li>
									<li>
										<a href="#">
											<span>in</span> Summer, Ontario
										</a>
									</li>
								</ul>
								<div class="post-share float-right">
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
		</div>
	</div>
</div>