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
			transition: .3s;
		}
		.class_more:hover {
			background: #2D314F;
		}









		
		.all_class {
			width: 1219px;
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
			width: 404px;
			padding: 12px 12px 70px;
			box-sizing: border-box;
		}
		
		
		
		
		
		
		
		
		
		
		/* 페이지 이동 */
		.board_navi > ul {
			display: flex;
			justify-content: center;
			margin-top: 10px;
		}
		.board_navi ul li a {
			font-family: 'Noto Sans KR', sans-serif;
			display: inline-block;
			border-collapse: collapse;
			color: #666;
			border: 1px solid #ddd;
			border-right: 0px;
			width: 27px;
			height: 27px;
			line-height: 25px;
			text-align: center;
			transition: .3s;
		}
		.board_navi ul li:last-child a {
			border-right: 1px solid #ddd;
		}
		.navi_icon {
			margin-top: 5.5px;
		}
		.board_navi ul li a:hover {
			color: #E65D6E;
		}
		.board_navi ul li a:hover .navi_icon {
			color: #E65D6E;
		}
		#active a {
		background: #333;
		border: 1px solid #333;
		color: white;
		}
		#active a:hover {
			color: white;
		}
		#no_hover:hover {
			color: inherit;
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
                	<c:forEach items="${map.list}" var="list">
	                    <div class="all_content_box">
	                    	<a>
	                    		<i class="fas fa-shopping-basket basket_icon"></i>
	                    	</a>
	                    	<div class="section_img">
	                        	<a href="${path}/lecture/view?lno=${list.lno}">
	                        		<img class="lecture_img" src="${path}/resources/img/${list.limg}">
	                       		</a>
	                       	</div>
	                        <div class="section_name">
	                        	<a href="${path}/lecture/view?lno=${list.lno}">
	                            	${list.lname}
	                            </a>
	                        </div>
	                        <div class="section_text">
	                        	<span class="section_day">기간ㅣ</span><fmt:formatDate value="${list.startdate}" pattern="yyyy.mm.dd" />
	                        	~ <fmt:formatDate value="${list.enddate}" pattern="yyyy.mm.dd" />
	                        </div>
	                        <div class="section_text">
	                            <span class="section_teacher">강사ㅣ</span>${list.tname}
	                        </div>
	                    </div>
                    </c:forEach>
                </div>
            </div>
            
            
            
        	<div class="board_navi">
        		<ul>
        			<c:if test="${map.pager.curBlock > 1}">
	        			<li><a href="${path}/lecture/list?curPage=${map.pager.blockBegin-10}&sort_option=${map.sort_option}&search_option=${map.search_option}&keyword=${map.keyword}"><i class="fas fa-angle-left navi_icon"></i></a></li>
	        			<li><a href="${path}/lecture/list?curPage=1&sort_option=${map.sort_option}&search_option=${map.search_option}&keyword=${map.keyword}">1</a></li>
	        			<li><a id="no_hover">...</a></li>
        			</c:if>
        			
        			<c:forEach begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}" var="idx">
				    	<li <c:out value="${map.pager.curPage == idx?'id=active':''}"/>>
				    		<a href="${path}/lecture/list?curPage=${idx}&sort_option=${map.sort_option}&search_option=${map.search_option}&keyword=${map.keyword}" class="navi_btn">
				    			${idx}
				    		</a>
				    	</li>
				    </c:forEach>
				    
				    <c:if test="${map.pager.curBlock < map.pager.totBlock}">
					    <li><a id="no_hover">...</a></li>
					    <li><a href="${path}/lecture/list?curPage=${map.pager.totPage}&sort_option=${map.sort_option}&search_option=${map.search_option}&keyword=${map.keyword}">${map.pager.totPage}</a></li>
					    <li><a href="${path}/lecture/list?curPage=${map.pager.blockEnd + 1}&sort_option=${map.sort_option}&search_option=${map.search_option}&keyword=${map.keyword}"><i class="fas fa-angle-right navi_icon"></i></a></li>
				    </c:if>
				</ul>
        	</div>
       	</div>
    </section>
    <%@ include file = "../include/home_footer.jsp" %>
</body>
</html>