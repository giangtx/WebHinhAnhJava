<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Bộ sưu tập</title>
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
						    	<a class="nav-link" href="">Bộ sưu tập</a>
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
	</div>
	<div id="form-right-shop">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-2 col-md-2 col-sm-2">
					<div id="list-shop">
						<span class="text-bold-shop">Bộ sưu tập</span><br><br>
						<ul >
							<li class="p-b-li"><a href="collection.php" class="font-info-bottom">Tất cả</a></li>
							<li class="p-b-li"><a href="collection.php" class="font-info-bottom">Động vật</a></li>
							<li class="p-b-li"><a href="collection.php" class="font-info-bottom">Thiên nhiên</a></li>
							<li class="p-b-li"><a href="collection.php" class="font-info-bottom">Công nghệ</a></li>
							<li class="p-b-li"><a href="collection.php" class="font-info-bottom">Thức ăn</a></li>
							<li class="p-b-li"><a href="collection.php" class="font-info-bottom">Sách</a></li>
							<li class="p-b-li"><a href="collection.php" class="font-info-bottom">Lễ hội</a></li>
							<li class="p-b-li"><a href="collection.php" class="font-info-bottom">Khác</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-10 col-md-10 col-sm-10">
					<div class="box-list">
						<div class="row">
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="hinhanh" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image1-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image2-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image3-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image15-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image22-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image13-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image19-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image21-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image14-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image1-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image2-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image3-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image1-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image2-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image3-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image1-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image2-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image3-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image1-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image2-min.jpg"/>' alt="">
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12" style="padding: 0">
								<a href="#" title="">
									<div class="image-background-form">
										<img class="image-background" src='<c:url value="/resources/image/resize/image3-min.jpg"/>' alt="">
									</div>
								</a>
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