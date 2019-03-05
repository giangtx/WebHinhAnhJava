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
							<a href='dangnhap' id='login-top'>Đăng nhập</a>
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
						<a href="">Slytherin</a>
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
					<div class="col-lg-4 col-md-6 col-sm-12 p-l-r-bst">
					<div class="grid">
						<figure class="effect-marley">
	                        <img src='<c:url value="/resources/image/dog-min.jpg"/>' alt="img12"/>
	                        <figcaption>
	                            <h2>Động <span>Vật</span></h2>
	                            <p>Khám phá động vật qua những hình ảnh và những khoảng khắc của chúng.</p>
	                        </figcaption>
	                    </figure>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 p-l-r-bst">
					<div class="grid">
						<figure class="effect-marley">
	                        <img src='<c:url value="/resources/image/nature-min.jpg"/>' alt="img12"/>
	                        <figcaption>
	                            <h2>Thiên <span>Nhiên</span></h2>
	                            <p>Khám phá vẻ đẹp hùng vĩ của thiên nhiên qua hình ảnh.</p>
	                        </figcaption>
	                    </figure>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 p-l-r-bst">
					<div class="grid">
						<figure class="effect-marley">
	                        <img src='<c:url value="/resources/image/food-min.jpg"/>' alt="img12"/>
	                        <figcaption>
	                            <h2>Đồ <span>Ăn</span></h2>
	                            <p>Đắm chìm vào thế giới của đồ ăn qua những hình ảnh của chúng tôi.</p>
	                        </figcaption>
	                    </figure>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 p-l-r-bst">
					<div class="grid">
						<figure class="effect-marley">
	                        <img src='<c:url value="/resources/image/tech-min.jpg"/>' alt="img12"/>
	                        <figcaption>
	                            <h2>Công <span>Nghệ</span></h2>
	                            <p>Cùng nhau học hỏi và khám phá công nghệ .</p>
	                        </figcaption>
	                    </figure>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 p-l-r-bst">
					<div class="grid">
						<figure class="effect-marley">
	                        <img src='<c:url value="/resources/image/holiday-min.jpg"/>' alt="img12"/>
	                        <figcaption>
	                            <h2>Lễ <span>Hội</span></h2>
	                            <p>Tìm hiểu về những lễ hội ,tập tục văn hóa nổi bật.</p>
	                        </figcaption>
	                    </figure>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 p-l-r-bst">
					<div class="grid">
						<figure class="effect-marley">
	                        <img src='<c:url value="/resources/image/game-min.jpg"/>' alt="img12"/>
	                        <figcaption>
	                            <h2>Trò <span>Chơi</span></h2>
	                            <p>Lạc vào thế giới game đầy màu sắc.</p>
	                        </figcaption>
	                    </figure>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="featured-photos">
		<div class="container-fluid">
			<span class="f-40">HÌNH ẢNH NỔI BẬT</span>
			<div id="featured-photos-list">
				<div class="row">
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="hinhanh" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image1.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image2.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image3.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image4-min.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image5.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image6-min.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image7-min.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image8.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image9-min.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image10.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image11.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image12.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image13.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image14.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image15.jpg"/>' alt="">
						</a>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 p-l-r-5">
						<a href="" title="">
							<img class="featured-photos-object" src='<c:url value="/resources/image/background/image16.jpg"/>' alt="">
						</a>
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