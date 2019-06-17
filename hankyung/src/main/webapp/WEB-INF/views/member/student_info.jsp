<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/board_common.css?v=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a {
	    cursor: pointer;
	    text-decoration: none;
	}
	.student_info {
        width: 100%;
        min-width: 800px;
        padding: 50px;
        box-sizing: border-box;
    }
    .info_title {
        font-size: 30px;
    }
    .info_top {
        padding: 40px 0px;
        display: flex;
        margin-bottom: 30px;
    }
    .top_box {
        padding: 20px 25px 24px;
        /* border: 1px solid #ddd; */
        box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.20);
        border-radius: 5px;
        flex: 1;
        position: relative;
        overflow: hidden;
    }
    .top_box1 {
        margin-right: 30px;
    }
    .top_box_bar1 {
        display: inline-block;
        background-color: #79CDCF;
        width: 5px;
        height: 100%;
        position: absolute;
        left: 0;
        top: 0;
    }
    .top_box_bar2 {
        display: inline-block;
        background-color: #FFC000;
        width: 5px;
        height: 100%;
        position: absolute;
        left: 0;
        top: 0;
    }
    .top_title {
        padding-bottom: 10px;
    }
    .content_bar {
        display: flex;
        align-items: center;
    }
    .bar_back {
        display: inline-block;
        width: 100%;
        height: 40px;
        background-color: white;
        border-radius: 20px;
        box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.20);
        position: relative;
        overflow: hidden;
    }
    .bar_percent {
        display: inline-block;
        position: absolute;
        height: 40px;
    }
    .percent_attend {
        width: 67%;
        background-color: #79CDCF;
    }
    .percent_class {
        width: 70%;
        background-color: #FFC000;
    }
    .content_text {
    	font-size: 15px;
        display: inline-block;
        position: absolute;
        right: 4%;
        top: 9px;
    }
    .info_center {
        border: 1px solid blue;
        padding: 40px 0px;
        display: flex;
    }
    .center_box {
        padding: 0px;
        /* border: 1px solid #ddd; */
        box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.20);
        border-radius: 5px;
        flex: 1;
        position: relative;
        overflow: hidden;
    }
    .center_box1 {
        margin-right: 30px;
    }
    .center_title {
        background-color: #eee;
        padding: 12px 20px;
        font-size: 17px;
    }
    .center_text {
        padding: 15px 20px;
        height: 194px;
	 overflow: auto;
    }
    .class_title, .qna_title {
    	font-size: 15px;
    	line-height: 16px;
    }
    .class_title:hover, .qna_title:hover {
    	color: #79CDCF;
    	transition: .2s;
    }
    .class_day, .qna_day {
    	color: #bbb;
    	font-size: 13px;
    	padding: 3px 0px 0px;
    }
    .point_span {
    	font-weight: 600;
    }
    .qna_answer {
    	padding: 0px 15px;
    }
    .qna_result {
    	color: #79CDCF;
    	font-weight: 600;
    }
    .content_box {
    	border-top: 1px solid #ddd;
    	padding: 15px 0px;
    }
    .content_box:nth-child(1) {
    	border: 0px;
    	padding-top: 3px;
    }
    .content_box:last-child {
    	padding-bottom: 3px;
    }
</style>
</head>
<body>
	<div class="big_wrapper">
		<%@ include file="../include/board_aside.jsp" %>
		<div class="content_wrapper">
			<%@ include file="../include/board_nav.jsp" %>
	
			<div class="container">
				<div class="container_box" id="test">
					<div class="student_info">
				        <div class="info_title">학생정보</div>
				        <div class="info_top">
				            <div class="top_box top_box1">
				                <span class="top_box_bar1"></span>
				                <div class="top_title">출석률</div>
				                <div class="top_content">
				                    <div class="content_bar">
				                        <span class="bar_back">
				                            <span class="bar_percent percent_attend"></span>
				                            <span class="content_text">67%</span>
				                        </span>
				                    </div>
				                </div>
				            </div>
				            <div class="top_box stop_box2">
				                <span class="top_box_bar2"></span>
				                <div class="top_title">진행률</div>
				                <div class="top_content">
				                    <div  class="content_bar">
				                        <span class="bar_back">
				                            <span class="bar_percent percent_class"></span>
				                            <span class="content_text">70%</span>
				                        </span>
				                    </div>
				                </div>
				            </div>
				        </div>
				        <div class="info_center">
				            <div class="center_box center_box1">
				                <div class="center_title">수강중인 과정</div>
				                <div class="center_text class_text">
				                	<div class="content_box">
					                    <a class="class_title">MySQL 전문가 과정 : 비즈니스를 위한 분석 테크닉</a>
					                    <div class="class_day"><span class="point_span">기간ㅣ</span>2018.12.27 ~ 2019.04.05</div>
				                    </div>
				                    <div class="content_box">
					                    <a class="class_title">MySQL 전문가 과정 : 비즈니스를 위한 분석 테크닉</a>
					                    <div class="class_day"><span class="point_span">기간ㅣ</span>2018.12.27 ~ 2019.04.05</div>
				                    </div>
				                    <div class="content_box">
					                    <a class="class_title">MySQL 전문가 과정 : 비즈니스를 위한 분석 테크닉</a>
					                    <div class="class_day"><span class="point_span">기간ㅣ</span>2018.12.27 ~ 2019.04.05</div>
				                    </div>
				                    <div class="content_box">
					                    <a class="class_title">MySQL 전문가 과정 : 비즈니스를 위한 분석 테크닉</a>
					                    <div class="class_day"><span class="point_span">기간ㅣ</span>2018.12.27 ~ 2019.04.05</div>
				                    </div>
				                </div>
				            </div>
				            <div class="center_box center_box2">
				                <div class="center_title">나의 Q&A</div>
				                <div class="center_text qna_text">
				                	<div class="content_box">
					                    <a class="qna_title">SQL이 어려워요</a>
					                    <div class="qna_day">
					                        2019.03.12
					                        <span class="qna_answer">
					                        	<span class="point_span">답변ㅣ</span><span class="qna_result">완료</span>
					                        </span>
					                    </div>
				                    </div>
				                    <div class="content_box">
					                    <a class="qna_title">SQL이 어려워요</a>
					                    <div class="qna_day">
					                        2019.03.12
					                        <span class="qna_answer">
					                        	<span class="point_span">답변ㅣ</span><span class="qna_result">완료</span>
					                        </span>
					                    </div>
				                    </div>
				                    <div class="content_box">
					                    <a class="qna_title">SQL이 어려워요</a>
					                    <div class="qna_day">
					                        2019.03.12
					                        <span class="qna_answer">
					                        	<span class="point_span">답변ㅣ</span><span class="qna_result">완료</span>
					                        </span>
					                    </div>
				                    </div>
				                    <div class="content_box">
					                    <a class="qna_title">SQL이 어려워요</a>
					                    <div class="qna_day">
					                        2019.03.12
					                        <span class="qna_answer">
					                        	<span class="point_span">답변ㅣ</span><span class="qna_result">완료</span>
					                        </span>
					                    </div>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </div>
				</div>
			</div>
			
			<%@ include file="../include/board_footer.jsp" %>
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>