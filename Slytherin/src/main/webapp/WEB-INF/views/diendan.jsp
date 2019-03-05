<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Diễn đàn</title>
	<link rel="shortcut icon" type="image/x-icon" href='<c:url value="/resources/image/icon/photo-camera.png"/>'>
	<jsp:include page="header.jsp"/>
</head>
<body >
	<div class="container-fluid" id="div-top-shop">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-3" id="hello-span">
				<span >Chào mừng các bạn đến với website</span>
			</div>
			<div class="col-lg-5 col-md-4 col-sm-4">
				<div class="site-title-shop" align="center">
					<a href="index.php">Slytherin</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-5 col-sm-3" align="right">
				<div class="p-t-logo">
					<div class="row">
						<div class="col-lg-7" >
							<div id="search">
								<div class="row">
									<div class="col-lg-10 col-md-10 col-sm-10" style="padding: 0px;">
										<input type="text" name="txtSearch" id="txtSearch">
									</div>
									<div id="btn-search" class="col-lg-2 col-md-2 col-sm-2" style="padding-left:5px;">
										<img class="image-search" src='<c:url value="/resources/image/icon/search-gay.png"/>' alt="">
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-5" style="padding-left: 0px;">
							<a href='login.php' id='login-top'>Đăng nhập</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="nav-sticky">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div>
						<ul class="nav justify-content-center pd-t">
							<li class="nav-item">
						    	<a class="nav-link active" href="/Slytherin">Trang chủ</a>
						  	</li>
						  	<li class="nav-item">
						    	<a class="nav-link" href="bosuutap">Bộ sưu tập</a>
						  	</li>
						  	<li class="nav-item">
						    	<a class="nav-link" href="">Diễn đàn</a>
						  	</li>
						  	<li class="nav-item">
						    	<a class="nav-link" href="about.php">Thông tin</a>
						  	</li>
						  	<li class="nav-item">
						    	<a class="nav-link" href="#">Liên kết</a>
						  	</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="froum-all">
		<div class="container-fluid" style="padding: 0px;">
			<div class="row">
				<div class="col-lg-8">
					<div class="froum-content">
						<div class="header-avatar-froum">
							<div class="row">
								<div class="avatar-froum-div col-lg-2" style="padding: 0px;">
									<img class="avatar-froum" src='<c:url value="/resources/image/avatarresize/user.png"/>' alt="">
								</div>
								<div class="col-lg-10">
									<a href="others.php?username=" style="font-weight: 500">Slytherin</a><br>
									<span style="font-size: 15px;">Ngày đăng: </span>
								</div>
							</div>
						</div>
						<div>
							<a href="image.php?id=" title="">
								<img class="image-froum" src='<c:url value="/resources/image/resize/dog_mountains_sitting_121350_3840x2160.jpg"/>' alt="">
							</a>
						</div>
						<div class="icon-like">
							<button id="like-<?php echo $item['MaHinhAnh']?>">
								<img src='<c:url value="/resources/image/icon/like-like.png"/>'>
							</button>
							<span>Thích</span>
						</div>
						<div class="describe-image">
							<span>0 lượt thích</span><br>
							<span>Mô tả</span><br>
						</div>
					</div>
					<div class="froum-content">
						<div class="header-avatar-froum">
							<div class="row">
								<div class="avatar-froum-div col-lg-2" style="padding: 0px;">
									<img class="avatar-froum" src='<c:url value="/resources/image/avatarresize/user.png"/>' alt="">
								</div>
								<div class="col-lg-10">
									<a href="others.php?username=" style="font-weight: 500">Slytherin</a><br>
									<span style="font-size: 15px;">Ngày đăng: </span>
								</div>
							</div>
						</div>
						<div>
							<a href="image.php?id=" title="">
								<img class="image-froum" src='<c:url value="/resources/image/resize/resize_watercolor_eye_by_yumizu_chan-d82gcgo.jpg"/>' alt="">
							</a>
						</div>
						<div class="icon-like">
							<button id="like-<?php echo $item['MaHinhAnh']?>">
								<img src='<c:url value="/resources/image/icon/like-like.png"/>'>
							</button>
							<span>Thích</span>
						</div>
						<div class="describe-image">
							<span>0 lượt thích</span><br>
							<span>Mô tả</span><br>
						</div>
					</div>
					<div class="froum-content">
						<div class="header-avatar-froum">
							<div class="row">
								<div class="avatar-froum-div col-lg-2" style="padding: 0px;">
									<img class="avatar-froum" src='<c:url value="/resources/image/avatarresize/user.png"/>' alt="">
								</div>
								<div class="col-lg-10">
									<a href="others.php?username=" style="font-weight: 500">Slytherin</a><br>
									<span style="font-size: 15px;">Ngày đăng: </span>
								</div>
							</div>
						</div>
						<div>
							<a href="image.php?id=" title="">
								<img class="image-froum" src='<c:url value="/resources/image/resize/phone_headphones_player_106009_3840x2160-min.jpg"/>' alt="">
							</a>
						</div>
						<div class="icon-like">
							<button id="like-<?php echo $item['MaHinhAnh']?>">
								<img src='<c:url value="/resources/image/icon/like-like.png"/>'>
							</button>
							<span>Thích</span>
						</div>
						<div class="describe-image">
							<span>0 lượt thích</span><br>
							<span>Mô tả</span><br>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="row" style="padding-left: 15px;">
						<div class="avatar-froum-div col-lg-4" style="padding: 0px;">
							<img class="avatar-froum" src='<c:url value="/resources/image/avatar/user.png"/>' alt="">
						</div>
						<div class="col-lg-8">
							<span style="font-size: 15px;">Bạn chưa đăng nhập</span>
						</div>
					</div>
					<div id="top-like">
						<div class="title-toplike">
							<span >Ảnh nhiều lượt thích</span>
						</div>
						<div class="image-top-like-all">
							<div class="row">
								<div class="col-lg-5">
									<img class="image-top-like" src='<c:url value="/resources/image/resize/cat_winter_fluffy_snow_99366_3840x2160-min.jpg"/>' alt="">
								</div>
								<div class="col-lg-5">
									<span>0 lượt thích</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="info-bottom">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-4">
					<div class="padding-sly">
						<h1 class="site-title">
							<a href="#">Slytherin</a>
						</h1>
						<p class="site-tiny">Khám phá thế giới muôn màu</p>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="row">
						<div class="col-lg-6">
							<span class="font-bold-bottom">Liên hệ với chúng tôi</span><br><br>
							<div class="font-info-bottom">
								<span>Bạn có câu hỏi gì không?</span><br>
								<span>Hãy cho chúng tôi biết tại cửa hàng ở 12 Tây Sơn Hà Nội hoặc liên lạc với chúng tôi qua số điện thoại 099099099</span><br>
							</div>
							<div class="p-t-logo">
								<a class="p-r-logo" href="https://www.facebook.com/">
									<img class="icon-logo" src='<c:url value="/resources/image/icon/fb-logo.png"/>' alt="">
								</a>
								<a class="p-r-logo" href="https://www.google.com/">
									<img class="icon-logo" src='<c:url value="/resources/image/icon/google-plus.png"/>' alt="">
								</a>
								<a class="p-r-logo" href="">
									<img class="icon-logo" src='<c:url value="/resources/image/icon/inta-logo.png"/>' alt="">
								</a>
								<a class="p-r-logo" href="">
									<img class="icon-logo" src='<c:url value="/resources/image/icon/sky-logo.png"/>' alt="">
								</a>
								<a class="p-r-logo" href="">
									<img class="icon-logo" src='<c:url value="/resources/image/icon/twitter-logo.png"/>' alt="">
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-4 col-sm-4">
							<span class="font-bold-bottom">Danh mục</span><br><br>
							<div >
								<ul >
									<li class="p-b-li"><a href="#" class="font-info-bottom ">Đầm</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Kính râm</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Đồng hồ</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Giày</a></li>
								</ul>

							</div>
						</div>
						<div class="col-lg-2 col-md-4 col-sm-4">
							<span class="font-bold-bottom">Liên kết</span><br><br>
							<div >
								<ul >
									<li class="p-b-li"><a href="#" class="font-info-bottom ">Tìm kiếm</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Về chúng tôi</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Liên hệ chúng tôi</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Facebock</a></li>
								</ul>

							</div>
						</div>
						<div class="col-lg-2 col-md-4 col-sm-4">
							<span class="font-bold-bottom">Trợ giúp</span><br><br>
							<div >
								<ul >
									<li class="p-b-li"><a href="#" class="font-info-bottom">Kiểm tra</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Bộ sưu tập</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Hình ảnh</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Download</a></li>
								</ul>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="p-l-r-bt">
			<div class="row">
				<div class="col-lg-6">
					<span class="font-info-bottom">© 2018 Slytherin. Tất cả các quyền được bảo lưu.</span>
				</div>
				<div class="col-lg-6">
					<span class="font-info-bottom">Khu vực và các quốc gia: Việt Nam, Thái Lan, Singapore, Lào, Nhật Bản</span>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>
</body>
</html>