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
	.home_header_navi {
		background: white;
		width: 100%;
		min-width: 1350px;
		font-family: 'Nunito', sans-serif;
		font-size: 20px;
		font-weight: 600;
		letter-spacing: 1px;
		position: absolute;
		z-index: 100;
		border-bottom: 1px solid #ddd;
		top: 0px;
		transition: .2s;
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
		padding: 23px 0px;
	}
	.home_navi_span {
		display: inline-block;
		text-align: center;
	}
	.home_navi {
		display: inline-block;
		margin: 0px 15px;
		transition: .2s;
	}
	.home_navi1 {
          width: 200px;
    }
    .home_navi1 > img {
    	padding: 13px 0px 12px;
    	width: 200px;
    }
	#about, #projects, #contact {
		color: #444;
	}
	#login, #join, #basket, #main, #name, #notname, #notname, #logout {
		font-family: 'Noto Sans KR', sans-serif;
		font-weight: normal;
		font-size: 18px;
		color: #444;
	}
	#login:hover, #join:hover, #basket:hover, #main:hover, #name:hover, #logout:hover {
		color: #FFC000!important;
	}
	#notname {
		cursor: default;
	}
	#name {
		margin: 0px 15px;
		width: 100px;
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
	#name_point {
		color: #FFC000;
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
		top: 73px;
		left: -8px;
		background: white;
		box-shadow: 2px 2px 10px rgba(0,0,0,0.15);
		box-sizing: border-box;
		font-size: 14px;
		font-weight: 400;
		overflow: hidden;
		padding-top: 5px;
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
		top: 73px;
		left: -196.1px;
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
		margin: 5px 5px;
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
	
	
	
	
	
	
	
	
	
	
	a {
	    cursor: pointer;
	    text-decoration: none;
	}
</style>
</head>
<body>
	<header>
        <div class="home_header_box1">
            <div class="home_header_navi">
                <div class="home_navi_left">
                    <span class="home_navi_span"><a href="${path}/" class="home_navi1"><img src="${path}/resources/img/logo_02.png"></a></span>
                </div>
                <div class="home_navi_right">
	                <c:choose>
		                <c:when test="${!empty sessionScope.id}">
		                	<div class="home_navi_div mypage">
		                        <span class="home_navi_span">
		                            <a class="home_navi home_navi2 name" id="name">
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
		                        	<a href="${path}/noticeView" class="member_update mypage_btn"><i class="fas fa-exclamation-circle icon_hover" id="notice_icon"></i>공지사항</a>
		                        	<a href="${path}/qnaView" class="member_update mypage_btn"><i class="fas fa-question-circle icon_hover" id="qna_icon"></i>묻고답하기</a>
		                        </div>
	                    	</div>
	                    	<c:if test="${sessionScope.type == 0}">
	                    		<div class="home_navi_div">
			                        <span class="home_navi_span">
			                            <a href="${path}/main/" class="home_navi home_navi2 home_navi" id="main">LMS관리</a>
			                        </span>
		                    	</div>
	                    	</c:if>
	                    	<c:if test="${sessionScope.type == 1}">
			                	<div class="home_navi_div">
			                        <span class="home_navi_span">
			                            <a href="${path}/main/" class="home_navi home_navi2 home_navi" id="main">나의강의실</a>
			                        </span>
		                    	</div>
	                    	</c:if>
	                    	<c:if test="${sessionScope.type == 2}">
			                	<div class="home_navi_div">
			                        <span class="home_navi_span">
			                            <a class="home_navi_btn myclass main_btn home_navi" id="main">나의강의실</a>
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
		                            <a href="${path}/member/login" class="home_navi home_navi2" id="login">로그인</a>
		                        </span>
		                    </div>
		                    <div class="home_navi_div">
		                        <span class="home_navi_span">
		                            <a href="${path}/member/constract" class="home_navi home_navi3" id="join">회원가입</a>
		                        </span>
		                    </div>
	                    </c:otherwise>
                    </c:choose>
                    <div class="home_navi_div">
                        <span class="home_navi_span">
                            <a href="${path}/lecture/list" class="home_navi home_navi2" id="login">강좌보기</a>
                        </span>
                    </div>
                    <c:if test="${!empty sessionScope.id}">
                    	<div class="home_navi_div">
	                        <span class="home_navi_span">
	                            <a href="${path}/" class="home_navi home_navi4" id="logout">로그아웃</a>
	                        </span>
                    	</div>
                    </c:if>
                </div>
            </div>
        </div>
    </header>
    <script type="text/javascript">
		$(document).ready(function() {
            $("#logout").click(function(){
            	$.ajax({
            		url:"${path}/member/logout",
            		success:function(){
            			
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
            if (scrollValue >= 100) {
                $('.home_header_navi').css("position", "fixed")
                                  .css('box-shadow', '2px 2px 20px rgba(0, 0, 0, 0.15)')
                                  .css('border', '0px');
                } else {
                	$('.home_header_navi').css("position", "absolute")
                                 .css('box-shadow', 'none')
                                 .css('border-bottom', '1px solid #ddd');
            }
        });
	</script>
</body>
</html>