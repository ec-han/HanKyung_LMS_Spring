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
		transition: .3s;
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
		width: 105px;
		transition: .3s;
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
	#login, #join, #basket, #main, #name, #logout {
		font-family: 'Noto Sans KR', sans-serif;
		font-weight: normal;
		font-size: 18px;
		color: #444;
	}
	#login:hover, #join:hover, #basket:hover, #main:hover, #name:hover, #logout:hover {
		color: #FFC000!important;
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
		top: 83px;
		left: -8px;
		background: white;
		box-shadow: 2px 2px 10px rgba(0,0,0,0.15);
		padding: 2px 7px;
		box-sizing: border-box;
		border-radius: 5px;
		font-size: 14px;
		font-weight: 400;
		transition: .3s;
	}
	.mypage_btn {
		display: block;
		margin: 12px 5px 12px 13px;
	}
	.update_icon, .wish_icon {
		color: #d1d3e2;
		padding-right: 5px;
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
		                            <a class="home_navi home_navi2" id="name">
		                            	<span id="name_point">${sessionScope.name}</span>님
		                            	<i class="fas fa-chevron-down"></i>
		                            </a>
		                            
		                        </span>
		                        <!-- <div class="mypage_arrow arrow_top"></div>
		                        <div class="mypage_arrow"></div> -->
		                        <div class="mypage_box">
		                        	<a class="wishlist mypage_btn"><i class="fas fa-heart wish_icon"></i>위시리스트</a>
		                        	<a class="member_update mypage_btn"><i class="fas fa-cogs fa-sm fa-fw mr-2 update_icon"></i>회원수정</a>
		                        </div>
	                    	</div>
		                	<div class="home_navi_div">
		                        <span class="home_navi_span">
		                            <a href="${path}/main/" class="home_navi home_navi2" id="main">나의강의실</a>
		                        </span>
	                    	</div>
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
                    <div class="home_navi_div">
                        <span class="home_navi_span">
                            <a href="${path}/" class="home_navi home_navi4" id="basket">장바구니</a>
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
            
            var flag = 0;
            
            $("#name").click(function(){
            	if (flag == 0) {
            		$(".mypage_box").css("display", "inline-block");
            		flag = 1;
				} else {
					$(".mypage_box").css("display", "none");
            		flag = 0;
				}
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