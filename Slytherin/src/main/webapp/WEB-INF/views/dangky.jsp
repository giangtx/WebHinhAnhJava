<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>

<head>
    <title>Đăng Ký</title>
    <meta charset="utf-8">
    <link rel="shortcut icon" type="image/x-icon" href='<c:url value="/resources/image/icon/photo-camera.png"/>'>
	<jsp:include page="header.jsp"/>
</head>

<body>
    <div class="padding-login" >
        <div class="container-fluid" align="center">
            <div class="row">
                <div class="col-md-5" id="boc">
                    <div id="signin-background">
                        <div  style="padding:40px; text-align:left">
                            <div class="padding-sly" >
                                <h1 class="site-title" style="font-size: 30px">
                                    <a href="/Slytherin" style="color: wheat;padding-right: 313px;" style="margin-right: 313px">Slytherin</a>
                                </h1>
                                <p id="boc-p1">Nơi bắt đầu sự sáng tạo</p>
                                <p id="boc-p2">Tìm kiếm hàng ngàn bức ảnh miễn phí, độ phân giải cao mà bạn không thể tìm kiếm ở bất cứ nơi đâu</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-7" id="signin-p-82">
                    <div class="padding-sly">
                        <h1 class="site-title" style="font-size: 55px">
                            <a href="/Slytherin">Slytherin</a>
                        </h1>
                        <p class="site-tiny">Khám phá thế giới muôn màu</p>
                    </div>
                    <div style="margin-bottom: 25px;">
                        <b style="font-size:23px">Đăng ký</b>
                    </div>
                    <div id="para">
                        <p align="left" style="margin-bottom: 0px">Tài khoản Email </p>
                        <input type="text" id="txtEmail" style="height: 40px;"/> <br />
                        <p align="left" style="margin-bottom: 0px">Tên tài khoản </p>
                        <input type="text" id="txtUsernameLogin" style="height: 40px;"/> <br />
                        <p align="left" style="margin-bottom: 0px">Mật khẩu</p>
                        <input type="password" id="txtPasswordLogin" style="height: 40px;"/>
                        <p align="left" style="margin-bottom: 0px">Nhập lại mật khẩu</p>
                        <input type="password" id="txtConfirmPassword" style="height: 40px;"/>
                    </div>
                    <div id="btnSignin">
                        <p id="login_p"> Đăng ký </p>
                    </div>
                    <br>
                    <p>
                        Bằng việc nhấn nút Đăng ký, bạn đã chấp nhận mọi <a href="#">Điều khoản </a> của Slytherin
                    </p>
                    <div id="errorSignin" style="height: 20px;">
                    </div>
                </div>

            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"/>
</body>

</html>