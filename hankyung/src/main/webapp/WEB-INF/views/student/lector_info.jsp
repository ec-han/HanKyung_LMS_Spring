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
	.lector_info {
        border: 1px solid red;
        width: 100%;
        min-width: 800px;
        padding: 20px 20px 30px;
        box-sizing: border-box;
    }
    .info_title {
        font-size: 30px;
    }
	.info_all {
		border: 1px solid blue;
	    padding: 40px 0px;
	}
	.lector_top {
		display: flex;
	}
	.lector_img {
		border-radius: 5px;
		overflow: hidden;
		margin-right: 20px;
	}
	.img {
		display: inline-block;
		width: 250px;
		height: 160px;
		background: #ddd;
	}
	.lector_content {
		flex: 1;
		width: 100%;
	}
	.index_box {
		width: 100%;
		height: 52px;
		font-size: 16px;
		border-bottom: 1px solid #ddd;
		line-height: 52px;
	}
	.index_box:first-child {
		border-top: 1px solid #ddd;
	}
	.text_box {
		display: inline-block;
		width: 15%;
		border-right: 1px solid #ddd;
		text-align: center;
		background: #eee;
	}
	.lector_text {
		display: inline-block;
		padding-left: 2%;
	}
	.lector_center {
		margin-top: 20px;
		padding: 40px;
		border: 1px solid #ddd;
	}








	.header_button {
		margin-top: 40px;
	}
	.button_left {
		display: inline-block;
	}
	.button_right {
		display: inline-block;
		float: right;
	}
	.lector_btn {
		display: inline-block;
		width: 100px;
		height: 43px;
		line-height: 43px;
		text-align: center;
		font-size: 15px;
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
		border: 1px solid #2D314F;
		background: #2D314F;
	}
</style>
</head>
<body>
	<form>
 		<div class="lector_info">
	        <div class="info_title">과정 정보</div>
	        <div class="header_button">
				<div class="button_left">
					<a class="lector_btn white_btn">뒤로가기</a>
				</div>
				<div class="button_right">
					<a class="lector_btn white_btn">수정</a>
					<a class="lector_btn color_btn">삭제</a>
				</div>
			</div>
	        <div class="info_all">
        		<div class="lector_top">
	        		<div class="lector_img">
	        			<span class="img">span대신 img넣기</span>
	        		</div>
	        		<div class="lector_content">
	        			<div class="index_box lector_title">
	        				<span class="text_box">과정명</span>
	        				<span class="lector_text">
	        					MySQL 전문가 과정 : 비즈니스를 위한 분석 테크닉
	        				</span>
	        			</div>
	        			<div class="index_box lector_day">
	        				<span class="text_box">과정기간</span>
	        				<span class="lector_text">
	        					2018.12.27 ~ 2019.04.05
	        				</span>
	        			</div>
	        			<div class="index_box lector_name">
	        				<span class="text_box">강사명</span>
	        				<span class="lector_text">
	        					최철웅
	        				</span>
	        			</div>
	        		</div>
        		</div>
        		<div class="lector_center">
        			sdfalsdjfalsdfjlsdfsdfsdf!<br>
        			sdflkasdgkewg<br>
        			Fkalsdfjasdl;gjerldsg
        			sdlfksdflerglfs

        		</div>
	        </div>
	    </div>
	</form>
</body>
</html>