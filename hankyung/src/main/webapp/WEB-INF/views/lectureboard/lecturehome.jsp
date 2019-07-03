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
</style>
</head>
<body>

	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
				<div class="flex-wrap">
					<!-- 공지사항 출력  -->
					<div class="card shadow order-1" id="notice-wrap">
						<div class="card-header">
							<h6 class="text-primary">공지사항</h6>
							<div class="widget-toolbar">
								<a href="${path}/lectureboard/list?viewoption=notice&search_option=all">
									<i class="fa fa-plus"></i>
								</a>
							</div>
						</div>
						<div class="card-body">
							<div class="col-sm-12 table_wrapper">
			            		<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
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
				<!-- Project Card  -->
					<div class="card shadow order-2" id="study-info">
						<div class="card-header">
							<h6 class="text-primary">학습현황</h6>
						</div>
						<div class="card-body">
							<h4 class="small">
								출결현황
								<span>20%</span>	
							</h4>
							<div class="progress">
								<div class="progress-bar" id="bg-red" style="width: 20%"></div>
							</div>
							<h4 class="small">
								수강현황
								<span>30%</span>	
							</h4>
							<div class="progress">
								<div class="progress-bar" id="bg-yellow" style="width: 30%"></div>
							</div>
							<h4 class="small">
								과제현황
								<span>50%</span>	
							</h4>
							<div class="progress">
								<div class="progress-bar" id="bg-green" style="width: 50%"></div>
							</div>
						</div>
					</div>
				<!-- Project Card 끝 -->
				</div>
			<!-- 학습방 현황 출력 시작  -->
				<div class="col-sm-12 table_wrapper">
            		<table class="table table-bordered" id="dataTable" width="77.5rem" cellspacing="0">
	                  <thead>
	                    <tr class="text-primary" style="width: 10px">
	                      <th style="width: 2rem">No.</th>
	                      <th style="width: 10rem">수업내용</th>
	                      <th style="width: 10rem">수업목표</th>
	                      <th style="width: 5rem">수업보기</th>
	                      <th style="width: 3rem">수업시간</th>
	                      <th style="width: 3rem">보조파일</th>
	                      <th style="width: 3rem">출석확인</th>
	                    </tr>
	                  </thead>
	                  <tbody style="background: white;">
	                    <tr>
	                      <td></td>
	                      <td></td>
	                      <td></td>
	                      <td></td>
	                      <td></td>
	                      <td></td>
	                      <td></td>
	                    </tr>
	                  </tbody>
                	</table>
              	</div>
			<!-- 학습방 현황 출력 끝   -->
			
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
