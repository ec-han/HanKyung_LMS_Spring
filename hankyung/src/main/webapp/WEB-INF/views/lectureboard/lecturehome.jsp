<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/main_common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/board_common.css?v=1">
<meta charset="UTF-8">
<title>테스트페이지</title>
<style type="text/css">
.flex-wrap {
	display: flex;
	flex-direction: row;
}
#notice-wrap, #study-info {
	flex: 5;
	margin-right: 1rem;
}
/* card */
.progress {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    height: 1rem;
    overflow: hidden;
    font-size: .75rem;
    background-color: #eaecf4;
    border-radius: .35rem;
}
.progress-bar {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    color: #fff;
    text-align: center;
    white-space: nowrap;
    background-color: #4e73df;
    -webkit-transition: width .6s ease;
    transition: width .6s ease;
}
#bg-red {
    background-color: #e74a3b;
}
#bg-green {
	background-color: #1cc88a;
}
#bg-yellow {
	background-color: #f6c23e;
}
.widget-toolbar {
    display: inline-block;
    padding: 0 10px;
    line-height: 37px;
    float: right;
    position: relative;
    bottom: 1rem;
}
.widget-toolbar > a{
    font-size: 14px;
    margin: 0 1px;
    display: inline-block;
    padding: 0;
    line-height: 24px;
}
.widget-toolbar > a > i {
    text-align: center;
}
#class-room-Table > thead > tr > th {
	padding: 0;
}
.home-table {
 	clear: both;
    margin-top: 6px;
    margin-bottom: 6px;
    max-width: none;
    border-collapse: separate;
    border-spacing: 0;
}
.lecture-view-btn {
    font-size: 1rem;
    margin: 0;
}
.study-info-item-title {
	font-size: 0.8rem;
    font-weight: normal;
    letter-spacing: 1;
}
.card-text-primary {
	color: #4e73df;
    font-weight: bold;
    line-height: 1.2;
    margin: 0;
}
.fa-circle {
	color: #1cc88a;
}
.fa-times {
	color: #e74a3b;
}
#check_ok {
	display: flex;
    justify-content: center;
    align-items: center;
}
#check_no {
	display: flex;
    justify-content: center;
    align-items: center;
    font-size: 1rem;
}
</style>
</head>
<body>

	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
				<div class="flex-wrap">
					<c:if test="${sessionScope.type != '0'}">
					<!-- 공지사항 출력  -->
					<div class="card shadow order-1" id="notice-wrap">
						<div class="card-header">
							<h6 class="card-text-primary">공지사항</h6>
							<div class="widget-toolbar">
								<a href="${path}/lectureboard/list?viewoption=notice&search_option=all">
									<i class="fa fa-plus"></i>
								</a>
							</div>
						</div>
						<div class="card-body">
							<div class="col-sm-12 table_wrapper">
			            		<table class="table table-bordered home-table" id="noticeDataTable" width="100%" cellspacing="0">
				                  <tbody>
				                  <c:forEach items="${notice}" var="notice">
				                    <tr>
				                      <td>
				                      	<input type="hidden" name="bno" value="${notice.bno}">
				                      	<a href="${path}/lectureboard/read?bno=${notice.bno}">${notice.title}</a>
				                      </td>
				                    </tr>
				                   </c:forEach>
				                  </tbody>
			                	</table>
			              	</div>
	              		</div>
	              	</div>
					<!-- 공지사항 출력 끝   -->
					</c:if>
					<c:if test="${sessionScope.type == '1'}">
					<!-- 묻고답하기  출력  -->
					<div class="card shadow order-1" id="notice-wrap">
						<div class="card-header">
							<h6 class="card-text-primary">묻고답하기</h6>
							<div class="widget-toolbar">
								<a href="${path}/lectureboard/list?viewoption=qna&search_option=all">
									<i class="fa fa-plus"></i>
								</a>
							</div>
						</div>
						<div class="card-body">
							<div class="col-sm-12 table_wrapper">
			            		<table class="table table-bordered home-table" id="noticeDataTable" width="100%" cellspacing="0">
				                  <tbody>
				                  <c:forEach items="${qna}" var="qna">
				                    <tr>
				                      <td>
				                      	<input type="hidden" name="bno" value="${qna.bno}">
				                      	<a href="${path}/lectureboard/read?bno=${qna.bno}">${qna.title}</a>
				                      </td>
				                    </tr>
				                   </c:forEach>
				                  </tbody>
			                	</table>
			              	</div>
	              		</div>
	              	</div>
	              	</c:if>
					<!-- 묻고답하기 출력 끝   -->
					<c:if test="${sessionScope.type == '2'}">
					<!-- 학습현황 출력 시작  -->
					<div class="card shadow order-2" id="study-info">
						<div class="card-header">
							<h6 class="card-text-primary">학습현황</h6>
						</div>
						<div class="card-body">
							<h3 class="study-info-item-title">
								출결현황
								<span>${ck}%</span>	
							</h3>
							<div class="progress">
								<div class="progress-bar" id="bg-red" style="width: 20%"></div>
							</div>
							<h3 class="study-info-item-title">
								과제제출
								<span>50%</span>	
							</h3>
							<div class="progress">
								<div class="progress-bar" id="bg-yellow" style="width: 50%"></div>
							</div>
							<h3 class="study-info-item-title">
								시험응시
								<span>0%</span>	
							</h3>
							<div class="progress">
								<div class="progress-bar" id="bg-green" style="width: 0%"></div>
							</div>
						</div>
					</div>
					<!-- 학습현황 끝 -->
					</c:if>
				</div>
				<c:if test="${sessionScope.type == '2'}">
				<!-- 학습방 현황 출력 시작  -->
				<div class="col-sm-12 table_wrapper">
            		<table class="table table-bordered home-table" id="lecture-data-table" width="77.5rem" cellspacing="0">
	                  <thead>
	                    <tr class="card-text-primary" style="width: 90%">
	                      <th style="width: 5%">No.</th>
	                      <th style="width: 15%">수업명</th>
	                      <th style="width: 20%">수업내용</th>
	                      <th style="width: 20%">수업목표</th>
	                      <th style="width: 15%">수업보기</th>
	                      <th style="width: 10%">수업시간</th>
	                      <th style="width: 5%">출석</th>
	                    </tr>
	                  </thead>
	                  <tbody style="background: white;">
	                  	<c:forEach items="${lecture}" var="lec">
	                    <tr>
	                      <td><span id="lecture-no">${lec.class_no}</span>강</td>
	                      <td>${lec.class_title}</td>
	                      <td class="text_truncate">${lec.class_content}</td>
	                      <td class="text_truncate">${lec.class_target}</td>
	                      <td>
	                      	<a href="${path}/lecturelesson/lessonview?lno=${lec.lno}&class_no=${lec.class_no}" class="lecture-view-btn">
								<i class="fas fa-headphones"></i>
								<span id="lecture-view-span">수업보기</span>
							</a>
	                      </td>
	                      <td><span id="study-time">${lec.class_time}분</span></td>
	                      <td>
	                      <c:if test="${lec.admit_ck == '1'}">
	                      	<i class="far fa-circle" id="check_ok"></i>
	                      </c:if>
	                      <c:if test="${lec.admit_ck == '0'}">
	                      	<i class="fas fa-times" id="check_no"></i>
	                      </c:if>	
	                      </td>
	                    </tr>
	                    </c:forEach>
	                  </tbody>
                	</table>
              	</div>
				<!-- 학습방 현황 출력 끝   -->
				</c:if>
			
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
