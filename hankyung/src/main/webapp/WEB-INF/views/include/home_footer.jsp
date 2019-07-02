<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nunito&display=swap');
	.home_footer_box {
		width: 100%;
		height: 1100px;
		position: relative;
		color: white;
		font-size: 16px;
	}
	.box_back {
		width: 100%;
		height: 1100px;
		position: absolute;
		z-index: -3;
		background: #222;
	}
	.img_back {
		background: #222;
		width: 100%;
		min-width: 1350px;
		height: 1100px;
		position: absolute;
		top: 0;
		z-index: -1;
		opacity: .7;
	}
	.home_footer_img > img {
		width: 100%;
		min-width: 1350px;
		position: absolute;
		top: 0;
		z-index: -2;
	}
	.home_footer_head {
		padding: 170px 0px 160px;
		text-align: center;
	}
	#plane {
		font-size: 40px;
	}
	.home_footer_title {
		font-size: 35px;
		font-family: 'Nunito', sans-serif;
		padding: 20px 0px 30px;
	}
	.input_div {
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.home_footer_input {
		outline: none;
		width: 400px;
		height: 54px;
		border: 0px;
		border-radius: 5px;
		padding: 0px 20px;
		margin-right: 10px;
		font-size: 15px;
		box-shadow: 2px 2px 20px rgba(0, 0, 0, 0.25);
	}
	.home_footer_btn {
		width: 110px;
		height: 54px;
		line-height: 53px;
		border-radius: 5px;
		background: #79CDCF;
		transition: .2s;
		overflow: hidden;
		position: relative;
		box-shadow: 2px 2px 20px rgba(0, 0, 0, 0.25);
	}
	.home_footer_btn:before {
		content: '';
		position: absolute;
		top: 0px;
		left: 0px;
		right: 0px;
		bottom: 0px;
		z-index: -5;
		background: linear-gradient(90deg, #03a9f4, #f441a5, #ffeb3b, #03a9f4);
		background-size: 500%;
		border-radius: 5px;
		transition: 0.2s;
	}
	.home_footer_btn:hover:before {
		z-index: 1;
		animation: animate 10s linear infinite;
	}
	@keyframes animate {
		0% { background-position: 0%; }
		100% { background-position: 500%; }
	}
	.home_footer_btn > span {
		position: relative;
		z-index: 2;
	}
	.home_footer_center {
		padding: 30px 0px;
		display: flex;
		justify-content: center;
		text-align: center;
	}
	.home_footer_content {
		display: inline-block;
		width: 300px;
		background: white;
		color: #444;
		margin-left: 30px;
		border-radius: 5px;
		padding: 44px 0px 45px;
		position: relative;
		overflow: hidden;
	}
	.home_footer_content:nth-child(1) {
		margin-left: 0px;
	}
	#address, #email, #tell {
		color: #79CDCF;
		padding: 10px;
	}
	.home_content_Bar {
		display: inline-block;
		margin: 20px 0px;
		width: 50px;
		height: 3px;
		background: #79CDCF;
	}
	.home_content_text {
		font-family: 'Nanum Gothic', sans-serif;
		font-size: 14px;
	}
	.home_content_adress {
		line-height: 20px;
	}
	.home_content_email, .home_content_tell {
		margin-top: 10px;
	}
	.home_bottom_bar {
		width: 300px;
		height: 5px;
		background: #79CDCF;
		position: absolute;
		bottom: 0px;
	}
	.home_footer_icon {
		display: flex;
		justify-content: center;
		padding: 50px;
	}
	.home_icon_btn {
		width: 50px;
		height: 50px;
		border-radius: 25px;
		background: #444;
		text-align: center;
		font-size: 20px;
		color: #aaa;
		margin-left: 15px;
		transition: .2s;
	}
	.footer_icon_btn {
		line-height: 50px;
	}
	.home_icon_btn:hover {
		background: #666;
	}
	.home_fotter_final {
		text-align: center;
		font-family: 'Nanum Gothic', sans-serif;
		font-size: 14px;
		padding: 40px 0px;
		color: #777;
	}
</style>
</head>
<body>
	<footer>
        <div class="home_footer_box" id="home_footer_box">
            <div class="box_back"></div>
            <div class="img_back"></div>
            <div class="home_footer_img">
                <img src="${path}/resources/img/laptop_2559795.png">
            </div>
            <div class="home_footer_head">
                <span><i class="far fa-paper-plane" id="plane"></i></span>
                <div class="home_footer_title">
                    	업데이트를 구독 신청하세요!
                </div>
                <div class="input_div">
                    <input type="text" name="" class="home_footer_input" placeholder="이메일을 입력해주세요.">
                    <a class="home_footer_btn"><span>신청하기</span></a>
                </div>
            </div>
            <div class="home_footer_center">
                <div class="home_footer_content">
                    <i class="fas fa-map-marked-alt" id="address"></i>
                    <div>ADDRESS</div>
                    <span class="home_content_Bar"></span>
                    <div class="home_content_text home_content_adress">광주광역시 북구 중흥1동<br>경양로 170 한국경영원 인재개발원</div>
                    <div class="home_bottom_bar"></div>
                </div>
                <div class="home_footer_content">
                    <i class="fas fa-envelope" id="email"></i>
                    <div>EMAIL</div>
                    <span class="home_content_Bar"></span>
                    <div class="home_content_text home_content_email">seonmi0325@gmail.com</div>
                    <div class="home_bottom_bar"></div>
                </div>
                <div class="home_footer_content">
                    <i class="fas fa-mobile-alt" id="tell"></i>
                    <div>TELL</div>
                    <span class="home_content_Bar"></span>
                    <div class="home_content_text home_content_tell">062-720-4800</div>
                    <div class="home_bottom_bar"></div>
                </div>
            </div>
            <div class="home_footer_icon">
                <a class="home_icon_btn">
                    <i class="fab fa-twitter footer_icon_btn" id="twitter"></i>
                </a>
                <a class="home_icon_btn">
                    <i class="fab fa-instagram footer_icon_btn" id="instagram"></i>
                </a>
                <a class="home_icon_btn">
                    <i class="fab fa-github footer_icon_btn" id="github"></i>
                </a>
            </div>
            <div class="home_fotter_final">Copyright © HankyungLMS Design By KimParkHan 2019</div>
        </div>
    </footer>
</body>
</html>