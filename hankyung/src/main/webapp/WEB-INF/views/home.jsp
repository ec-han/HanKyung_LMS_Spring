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
          padding: 23px 0px;
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
      .right_navi {
      	margin: 0px 12px;
      }
      .myclass {
      	margin: 0px 12px;
      }
      .home_navi {
          display: inline-block;
          width: 105px;
          transition: .2s;
          opacity: .5;
      }
      .home_navi1 {
          width: 200px;
      }
      .home_navi1 > img {
      	padding: 13px 0px 12px;
      	width: 200px;
      }
      #about, #projects, #contact {
      	color: white;
      }
      #login, #join, #main, #lecture, #basket, #logout {
      	  display: inline-block;
          font-family: 'Noto Sans KR', sans-serif;
          font-weight: normal;
          font-size: 18px;
          transition: .2s;
          opacity: .5;
          color: white;
      }
      #login:hover, #join:hover, #main:hover, #lecture:hover, #basket:hover, #logout:hover {
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
          bottom: -23px;
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
          transition: 0.2s;
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
          transition: 0.2s;
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
		.section_img {
			width: 380px;
			height: 247px;
			border-radius: 5px;
			overflow: hidden;
		}
		.lecture_img {
			width: 380px;
		}
		.section_name {
			font-size: 16px;
			padding: 15px 0px 10px;
			color: #2D314F;
			font-weight: 600;
			border-bottom: 1px solid #dadada;
			height: 46px;
		}
		.section_day {
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
			transition: .2s;
		}
		.class_more:hover {
			background: #2D314F;
		}
		
		
		
		
	.name_btn {
		margin: 0px 2px;
	}
    #notname {
      	cursor: default;
      	display: inline-block;
        font-family: 'Noto Sans KR', sans-serif;
        font-weight: normal;
        font-size: 18px;
        transition: .2s;
        opacity: 1;
        color: white;
      }
	#name_point {
		color: #FFC000;
	}
	#name {
      	display: inline-block;
        font-family: 'Noto Sans KR', sans-serif;
        font-weight: normal;
        font-size: 18px;
        transition: .2s;
        opacity: 1;
        color: white;
    }
    
    
    
    
    
    
    
    
	.mypage {
		position: relative;
	}
	.mypage_arrow {
		position: absolute;
		display: inline-block;
		width: 20px;
		height: 20px;
		top: 71px;
		transform: rotate(45deg);
		left: 60px;
		background: white;
		box-shadow: 2px 2px 10px rgba(0,0,0,0.25);
	}
	.arrow_top {
		box-shadow: none;
		z-index: 101;
	}
	.mypage_box {
		position: absolute;
		display: none;
		width: 140px;
		top: 51px;
		left: -24px;
		background: white;
		box-shadow: 2px 2px 10px rgba(0,0,0,0.15);
		box-sizing: border-box;
		font-size: 14px;
		font-weight: 400;
		overflow: hidden;
		padding-top: 7px;
		border-radius: 0px 0px 5px 5px;
	}
	.mypage_box_bar {
		position: absolute;
		top: 0px;
		height: 4px;
		width: 235px;
		left: -1px;
		background: #79CDCF;
	}
	.mypage_btn {
		display: block;
		margin: 4px 0px 4px 19px;
		padding: 3px 0px 3px 22px;
		position: relative;
		color: #444;
		transition: .2s;
	}
	.mypage_btn:last-child {
		margin: 4px 0px 8px 19px;
	}
	.mypage_btn:hover {
		color: #79CDCF;
	}
	#wish_icon {
		left: 2px;
	}
	#cart_icon {
		left: 0.5px;
	}
	.icon_hover {
		position: absolute;
		top: 5.5px;
		left: 1px;
		color: #79CDCF;
		padding-right: 5px;
	}
	.main_box {
		position: absolute;
		display: none;
		top: 51px;
		left: -204.5px;
		background: white;
		box-shadow: 2px 2px 10px rgba(0,0,0,0.15);
		box-sizing: border-box;
		font-size: 14px;
		font-weight: 400;
		overflow: hidden;
		padding: 10px;
		border-radius: 0px 0px 5px 5px;
	}
	.main_box_bar {
		position: absolute;
		top: 0px;
		left: -1px;
		height: 4px;
		width: 550px;
		background: #79CDCF;
	}
	.main_box_title {
		font-weight: 600;
		padding: 5px 2px 9px;
		font-size: 15px;
		color: #79CDCF;
		margin: 0px 5px 9px;
		border-bottom: 1px solid #ededed;
	}
	.main_lecture {
		display: block;
		width: 480px;
		margin: 6px 5px;
		color: #444;
	}
	.none_lecture {
		display: block;
		width: 480px;
		margin: 6px 5px;
		color: #dadada;
	}
	.main_lecture:last-child {
		margin: 5px 5px 0px;
	}
	.main_lecture:hover {
		color: #79CDCF;
		transition: .2s;
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
                    <span class="home_navi_span"><a href="${path}/" class="home_navi1"><img src="${path}/resources/img/logo_02_white.png"></a></span>
                </div>
                <div class="home_navi_right">
	                <c:if test="${!empty sessionScope.id}">
	                	<div class="home_navi_div mypage">
	                        <span class="home_navi_span">
	                            <a class="home_navi_btn name_btn name" id="name">
	                            	<span id="name_point">${sessionScope.name}</span>님
	                            		<i class="fas fa-chevron-down"></i>
	                            </a>
	                            
	                        </span>
	                        <!-- <div class="mypage_arrow arrow_top"></div>
	                        <div class="mypage_arrow"></div> -->
                        	<div class="mypage_box">
                        		<div class="mypage_box_bar"></div>
                        		<c:if test="${sessionScope.type == 2}">
	                        	<a href="${path}/lecture/wishView" class="wishlist mypage_btn"><i class="fas fa-heart icon_hover" id="wish_icon"></i>위시리스트</a>
	                        	<a href="${path}/lecture/cartView" class="lecture_cart mypage_btn"><i class="fas fa-shopping-cart icon_hover" id="cart_icon"></i>장바구니</a>
	                        	<a href="${path}/member/update" class="member_update mypage_btn"><i class="fas fa-cogs fa-sm fa-fw mr-2 icon_hover" id="update_icon"></i>회원수정</a>
	                        	</c:if>
	                        	<a href="${path}/board/list?btype=0" class="member_update mypage_btn"><i class="fas fa-exclamation-circle icon_hover" id="notice_icon"></i>공지사항</a>
	                        	<a href="${path}/board/list?btype=1" class="member_update mypage_btn"><i class="fas fa-question-circle icon_hover" id="qna_icon"></i>묻고답하기</a>
	                        </div>
	                   	</div>
                   	</c:if>
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
                    <c:choose>
		                <c:when test="${!empty sessionScope.id}">
	                    	<c:if test="${sessionScope.type == 0}">
	                    		<div class="home_navi_div">
			                        <span class="home_navi_span">
			                            <a href="${path}/main/" class="home_navi_btn right_navi" id="main">LMS관리</a>
			                        </span>
		                    	</div>
	                    	</c:if>
	                    	<c:if test="${sessionScope.type == 1}">
			                	<div class="home_navi_div">
			                        <span class="home_navi_span">
			                            <a href="${path}/main/" class="home_navi_btn right_navi" id="main">나의강의실</a>
			                        </span>
		                    	</div>
	                    	</c:if>
	                    	<c:if test="${sessionScope.type == 2}">
			                	<div class="home_navi_div">
			                        <span class="home_navi_span">
			                            <a class="home_navi_btn myclass main_btn" id="main">나의강의실
			                            <i class="fas fa-chevron-down"></i></a>
			                        </span>
			                        <div class="main_box">
			                        	<div class="main_box_bar"></div>
			                        	<div class="main_box_title">나의 강의목록</div>
			                        	<c:if test="${empty sessionScope.myList}">
			                        		<div class="none_lecture">수강중인 강좌가 없습니다.</div>
			                        	</c:if>
			                        	<c:forEach items="${sessionScope.myList}" var="myList">
			                        		<a href="${path}/lectureboard/home?btype=0&lno=${myList.lno}" class="main_lecture">${myList.lname}</a>
		                        		</c:forEach>
			                        </div>
		                    	</div>
	                    	</c:if>
		                </c:when>
		                <c:otherwise>
		                    <div class="home_navi_div">
		                        <span class="home_navi_span">
		                            <a href="${path}/member/login" class="home_navi_btn right_navi" id="login">로그인</a>
		                        </span>
		                    </div>
		                    <div class="home_navi_div">
		                        <span class="home_navi_span">
		                            <a href="${path}/member/constract" class="home_navi_btn home_navi3 right_navi" id="join">회원가입</a>
		                        </span>
		                    </div>
	                    </c:otherwise>
                    </c:choose>
                    <div class="home_navi_div">
                        <span class="home_navi_span">
                            <a href="${path}/lecture/list" class="home_navi_btn right_navi" id="lecture">강좌보기</a>
                        </span>
                    </div>
                    <c:if test="${!empty sessionScope.id}">
	                    <div class="home_navi_div">
	                        <span class="home_navi_span">
	                            <a href="${path}/" class="home_navi_btn right_navi" id="logout">로그아웃</a>
	                        </span>
	                    </div>
                    </c:if>
                </div>
            </div>
            <div class="header_center">
            	<c:choose>
	            	<c:when test="${!empty sessionScope.id}">
		            	<c:if test="${sessionScope.type == 0}">
		            		<div class="center_title1">${sessionScope.name}님, 반갑습니다!</div>
		            	</c:if>
		            	<c:if test="${sessionScope.type == 1}">
		            		<div class="center_title1">${sessionScope.name}님, 어서오세요!</div>
		            	</c:if>
		            	<c:if test="${sessionScope.type == 2}">
		            		<div class="center_title1">${sessionScope.name}님, 반갑습니다!</div>
		            	</c:if>
	                </c:when>
	                <c:otherwise>
	                	<div class="center_title1">시작해보세요!</div>
	                </c:otherwise>
                </c:choose>
                <div class="center_text1">
                    <span class="header_point">미래지향적인 역량</span>을 갖춘 인재 양성을 위한
                    <br>온라인 이러닝 학습 서비스, <span class="header_point">지금 바로 시작</span>하세요.
                </div>
                <div>
                	<c:choose>
	                	<c:when test="${!empty sessionScope.id}">
		                    <a href="${path}/main/" class="center_bottom">
		                        <span class="center_btn">START</span>
		                    </a>
	                    </c:when>
	                    <c:otherwise>
	                    	<a href="${path}/member/login" class="center_bottom">
		                        <span class="center_btn">START</span>
		                    </a>
	                    </c:otherwise>
                    </c:choose>
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
                	<c:forEach items="${map.pList}" var="best">
	                    <div class="content_box">
	                        <div class="section_img">
	                        	<a href="${path}/lecture/view?lno=${best.lno}">
	                        		<img class="lecture_img" src="${path}/resources/img/${best.limg}">
	                       		</a>
	                       	</div>
	                        <div class="section_name">
	                        	<a href="${path}/lecture/view?lno=${best.lno}">
	                            	${best.lname}
	                            </a>
	                        </div>
	                        <div class="section_text">
	                            <span class="section_day">기간ㅣ</span><fmt:formatDate value="${best.startdate}" pattern="yyyy.MM.dd"/>
	                            ~ <fmt:formatDate value="${best.enddate}" pattern="yyyy.MM.dd"/>
	                        </div>
	                        <div class="section_text">
	                       		<span class="section_teacher">강사ㅣ</span>${best.tname}
	                        </div>
	                    </div>
                    </c:forEach>
                </div>
            </div>
            <div class="new_class">
                <div class="section_title">
                    새로 생긴 과정 및 강좌
                </div>
                <div class="section_content">
                	<c:forEach items="${map.nList}" var="new_DTO">
	                    <div class="content_box">
	                        <div class="section_img">
	                        	<a href="${path}/lecture/view?lno=${new_DTO.lno}">
	                        		<img class="lecture_img" src="${path}/resources/img/${new_DTO.limg}">
	                       		</a>
	                       	</div>
	                        <div class="section_name">
	                        	<a href="${path}/lecture/view?lno=${new_DTO.lno}">
	                            	${new_DTO.lname}
	                            </a>
	                        </div>
	                        <div class="section_text">
	                            <span class="section_day">기간ㅣ</span><fmt:formatDate value="${new_DTO.startdate}" pattern="yyyy.MM.dd"/>
	                            ~ <fmt:formatDate value="${new_DTO.enddate}" pattern="yyyy.MM.dd"/>
	                        </div>
	                        <div class="section_text">
	                        	<span class="section_teacher">강사ㅣ</span>${new_DTO.tname}
	                        </div>
	                    </div>
                    </c:forEach>
                </div>
            </div>
            <a href="${path}/lecture/list">
            	<span class="class_more">강좌 더 보기</span>
            </a>
        </div>
    </section>
	<%@ include file="include/home_footer.jsp" %>
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
			$("#logout").click(function(){
				$.ajax({
					url: "${path}/member/logout",
					/* type: "POST", */
					sucecess:function(){
						
					},
					error:function(){
						alert("logout error!!");
					}
				});
			});
			
			
			var flag1 = 0;
            var flag2 = 0;
            
            $(".name").click(function(){
            	if (flag1 == 0) {
            		$(".mypage_box").css("display", "inline-block");
            		flag1 = 1;
				} else {
					$(".mypage_box").css("display", "none");
            		flag1 = 0;
				}
            	$(".main_box").css("display", "none");
            	flag2 = 0;
            });
            
            $(".main_btn").click(function(){
            	if (flag2 == 0) {
            		$(".main_box").css("display", "inline-block");
            		flag2 = 1;
				} else {
					$(".main_box").css("display", "none");
            		flag2 = 0;
				}
            	$(".mypage_box").css("display", "none");
            	flag1 = 0;
            });
			
			
        });
        $(window).scroll(function(event) {
            var scrollValue = $(this).scrollTop();
            if (scrollValue >= 150) {
                $('.home_header_navi').css("position", "fixed")
                                  .css("background", "white")
                                  .css('box-shadow', '2px 2px 20px rgba(0, 0, 0, 0.15)');
                $('.home_navi1').html("<img src='${path}/resources/img/logo_02.png'>");
                $('.home_navi_btn').css("color", "#444");
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
                $('.home_navi1').html("<img src='${path}/resources/img/logo_02_white.png'>");
                $('.home_navi_btn').css("color", "white");
                $('.name_btn').css("opacity", "1");
                $('.home_navi_bar').eq(0).css("display", "none");
                $('.home_navi_bar').eq(1).css("display", "none");
                $('.home_navi_bar').eq(2).css("display", "none");
            }
        });

    </script>
</body>
</html>