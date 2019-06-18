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
      .home_header_box1 {
          height: 1000px;
      }
      .home_header_img {
          display: inline-block;
          width: 100%;
          height: 1000px;
          overflow: hidden;
          position: absolute;
          z-index: -1;
      }
      .home_main_img {
          width: 100%;
          min-width: 1500px;
          filter: brightness(20%);
      }
      .home_header_navi {
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
      .home_navi_left {
          display: inline-block;
          margin-left: 10%;
      }
      .home_navi_right {
          display: inline-block;
          float: right;
          margin-right: 10%;
      }
      .home_navi_div {
          display: inline-block;
          position: relative;
      }
      .home_navi_span {
          display: inline-block;
          text-align: center;
      }
      .home_navi {
          display: inline-block;
          width: 105px;
          transition: .3s;
          opacity: .5;
      }
      .home_navi1 {
          width: 150px;
      }
      #about, #projects, #contact {
      	color: white;
      }
      #login, #join, #basket {
      	  display: inline-block;
          font-family: 'Noto Sans KR', sans-serif;
          font-weight: normal;
          font-size: 18px;
          transition: .3s;
          opacity: .5;
          margin: 0px 17px;
          color: white;
      }
      #login:hover, #join:hover, #basket:hover {
          color: #FFC000!important;
          opacity: 1!important;
      }
      .home_navi:hover {
          opacity: 1!important;
      }
      .home_navi_bar {
          display: none;
          width: 108px;
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









      .section_box {
			width: 100%;
			min-width: 1350px;
			padding: 150px 0px;
		}
		.best_class, .new_class {
			padding-bottom: 20px;
		}
		.section_title {
			text-align: center;
			font-size: 25px;
			color: #2D314F;
			font-weight: 600;
			padding-bottom: 20px;
		}
		.section_content {
			display: flex;
			justify-content: center;
		}
		.content_box {
			position: relative;
			width: 380px;
			padding: 12px 12px 70px;
		}
		.basket_icon {
			position: absolute;
			right: 26px;
			top: 26px;
			font-size: 22px;
			color: white;
			opacity: .3;
			transition: .3s;
		}
		.basket_icon:hover {
			opacity: 1;
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
		.class_more {
			display: block;
			margin: 10px auto;
			text-align: center;
			width: 110px;
			height: 36px;
			background: #79CDCF;
			line-height: 35px;
			color: white;
			border-radius: 20px;
			transition: .3s;
		}
		.class_more:hover {
			background: #2D314F;
		}
</style>
</head>
<body>
	<header>
        <div class="home_header_box1">
            <div class="home_header_img">
                <img  class="home_main_img" src="${path}/resources/img/student_849825.jpg">
            </div>
            <div class="home_header_navi">
                <div class="home_navi_left">
                    <span class="home_navi_span"><a class="home_navi1">HanKyung LMS</a></span>
                </div>
                <div class="home_navi_right">
                    <div class="home_navi_div">
                        <span class="home_navi_span">
                            <a href="#header_box2" class="home_navi home_navi2" id="about">About</a>
                        </span>
                        <span class="home_navi_bar"></span>
                    </div>
                    <div class="home_navi_div">
                        <span class="home_navi_span">
                            <a href="#section_box" class="home_navi home_navi3" id="projects">Projects</a>
                        </span>
                        <span class="home_navi_bar"></span>
                    </div>
                    <div class="home_navi_div">
                        <span class="home_navi_span">
                            <a href="#home_footer_box" class="home_navi home_navi4" id="contact">Contact</a>
                        </span>
                        <span class="home_navi_bar"></span>
                    </div>
                    <div class="home_navi_div">
                        <span class="home_navi_span">
                            <a href="${path}/login" class="home_navi_btn home_navi5" id="login">로그인</a>
                        </span>
                    </div>
                    <div class="home_navi_div">
                        <span class="home_navi_span">
                            <a href="${path}/create" class="home_navi_btn home_navi6" id="join">회원가입</a>
                        </span>
                    </div>
                    <div class="home_navi_div">
                        <span class="home_navi_span">
                            <a href="${path}/" class="home_navi_btn home_navi7" id="basket">수강바구니</a>
                        </span>
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
                    	<a>
                    		<i class="fas fa-shopping-basket basket_icon"></i>
                    	</a>
                        <div class="section_img">
                        	<a href="${path}/lecture/view">
                        		<img src="">
                       		</a>
                       	</div>
                        <div class="section_name">
                        	<a href="${path}/lecture/view">
                            	혁신을 관리하고 생각을 디자인하기
                            </a>
                        </div>
                        <div class="section_text">
                            <span class="section_teacher">강사ㅣ</span>최철웅
                        </div>
                        <div class="section_text">
                            <span class="section_day">기간ㅣ</span>2019.02.21 ~ 2019.06.22
                        </div>
                    </div>
                    <div class="content_box">
                    	<a>
                    		<i class="fas fa-shopping-basket basket_icon"></i>
                    	</a>
                    	<div class="section_img">
                        	<a href="${path}/lecture/view">
                        		<img src="">
                       		</a>
                       	</div>
                        <div class="section_name">
                        	<a href="${path}/lecture/view">
                            	Python과 함께하는 응용 데이터 과학
                            </a>
                        </div>
                        <div class="section_text">
                            <span class="section_teacher">강사ㅣ</span>최철웅
                        </div>
                        <div class="section_text">
                            <span class="section_day">기간ㅣ</span>2018.12.27 ~ 2019.04.05
                        </div>
                    </div>
                    <div class="content_box">
                    	<a>
                    		<i class="fas fa-shopping-basket basket_icon"></i>
                    	</a>
                    	<div class="section_img">
                        	<a href="${path}/lecture/view">
                        		<img src="">
                       		</a>
                       	</div>
                        <div class="section_name">
                        	<a href="${path}/lecture/view">
                            	MySQL 전문가 과정: 비즈니스를 위한 분석 테크닉
                            </a>
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
                    	<a>
                    		<i class="fas fa-shopping-basket basket_icon"></i>
                    	</a>
                    	<div class="section_img">
                        	<a>
                        		<img src="">
                       		</a>
                       	</div>
                        <div class="section_name">
                        	<a>
                            	혁신을 관리하고 생각을 디자인하기
                            </a>
                        </div>
                        <div class="section_text">
                            <span class="section_teacher">강사ㅣ</span>최철웅
                        </div>
                        <div class="section_text">
                            <span class="section_day">기간ㅣ</span>2019.02.21 ~ 2019.06.22
                        </div>
                    </div>
                    <div class="content_box">
                    	<a>
                    		<i class="fas fa-shopping-basket basket_icon"></i>
                    	</a>
                    	<div class="section_img">
                        	<a>
                        		<img src="">
                       		</a>
                       	</div>
                        <div class="section_name">
                        	<a>
                            	Python과 함께하는 응용 데이터 과학
                            </a>
                        </div>
                        <div class="section_text">
                            <span class="section_teacher">강사ㅣ</span>최철웅
                        </div>
                        <div class="section_text">
                            <span class="section_day">기간ㅣ</span>2018.12.27 ~ 2019.04.05
                        </div>
                    </div>
                    <div class="content_box">
                    	<a>
                    		<i class="fas fa-shopping-basket basket_icon"></i>
                    	</a>
                    	<div class="section_img">
                        	<a>
                        		<img src="">
                       		</a>
                       	</div>
                        <div class="section_name">
                        	<a>
                            	MySQL 전문가 과정: 비즈니스를 위한 분석 테크닉
                            </a>
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
            <a href="${path}/">
            	<span class="class_more">강좌 더 보기</span>
            </a>
        </div>
    </section>
	<%@ include file="include/home_footer.jsp" %>
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            
        });
        $(window).scroll(function(event) {
            var scrollValue = $(this).scrollTop();
            if (scrollValue >= 150) {
                $('.home_header_navi').css("position", "fixed")
                                  .css("background", "white")
                                  .css('box-shadow', '2px 2px 20px rgba(0, 0, 0, 0.15)');
                $('.home_navi1').css("color", "#444");
                $('.home_navi5').css("color", "#444");
                $('.home_navi6').css("color", "#444");
                $('.home_navi7').css("color", "#444");
                $('.home_navi').css("opacity", "1");
                $('.home_navi_btn').css("opacity", "1");
                if (scrollValue > 900 && scrollValue < 2000) {
                    $('.home_navi2').css("color", "#79CDCF")
                               .css("opacity", "1");
                    $('.home_navi3').css("color", "#444");
                    $('.home_navi4').css("color", "#444");
                    $('.home_navi_bar').eq(0).css("display", "inline-block");
                       $('.home_navi_bar').eq(1).css("display", "none");
                    $('.home_navi_bar').eq(2).css("display", "none");
                } else if (scrollValue >= 2000 && scrollValue < 3250) {
                    $('.home_navi3').css("color", "#79CDCF")
                               .css("opacity", "1");
                    $('.home_navi2').css("color", "#444");
                    $('.home_navi4').css("color", "#444");
                    $('.home_navi_bar').eq(0).css("display", "none");
                       $('.home_navi_bar').eq(1).css("display", "inline-block");
                    $('.home_navi_bar').eq(2).css("display", "none");
                } else if (scrollValue >= 3250) {
                    $('.home_navi4').css("color", "#79CDCF")
                               .css("opacity", "1");
                    $('.home_navi2').css("color", "#444");
                    $('.home_navi3').css("color", "#444");
                    $('.home_navi_bar').eq(0).css("display", "none");
                       $('.home_navi_bar').eq(1).css("display", "none");
                    $('.home_navi_bar').eq(2).css("display", "inline-block");
                } else {
                $('.home_navi_bar').eq(0).css("display", "none");
                $('.home_navi_bar').eq(1).css("display", "none");
                $('.home_navi_bar').eq(2).css("display", "none");
                $('.home_navi').css("color", "#444");
                $('.home_navi_btn').css("color", "#444");
                }
            } else if (scrollValue < 150) {
                $('.home_header_navi').css("position", "relative")
                                 .css("background", "none")
                                 .css('box-shadow', 'none');
                $('.home_navi').css("color", "white")
                         		.css("opacity", "0.5");
                $('.home_navi_btn').css("color", "white")
                				.css("opacity", "0.5");
                $('.home_navi1').css("color", "white");
                $('.home_navi5').css("color", "white");
                $('.home_navi6').css("color", "white");
                $('.home_navi7').css("color", "white");
                $('.home_navi_bar').eq(0).css("display", "none");
                $('.home_navi_bar').eq(1).css("display", "none");
                $('.home_navi_bar').eq(2).css("display", "none");
            }
        });

    </script>
</body>
</html>