<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nunito&display=swap');
	a {
          cursor: pointer;
          text-decoration: none;
      }
      header {
          height: 2000px;
          width: 100%;
          color: white;
          position: relative;
      }
      html {
          scroll-behavior: smooth;
      }
      .header_box1 {
          height: 1000px;
      }
      .header_img {
          display: inline-block;
          width: 100%;
          height: 1000px;
          overflow: hidden;
          position: absolute;
          z-index: -1;
      }
      .main_img {
          width: 100%;
          min-width: 1500px;
          filter: brightness(20%);
      }
      .header_navi {
          width: 100%;
          min-width: 1350px;
          padding: 30px 0px 30px;
          font-family: 'Nunito', sans-serif;
          font-size: 20px;
          font-weight: 600;
          letter-spacing: 1px;
          position: relative;
          top: 0px;
          z-index: 50;
      }
      .navi_left {
          display: inline-block;
          margin-left: 10%;
      }
      .navi_right {
          display: inline-block;
          float: right;
          margin-right: 10%;
      }
      .navi_div {
          display: inline-block;
          position: relative;
      }
      .navi_span {
          display: inline-block;
          text-align: center;
      }
      .navi {
          display: inline-block;
          width: 115px;
          transition: .3s;
          opacity: .5;
      }
      .navi1 {
          width: 150px;
      }
      #about, #projects, #contact {
      	color: white;
      }
      #login, #join {
          font-family: 'Noto Sans KR', sans-serif;
          font-weight: normal;
          font-size: 18px;
          color: white;
      }
      #login:hover, #join:hover {
          color: #FFC000!important;
          opacity: 1!important;
      }
      .navi:hover {
          opacity: 1!important;
      }
      .navi_bar {
          display: none;
          width: 120px;
          height: 5px;
          position: absolute;
          background: #79CDCF;
          bottom: -30px;
          left: -2px;
      }
      .header_center {
          min-width: 1350px;
          text-align: center;
          padding: 200px 0px 185px;
      }
      .center_title1 {
          font-size: 110px;
          margin-bottom: 10px;
          letter-spacing: -2px;
      }
      .center_text1 {
          font-size: 25px;
          margin-bottom: 40px;
      }
      .center_bottom {
          display: inline-block;
          position: relative;
          width: 300px;
          font-size: 30px;
          padding: 25px;
          background: #79CDCF;
          font-family: 'Nunito', sans-serif;
          letter-spacing: 2px;
          font-weight: 600;
          border-radius: 50px;
          box-shadow: 2px 2px 20px rgba(0, 0, 0, 0.25);
          transition: 0.3s;
      }
      .center_bottom:before {
          content: '';
          position: absolute;
          top: 0px;
          left: 0px;
          right: 0px;
          bottom: 0px;
          z-index: -2;
          background: linear-gradient(90deg, #03a9f4, #f441a5, #ffeb3b, #03a9f4);
          background-size: 500%;
          border-radius: 50px;
          transition: 0.3s;
      }
      .center_bottom:hover:before {
          z-index: 1;
          animation: animate 10s linear infinite;
      }
      @keyframes animate {
          0% { background-position: 0%; }
          100% { background-position: 500%; }
      }
      .center_btn {
      	  color: white;
          position: relative;
          z-index: 10;
      }











      .header_box2 {
          height: 1000px;
          background: #222;
          overflow: hidden;

      }
      .header_bottom {
          min-width: 1350px;
          padding: 190px 0px;
          text-align: center;
      }
      .header_title2 {
          font-size: 60px;
          margin-bottom: 40px;
      }
      .header_text2 {
          font-size: 19px;
          margin-bottom: 10px;
      }
      .box2_img > img {
          width: 1150px;
      }
      .header_point {
          color: #FFC000;
      }














      .footer_box {
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
          height: 800px;
          position: absolute;
          top: 0;
          z-index: -1;
          opacity: .7;
      }
      .footer_img > img {
          width: 100%;
          min-width: 1350px;
          position: absolute;
          top: 0;
          z-index: -2;
      }
      .footer_head {
          padding: 170px 0px 160px;
          text-align: center;
      }
      #plane {
          font-size: 40px;
      }
      .footer_title {
          font-size: 35px;
          font-family: 'Nunito', sans-serif;
          padding: 20px 0px 30px;
      }
      .input_div {
          display: flex;
          justify-content: center;
          align-items: center;
      }
      .footer_input {
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
      .footer_btn {
          width: 100px;
          padding: 16px;
          border-radius: 5px;
          background: #79CDCF;
          font-family: 'Nunito', sans-serif;
          font-weight: 600;
          transition: .3s;
          overflow: hidden;
          position: relative;
          box-shadow: 2px 2px 20px rgba(0, 0, 0, 0.25);
      }
      .footer_btn:before {
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
          transition: 0.3s;
      }
      .footer_btn:hover:before {
          z-index: 1;
          animation: animate 10s linear infinite;
      }
      .footer_btn > span {
          position: relative;
          z-index: 2;
      }
      .footer_center {
          padding: 30px 0px;
          display: flex;
          justify-content: center;
          text-align: center;
      }
      .footer_content {
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
      .footer_content:nth-child(1) {
          margin-left: 0px;
      }
      #address, #email, #tell {
          color: #79CDCF;
          padding: 10px;
      }
      .content_Bar {
          display: inline-block;
          margin: 20px 0px;
          width: 50px;
          height: 3px;
          background: #79CDCF;
      }
      .content_text {
          font-family: 'Nanum Gothic', sans-serif;
          font-size: 14px;
      }
      .content_adress {
          line-height: 20px;
      }
      .content_email, .content_tell {
          margin-top: 10px;
      }
      .bottom_bar {
          width: 300px;
          height: 5px;
          background: #79CDCF;
          position: absolute;
          bottom: 0px;
      }
      .footer_icon {
          display: flex;
          justify-content: center;
          padding: 50px;
      }
      .icon_btn {
          padding: 12px;
          border-radius: 25px;
          background: #444;
          text-align: center;
          font-size: 20px;
          color: #aaa;
          margin-left: 15px;
          transition: .3s;
      }
      .icon_btn:hover {
          background: #666;
      }
      .fotter_final {
          text-align: center;
          font-family: 'Nanum Gothic', sans-serif;
          font-size: 14px;
          padding: 40px 0px;
          color: #777;
      }










      .section_box {
          width: 100%;
          min-width: 1350px;
          padding: 100px 0px 160px;
      }
      .best_class {
          padding: 40px 0px 80px;
      }
      .section_title {
          text-align: center;
          font-size: 25px;
          color: #2D314F;
          font-weight: 600;
          padding: 20px;
      }
      .section_content {
          display: flex;
          justify-content: center;
      }
      .content_box {
          width: 380px;
          padding: 12px;
      }
      .section_img {
          width: 100%;
          height: 230px;
          border-radius: 5px;
          overflow: hidden;
          background: #333;
      }
      .section_name {
          font-size: 16px;
          padding: 15px 0px 10px;
          color: #2D314F;
          font-weight: 600;
          border-bottom: 1px solid #dadada;
      }
      .section_teacher {
          display: inline-block;
          padding: 10px 0px 3px;
      }
      .section_teacher, .section_day {
          color: #888;
          font-weight: 600;
      }
</style>
</head>
<body>
	<header>
        <div class="header_box1">
            <div class="header_img">
                <img  class="main_img" src="${path}/resources/img/student_849825.jpg">
            </div>
            <div class="header_navi">
                <div class="navi_left">
                    <span class="navi_span"><a class="navi1">HanKyung LMS</a></span>
                </div>
                <div class="navi_right">
                    <div class="navi_div">
                        <span class="navi_span">
                            <a href="#header_box2" class="navi navi2" id="about">About</a>
                        </span>
                        <span class="navi_bar"></span>
                    </div>
                    <div class="navi_div">
                        <span class="navi_span">
                            <a href="#section_box" class="navi navi3" id="projects">Projects</a>
                        </span>
                        <span class="navi_bar"></span>
                    </div>
                    <div class="navi_div">
                        <span class="navi_span">
                            <a href="#footer_box" class="navi navi4" id="contact">Contact</a>
                        </span>
                        <span class="navi_bar"></span>
                    </div>
                    <div class="navi_div">
                        <span class="navi_span">
                            <a href="${path}/login" class="navi navi5" id="login">로그인</a>
                        </span>
                        <span class="navi_bar"></span>
                    </div>
                    <div class="navi_div">
                        <span class="navi_span">
                            <a href="${path}/create" class="navi navi6" id="join">회원가입</a>
                        </span>
                        <span class="navi_bar"></span>
                    </div>
                </div>
            </div>
            <div class="header_center">
                <div class="center_title1">시작해보세요!</div>
                <div class="center_text1">
                    <span class="header_point">미래지향적인 역량</span>을 갖춘 인재 양성을 위한
                    <br>온라인 이러닝 학습 서비스, <span class="header_point">지금 바로 시작</span>하세요.
                </div>
                <div>
                    <a href="${path}/login" class="center_bottom">
                        <span class="center_btn">START</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="header_box2" id="header_box2">
            <div class="header_bottom">
                <div class="header_title2"><span class="header_point">내 손</span>안의 학습, <span class="header_point">내 삶</span>을 바꾸는 뛰어난 <span class="header_point">강의</span></div>
                <div class="header_text2">
                    <span class="header_point">HanKung LMS</span>는 언제 어디서나 원하는대로 학습할 수 있는<br>
                    '내 손 안의 학습' 서비스를 제공하여 자기주도 학습을 지원합니다.
                    <br>변화와 혁신을 선도하는 미래 지향 공무원 양성을 위해 다양한 분야의 콘텐츠를 제공하고 있으며,<br>
                    빅데이터 기반의 개인맞춤형 추천, 소통기반 협업학습 서비스, 외부학습자원 제공 등<br>
                    학습의 효과를 극대화 할 수 있는 <span class="header_point">수요자 중심의 맞춤형 교육 플랫폼</span>입니다.
                </div>
                <div class="box2_img">
                    <img src="${path}/resources/img/ipad1.png">
                </div>
            </div>
        </div>
    </header>



    <section>
        <div class="section_box" id="section_box">
            <div class="best_class">
                <div class="section_title">
                    가장 인기 있는 과정 및 강좌
                </div>
                <div class="section_content">
                    <div class="content_box">
                        <div class="section_img"><img src=""></div>
                        <div class="section_name">
                            혁신을 관리하고 생각을 디자인하기
                        </div>
                        <div class="section_text">
                            <span class="section_teacher">강사ㅣ</span>최철웅
                        </div>
                        <div class="section_text">
                            <span class="section_day">기간ㅣ</span>2019.02.21 ~ 2019.06.22
                        </div>
                    </div>
                    <div class="content_box">
                        <div class="section_img"><img src=""></div>
                        <div class="section_name">
                            Python과 함께하는 응용 데이터 과학
                        </div>
                        <div class="section_text">
                            <span class="section_teacher">강사ㅣ</span>최철웅
                        </div>
                        <div class="section_text">
                            <span class="section_day">기간ㅣ</span>2018.12.27 ~ 2019.04.05
                        </div>
                    </div>
                    <div class="content_box">
                        <div class="section_img"><img src=""></div>
                        <div class="section_name">
                            MySQL 전문가 과정: 비즈니스를 위한 분석 테크닉
                        </div>
                        <div class="section_text">
                            <span class="section_teacher">강사ㅣ</span>최철웅
                        </div>
                        <div class="section_text">
                            <span class="section_day">기간ㅣ</span>2019.01.16 ~ 2019.04.25
                        </div>
                    </div>
                </div>
            </div>
            <div class="new_class">
                <div class="section_title">
                    새로 생긴 과정 및 강좌
                </div>
                <div class="section_content">
                    <div class="content_box">
                        <div class="section_img"><img src=""></div>
                        <div class="section_name">
                            혁신을 관리하고 생각을 디자인하기
                        </div>
                        <div class="section_text">
                            <span class="section_teacher">강사ㅣ</span>최철웅
                        </div>
                        <div class="section_text">
                            <span class="section_day">기간ㅣ</span>2019.02.21 ~ 2019.06.22
                        </div>
                    </div>
                    <div class="content_box">
                        <div class="section_img"><img src=""></div>
                        <div class="section_name">
                            Python과 함께하는 응용 데이터 과학
                        </div>
                        <div class="section_text">
                            <span class="section_teacher">강사ㅣ</span>최철웅
                        </div>
                        <div class="section_text">
                            <span class="section_day">기간ㅣ</span>2018.12.27 ~ 2019.04.05
                        </div>
                    </div>
                    <div class="content_box">
                        <div class="section_img"><img src=""></div>
                        <div class="section_name">
                            MySQL 전문가 과정: 비즈니스를 위한 분석 테크닉
                        </div>
                        <div class="section_text">
                            <span class="section_teacher">강사ㅣ</span>최철웅
                        </div>
                        <div class="section_text">
                            <span class="section_day">기간ㅣ</span>2019.01.16 ~ 2019.04.25
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <footer>
        <div class="footer_box" id="footer_box">
            <div class="box_back"></div>
            <div class="img_back"></div>
            <div class="footer_img">
                <img src="${path}/resources/img/laptop_2559795.png">
            </div>
            <div class="footer_head">
                <span><i class="far fa-paper-plane" id="plane"></i></span>
                <div class="footer_title">
                    Subscribe to receive updates!
                </div>
                <div class="input_div">
                    <input type="text" name="" class="footer_input" placeholder="이메일을 입력해주세요.">
                    <a class="footer_btn"><span>SUBSCRIBE</span></a>
                </div>
            </div>
            <div class="footer_center">
                <div class="footer_content">
                    <i class="fas fa-map-marked-alt" id="address"></i>
                    <div>ADDRESS</div>
                    <span class="content_Bar"></span>
                    <div class="content_text content_adress">광주광역시 북구 중흥1동<br>경양로 170 한국경영원 인재개발원</div>
                    <div class="bottom_bar"></div>
                </div>
                <div class="footer_content">
                    <i class="fas fa-envelope" id="email"></i>
                    <div>EMAIL</div>
                    <span class="content_Bar"></span>
                    <div class="content_text content_email">seonmi0325@gmail.com</div>
                    <div class="bottom_bar"></div>
                </div>
                <div class="footer_content">
                    <i class="fas fa-mobile-alt" id="tell"></i>
                    <div>TELL</div>
                    <span class="content_Bar"></span>
                    <div class="content_text content_tell">062-720-4800</div>
                    <div class="bottom_bar"></div>
                </div>
            </div>
            <div class="footer_icon">
                <a class="icon_btn">
                    <i class="fab fa-twitter" id="twitter"></i>
                </a>
                <a class="icon_btn">
                    <i class="fab fa-instagram" id="instagram"></i>
                </a>
                <a class="icon_btn">
                    <i class="fab fa-github" id="github"></i>
                </a>
            </div>
            <div class="fotter_final">Copyright © HankungLMS Design By KimParkHan 2019</div>
        </div>
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            
        });
        $(window).scroll(function(event) {
            var scrollValue = $(this).scrollTop();
            if (scrollValue >= 150) {
                $('.header_navi').css("position", "fixed")
                                  .css("background", "white")
                                  .css('box-shadow', '2px 2px 20px rgba(0, 0, 0, 0.25)');
                $('.navi1').css("color", "#444");
                $('.navi5').css("color", "#444");
                $('.navi6').css("color", "#444");
                $('.navi').css("opacity", "1");
                if (scrollValue > 900 && scrollValue < 2000) {
                    $('.navi2').css("color", "#79CDCF")
                               .css("opacity", "1");
                    $('.navi3').css("color", "#444");
                    $('.navi4').css("color", "#444");
                    $('.navi_bar').eq(0).css("display", "inline-block");
                       $('.navi_bar').eq(1).css("display", "none");
                    $('.navi_bar').eq(2).css("display", "none");
                } else if (scrollValue >= 2000 && scrollValue < 2500) {
                    $('.navi3').css("color", "#79CDCF")
                               .css("opacity", "1");
                    $('.navi2').css("color", "#444");
                    $('.navi4').css("color", "#444");
                    $('.navi_bar').eq(0).css("display", "none");
                       $('.navi_bar').eq(1).css("display", "inline-block");
                    $('.navi_bar').eq(2).css("display", "none");
                } else if (scrollValue >= 2500) {
                    $('.navi4').css("color", "#79CDCF")
                               .css("opacity", "1");
                    $('.navi2').css("color", "#444");
                    $('.navi3').css("color", "#444");
                    $('.navi_bar').eq(0).css("display", "none");
                       $('.navi_bar').eq(1).css("display", "none");
                    $('.navi_bar').eq(2).css("display", "inline-block");
                } else {
                $('.navi_bar').eq(0).css("display", "none");
                $('.navi_bar').eq(1).css("display", "none");
                $('.navi_bar').eq(2).css("display", "none");
                $('.navi').css("color", "#444");
                }
            } else if (scrollValue < 150) {
                $('.header_navi').css("position", "relative")
                                 .css("background", "none")
                                 .css('box-shadow', 'none');
                $('.navi').css("color", "white")
                          .css("opacity", "0.5");
                $('.navi1').css("color", "white");
                $('.navi5').css("color", "white");
                $('.navi6').css("color", "white");
                $('.navi_bar').eq(0).css("display", "none");
                $('.navi_bar').eq(1).css("display", "none");
                $('.navi_bar').eq(2).css("display", "none");
            }
        });

    </script>
</body>
</html>