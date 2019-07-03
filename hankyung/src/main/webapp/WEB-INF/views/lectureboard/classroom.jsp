<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/main_common.css?v=1">
<meta charset="UTF-8">
<title>학습방</title>
<style type="text/css">
.result-list {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 100%;
    margin-bottom: 1px;
}
.result-list>li {
    background: #fff;
    box-shadow: 0 1px #ccc;
    overflow: hidden;
}
.result-list .result-info {
    width: 100%;
}
.result-list>li>div {
    display: table-cell;
    padding: 20px;
    position: relative;
    vertical-align: top;
}
.result-list .result-price {
    border-left: 1px dashed #ddd;
    font-size: 28px;
    padding-top: 40px;
    text-align: center;
    max-width: 240px;
    min-width: 240px;
}
.result-list>li>div {
    display: table-cell;
    padding: 20px;
    position: relative;
    vertical-align: top;
}
.title {
	font-size: 1.5rem;
}
#classTable td {
	box-shadow: 0 2px 35px 0 rgba(235, 237, 242, 0.7);
}
.lecture-view-btn {
	display: flex;
    justify-content: center;
    align-items: center;
    font-size: 1.6rem;
    background: #2D314F;
    margin-top: 1rem;
}
#lecture-view-span {
    color: white;
}
.lecture-view-btn > i {
    padding-right: 0.3rem;
    color: white;
}
</style>
</head>
<body>
	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
				<table class="table table-bordered" id="classTable" width="100%" cellspacing="0">
					<tbody>
						<tr>
							<td>
								<ul class="result-list">
									<li>
										<div class="result-info">
											<h4 class="title">
												언어와 수업 소개
											</h4>
											<p class="location">
												수업시간: <span id="study-time">20분</span>
											</p>
											<p class="desc">
												수업내용: <span id="lecture-info">Java의 역사와 특징</span><br> 
												수업목표: <span id="lecture-goal">수업에 대한 소개와 Java 언어에 대한 소개</span>
											</p>
										</div>
										<div class="result-price">
											<span id="lecture-no">1</span>강
											<a href="#" class="lecture-view-btn">
												<i class="fas fa-headphones"></i>
												<span id="lecture-view-span">수업보기</span>
											</a>
										</div>
									</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<ul class="result-list">
									<li>
										<div class="result-info">
											<h4 class="title">
												JAVA의 설치
											</h4>
											<p class="location">
												수업시간: <span id="study-time">20분</span>
											</p>
											<p class="desc">
												수업내용: <span id="lecture-info">Java 설치 방법과 자바 프로그램의 동작</span><br> 
												수업목표: <span id="lecture-goal">Java 설치 및 프로그램 동작에 대한 이해</span>
											</p>
										</div>
										<div class="result-price">
											<span id="lecture-no">2</span>강
											<a href="#" class="lecture-view-btn">
												<i class="fas fa-headphones"></i>
												<span id="lecture-view-span">수업보기</span>
											</a>
										</div>
									</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<%@ include file="../include/main_footer.jsp" %>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
		  
		});
	</script>
</body>
</html>
