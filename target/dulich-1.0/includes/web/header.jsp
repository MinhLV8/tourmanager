<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header id="header" class="header">
    <div class="topnav">
        <div class="container">
                <a><i class="fa fa-envelope"></i> leminh3214789@gmail.com <i class="fa fa-grip-lines-vertical"></i></a>
                <a><i class="fa fa-phone"></i> Hotline: 0964554389</a>
                <div class="topnav-right">
                <a href="#booking"><i class="fa fa-shopping-cart"></i> Booking</a>
                <a data-toggle="modal" data-target="#exampleModal"><i class="fa fa-sign-in"></i> Đăng nhập</a>
                <a href="#dangky"><i class="fa fa-key"></i> Đăng ký</a>
            </div>
            </div>          
        </div>
    <div class="container">
        <div class="logo float-left">
            <a href="index-2.html" title=""><img src="<c:url value='/template/web/images/logo-header1.png'/>" alt="" /></a>
        </div>
        <div class="bars" id="bars"></div>
        <nav class="navigation nav-c" id="navigation" data-menu-type="1200">
            <div class="nav-inner">
                <a href="#" class="bars-close" id="bars-close">Close</a>
                <div class="tb">
                    <div class="tb-cell">
                        <ul class="menu-list text-uppercase">
                            <li><a href="#" title="">Trang chủ</a></li>
                            <li>
                                <!-- class="current-menu-parent" -->
                                <a href="#" title="">Tours</a>
                                <ul class="sub-menu">
                                    <li class="current-menu-item"><a href="home-tour.html" title="">Tours</a></li>
                                    <li><a href="tour-list.html">Tour List</a></li>
                                    <li><a href="tour-detail.html">Tour Detail</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" title="">Tin tức</a>
                                <ul class="sub-menu">
                                    <li><a href="home-hotel.html" title="">Hotel</a></li>
                                    <li><a href="hotel-list.html">Hotel List 1</a></li>
                                    <li><a href="hotel-list-2.html">Hotel List 2</a></li>
                                    <li><a href="hotel-maps.html">Hotel Map</a></li>
                                    <li><a href="hotel-detail.html">Hotel Detail</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" title="">Khuyến mãi</a>
                                <ul class="sub-menu">
                                    <li><a href="home-flight.html" title="">Flights</a></li>
                                    <li><a href="flight-list.html">Flight List</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" title="">Liên hệ</a>
                                <ul class="sub-menu">
                                    <li><a href="home-car.html" title="">Car</a></li>
                                    <li><a href="car-list.html">Cart List</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</header>

<!-- Modal đăng nhập -->
<div class="modal" tabindex="-1" role="dialog" id="exampleModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">&nbsp;
        <div class="col-md-6"><h4 class="modal-title" id="exampleModalLongTitle"><span style="color: #59c45a;font-weight: bold">Đăng nhập</span></h4></div>     
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span style="color: #ff0000; font-size: 150%" aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">    
         <div class="row">
          <div class="col-md-6">
           <img src="<c:url value='/template/web/images/logo-login.png'/>" alt="">
        </div>
      <div class="col-md-6">
       <form action="#dangnhap" method="get">
          <div class="form-group">
           <label for="username" class="col-form-label">Tài khoản:</label>     
          <div class="row">
            <div class="col-md-12"><input type="text" class="form-control" id="username"></div>        
          </div>
          </div>
          <div class="form-group">
          <label for="password" class="col-form-label">Mật Khẩu:</label>
          <div class="row">                  
            <div class="col-md-12"> <input type="password" class="form-control" id="password"></input></div>    
            </div>     
          </div> 
           <div class="checkbox"><label style="color: #59c45a; font-size: 120%">
                 <input name="remember" id="remember" type="checkbox">
                 Nhớ thông tin </label>
        <p class="help-block">(Nếu sử dụng máy tính cá nhân)</p>
       </div>     
      </div>
    </div>
        <p style="color: #59c45a; font-size: 120%">Bạn chưa có tài khoản? <a href="#dangky" class="tooltip-test" title="Đăng ký"> Đăng ký ngay hoàn toàn miễn phí.</a></p>
        <p style="color: #59c45a; font-size: 120%">Quên mật khẩu? <a href="#dangnhap" class="tooltip-test" title="Quên mật khẩu"> Lấy lại mật khẩu.</a></p>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-success"><i class="fa fa-sign-in"></i> Đăng nhập</button>
        <button type="reset" class="btn btn-danger"><!-- data-dismiss="modal" --><i class="fa fa-ban"></i> Reset</button>
        </form>
      </div>
    </div>
  </div>
</div>
<!--   -->