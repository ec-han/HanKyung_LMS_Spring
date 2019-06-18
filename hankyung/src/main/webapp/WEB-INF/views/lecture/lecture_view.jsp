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
	    a {
            cursor: pointer;
            text-decoration: none;
        }
		.lecture_info {
			position: relative;
			z-index: 1;
            border: 1px solid red;
            width: 100%;
            min-width: 1350px;
            padding: 150px 0px 0px;
            box-sizing: border-box;
            transition: .3s;
        }
        .info_title {
            font-size: 30px;
            padding-left: 20px;
            margin-bottom: 60px;
        }
		








		.header_button {
			padding: 0px 20px;
		}
		.button_left {
			display: inline-block;
		}
		.button_right {
			display: inline-block;
			float: right;
		}
		.lecture_btn {
			display: inline-block;
			width: 100px;
			height: 40px;
			line-height: 40px;
			text-align: center;
			font-size: 15px;
			border-radius: 20px;
		}
		.white_btn {
			border: 1px solid #ddd;
			color: #999;
			transition: .3s;
		}
		.color_btn {
			border: 1px solid #79CDCF;
			background: #79CDCF;
			color: white;
			margin-left: 8px;
			transition: .3s;
		}
		.white_btn:hover {
			border: 1px solid #444;
			color: #444;
		}
		.color_btn:hover {
			border: 1px solid #FFC000;
			background: #FFC000;
		}










		.info_all {
            padding: 25px 0px 0px;
		}
		.lecture_img {
			overflow: hidden;
			position: absolute;
			z-index: -1;
			right: 0;
		}
		.img {
			display: inline-block;
			width: 380px;
			height: 230px;
			background: #ddd;
		}
		.lecture_top {
			background: #333;
			width: 81%;
			height: 230px;
		}
		.index_box {
			color: white;
			font-size: 20px;
			margin-left: 8%;
		}
		.lecture_title {
			font-size: 32px;
			padding-top: 45px;
			padding-bottom: 27px;
		}
		.lecture_day {
			padding-bottom: 5px;
		}
		.lecture_center {
			width: 81%;
			box-sizing: border-box;
			padding: 100px 6.5% 100px;
		}
		.center_title {
			font-size: 32px;
			padding-bottom: 20px;
		}







		
		.lecture_bottom {
			margin-top: 60px;
			padding: 100px 0px 110px;
			background: #eee;
		}
		.bottom_title {
			text-align: center;
			font-size: 32px;
			padding-bottom: 40px;
		}
		.bottom_content {
			display: flex;
			justify-content: center;
		}
		.bottom_box {
			background: white;
			width: 300px;
			height: 330px;
			border-radius: 5px;
			margin-right: 35px;
			padding: 45px 35px 35px;
			box-sizing: border-box;
			box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.15);
			position: relative;
			overflow: hidden;
		}
		.bottom_box:last-child {
			margin-right: 0px;
		}
		.bottom_bar {
			position: absolute;
			width: 330px;
			height: 7px;
			top: 0;
			left: 0;
		}
		.bottom_bar1 {
			background: #79CDCF;
		}
		.bottom_bar2 {
			background: #2D314F;
		}
		.bottom_bar3 {
			background: #FFC000;
		}
		.box_title {
			font-size: 24px;
			line-height: 30px;
			padding-bottom: 20px;
		}
		.box_name {
			font-size: 18px;
			position: absolute;
			bottom: 32px;
			right: 35px;
		}
</style>
</head>
<body>
	<%@ include file="../include/home_header.jsp" %>
	<div class="lecture_info">
        <div class="info_title">과정 정보</div>
        <div class="header_button">
			<div class="button_left">
				<a class="lecture_btn white_btn">뒤로가기</a>
			</div>
			<div class="button_right">
				<a class="lecture_btn white_btn">수정</a>
				<a class="lecture_btn color_btn">삭제</a>
			</div>
		</div>
        <div class="info_all">
       		<div class="lecture_top">
        		<div class="lecture_img">
        			<span class="img">span대신 img넣기</span>
        		</div>
        		<div class="lecture_content">
        			<div class="index_box lecture_title">
       					MySQL 전문가 과정 : 비즈니스를 위한 분석 테크닉
        			</div>
        			<div class="index_box lecture_day">
        				<span class="text_box">과정기간ㅣ</span>2018.12.27 ~ 2019.04.05
        			</div>
        			<div class="index_box lecture_name">
        				<span class="text_box">강사명ㅣ</span>최철웅
        			</div>
        		</div>
       		</div>
       		<div class="lecture_center">
       			<div class="center_title">
       				강의 소개
       			</div>
       			<div>
       				sdfalsdjfalsdfjlsdfsdfsdf!<br>
       				sdflkasdgkewg<br>
       				Fkalsdfjasdl;gjerl<br>
       				dsgsdlfksdflerglfs
       			</div>
       		</div>
       		<div class="lecture_bottom">
       			<div class="bottom_title">
       				BEST 수강 후기
       			</div>
       			<div class="bottom_content">
       				<div class="bottom_box">
       					<div class="bottom_bar bottom_bar1"></div>
       					<div class="box_title">
       						좋은 학습 방법입니다.
       					</div>
       					<div class="box_text">
       						누군가에게 무언가를 설명하려면 평소 알고 있었던 지식이라도 다시 한 번 돌아보고 다듬어야 하며 효율적인 전달 방법을 고민해야 합니다. 그 과정을 반복하며 보다 나은 실력을 쌓을 수 있습니다.
       					</div>
       					<div class="box_name">
       						백기선
       					</div>
       				</div>
       				<div class="bottom_box">
       					<div class="bottom_bar bottom_bar2"></div>
       					<div class="box_title">
       						커리어적인 신뢰도를 높일 수 있었습니다.
       					</div>
       					<div class="box_text">
       						인프런에 올린 강의로 시작해서 지금 오프라인 강의도 하고 있는 거고. 또 다른 회사에서 내 이력서를 볼 때, 신뢰도가 더 높아졌죠.
       					</div>
       					<div class="box_name">
       						이정주
       					</div>
       				</div>
       				<div class="bottom_box">
       					<div class="bottom_bar bottom_bar3"></div>
       					<div class="box_title">
       						인프런은 지식에 가치를 부여하는 좋은 사례인 것 같아요.
       					</div>
       					<div class="box_text">
       						우리나라는 자기 경력에 관련한 교육의 가가 낮은 경우가 많아요. 인프런은 강사와 학습자 모두가 만족하는 좋은 사례를 만들어 가고 있다고 생각합니다.
       					</div>
       					<div class="box_name">
       						이동욱
       					</div>
       				</div>
       			</div>
       		</div>
        </div>
    </div>
    <%@ include file = "../include/home_footer.jsp" %>
</body>
</html>