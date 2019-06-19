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
		.section_box {
			width: 100%;
			min-width: 1350px;
			padding: 150px 0px;
		}
		.info_title {
        	width: 1120px;
            font-size: 30px;
            margin: 0px auto;
            padding: 0px 25px 40px;
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
			box-sizing: border-box;
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









		
		.all_class {
			width: 1149px;
			margin: 0px auto;
			padding-top: 20px;
			padding-bottom: 20px;
		}
		.all_content {
			margin: 0px auto;
		}
		.all_content_box {
			display: inline-block;
			position: relative;
			width: 380px;
			padding: 12px 12px 70px;
			box-sizing: border-box;
		}
</style>
</head>
<body>
	<%@ include file="../include/home_header.jsp" %>
	<section>
        <div class="section_box" id="section_box">
        	<div class="info_title">과정 및 강좌 목록</div>
            <div class="all_class">
                <div class="all_content">
                    <div class="all_content_box">
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
                    <div class="all_content_box">
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
                    <div class="all_content_box">
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
                    <div class="all_content_box">
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
                    <div class="all_content_box">
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
                    <div class="all_content_box">
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
                    <div class="all_content_box">
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
                    <div class="all_content_box">
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
                    <div class="all_content_box">
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
    <%@ include file = "../include/home_footer.jsp" %>
</body>
</html>