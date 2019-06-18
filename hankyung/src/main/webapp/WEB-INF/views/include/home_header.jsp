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
		padding: 23px 0px;
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
		width: 150px;
		color: #444;
	}
	#about, #projects, #contact {
		color: #444;
	}
	#login, #join, #basket {
		font-family: 'Noto Sans KR', sans-serif;
		font-weight: normal;
		font-size: 18px;
		color: #444;
	}
	#login:hover, #join:hover, #basket:hover {
		color: #FFC000!important;
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
                    <span class="home_navi_span"><a class="home_navi1">HanKyung LMS</a></span>
                </div>
                <div class="home_navi_right">
                    <div class="home_navi_div">
                        <span class="home_navi_span">
                            <a href="${path}/login" class="home_navi home_navi2" id="login">로그인</a>
                        </span>
                    </div>
                    <div class="home_navi_div">
                        <span class="home_navi_span">
                            <a href="${path}/create" class="home_navi home_navi3" id="join">회원가입</a>
                        </span>
                    </div>
                    <div class="home_navi_div">
                        <span class="home_navi_span">
                            <a href="${path}/" class="home_navi home_navi4" id="basket">수강바구니</a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <script type="text/javascript">
		$(document).ready(function() {
            
        });
        $(window).scroll(function(event) {
            var scrollValue = $(this).scrollTop();
            if (scrollValue >= 100) {
                $('.home_header_navi').css("position", "fixed")
                                  .css('box-shadow', '2px 2px 20px rgba(0, 0, 0, 0.15)');
                } else {
                	$('.home_header_navi').css("position", "absolute")
                                 .css('box-shadow', 'none');
            }
        });
	</script>
</body>
</html>