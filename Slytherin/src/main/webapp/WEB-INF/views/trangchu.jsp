<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf8">
	<title>Trang chủ</title>
	<link rel="shortcut icon" type="image/x-icon" href='<c:url value="/resources/image/icon/photo-camera.png"/>'>
	<jsp:include page="header.jsp"/>
	
</head>
<body >
	<div class="container-fluid" id="div-top">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6" id="hello-span">
				<span >Chào mừng các bạn đến với website</span>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6" align="right">
				<div class="p-t-logo">
					<div class="row">
						<div class="col-lg-8" style="padding-right: 0px;">
							<div id="search">
								<div class="row">
									<div class="col-lg-11 col-md-11 col-sm-11" style="padding: 0px;">
										<input type="text" name="txtSearch" id="txtSearch">
									</div>
									<div id="btn-search" class="col-lg-1 col-md-1 col-sm-1" style="padding-left:  5px;">
										<img class="image-search" src='<c:url value="/resources/image/icon/search-gay.png"/>' alt="">
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4" style="padding-left: 0px;">
							<c:choose>
								<c:when test="${user!=null}">
									<a href='/Slytherin/hoso' id="account-name">${user.getTenDangNhap()}</a>
									<a href='dangnhap/dangxuat' id="logout">/Đăng xuất</a>
								</c:when>
								<c:otherwise>
									<a href='dangnhap' id='login-top'>Đăng nhập</a>
								</c:otherwise>
							</c:choose>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="padding-sly">
					<h1 class="site-title">
						<a href="/Slytherin">Slytherin</a>
					</h1>
					<p class="site-tiny">Khám phá thế giới muôn màu</p>
				</div>
			</div>
		</div>
	</div>
	<div id="nav-sticky">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<ul class="nav justify-content-center">
					  <li class="nav-item">
					    <a class="nav-link active" href="#">Trang chủ</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="bosuutap">Bộ sưu tập</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="diendan">Diễn đàn</a>
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
	<div class="container-fluid" style="padding-right: 0px;padding-left: 0px;">
		<div id="demo" class="carousel slide" data-ride="carousel">

		  <!-- Indicators -->
		  <ul class="carousel-indicators">
		    <li data-target="#demo" data-slide-to="0" class="active"></li>
		    <li data-target="#demo" data-slide-to="1"></li>
		    <li data-target="#demo" data-slide-to="2"></li>
		    <li data-target="#demo" data-slide-to="3"></li>
		  </ul>

		  <!-- The slideshow -->
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		    	<div class="new-arrivals">
		    		<div id="new-arrivals-text">
						<div id="new-arrivals-box">
							<span>Khám phá thế giới thông qua đôi mắt của nhiếp ảnh gia</span><br>
						</div>
					</div>
		    	</div>
		    </div>
		    <div class="carousel-item">
				<div class="new-arrivals1">
		    		<div id="new-arrivals-text">
						<div id="new-arrivals-box">
							<span>Cùng tìm kiếm những bức ảnh tuyệt vời cho bạn</span><br>
						</div>
					</div>
		    	</div>
		    </div>
		    <div class="carousel-item">
				<div class="new-arrivals2">
		    		<div id="new-arrivals-text">
						<div id="new-arrivals-box">
							<span>Khám phá thế giới thông qua đôi mắt của nhiếp ảnh gia</span><br>
						</div>
					</div>
		    	</div>
		    </div>
		    <div class="carousel-item">
				<div class="new-arrivals3">
		    		<div id="new-arrivals-text">
						<div id="new-arrivals-box">
							<span>Khám phá thế giới thông qua đôi mắt của nhiếp ảnh gia</span><br>
						</div>
					</div>
		    	</div>
		    </div>
		  </div>

		  <!-- Left and right controls -->
		  <a class="carousel-control-prev" href="#demo" data-slide="prev">
		    <span class="carousel-control-prev-icon"></span>
		  </a>
		  <a class="carousel-control-next" href="#demo" data-slide="next">
		    <span class="carousel-control-next-icon"></span>
		  </a>

		</div>
	</div>
	<div id="product-list">
		<div class="container-fluid">
			<span class="f-40">BỘ SƯU TẬP NỔI BẬT</span>
			<div class="row" style="margin-top: 30px;">
				<c:forEach items="${bosuutap}" var="dsbosuutap">
					<div class="col-lg-4 col-md-6 col-sm-12 p-l-r-bst">
						<a href="/Slytherin/bosuutap/${dsbosuutap.getMaBoSuuTap()}" title="">
							<div class="grid">
								<figure class="effect-marley">
			                        <img src='<c:url value="/resources/image/${dsbosuutap.getAnhBoSuuTap() }"/>' alt="img12"/>
			                        <figcaption>
			                            <h2>${dsbosuutap.getTenBoSuuTap()}</h2>
			                            <p>${dsbosuutap.getMoTa()}</p>
			                        </figcaption>
			                    </figure>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div id="featured-photos">
		<div class="container-fluid">
			<span class="f-40">HÌNH ẢNH NỔI BẬT</span>
			<div id="featured-photos-list">
				<div class="row">
					<c:forEach items="${hinhanh}" var="dshinhanh">
						<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
							<a href="hinhanh/${dshinhanh.getTenHinhAnh()}" title="">
								<img class="featured-photos-object" src='<c:url value="/resources/image/resize/${dshinhanh.getResize()}"/>' alt="">
							</a>
						</div>
					</c:forEach>
					
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
						<div class="col-lg-6" style="margin-bottom: 30px;">
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
							<span class="font-bold-bottom">Bộ sưu tập</span><br><br>
							<div >
								<ul >
									<li class="p-b-li"><a href="#" class="font-info-bottom ">Động vật</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Thiên nhiên</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Công nghệ</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Trò chơi</a></li>
									<li class="p-b-li"><a href="#" class="font-info-bottom">Đồ ăn</a></li>
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