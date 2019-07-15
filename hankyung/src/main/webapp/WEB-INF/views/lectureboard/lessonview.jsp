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
<title>학습 상세</title>
<style type="text/css">
#lesson_table_wrap > table > thead > tr, #regi_table_wrap > table > tfoot > tr {
	background: #f4f7ff; /* #eaecf4 */
}
#lesson_table_wrap > table > thead > tr:nth-child(2) {
	background: #f8f9fc;
}
#lesson_table_wrap > table > tbody > tr:nth-child(1) {
	background: white;
}
.btn_right {
	float: right;
    margin-right: 1rem;
}
.regi-tb-center {
	font-size: 1rem;
    font-weight: 400;
    display: flex;
    align-items: center;
    line-height: 23px;
}
#btn_modi_view {
	color: #404988;
}
#lesson_table_wrap .table td, #lesson_table_wrap .table th {
	padding: 1.4rem;
    vertical-align: top;
    border-top: 1px solid #e3e6f0;
}
#view_regi_num{
	flex: 0.5;
    float: left;
    order: 1;
}
#view_regi_title {
    flex: 9.5;
    order: 2;
    text-align: center;
    justify-content: center;
}


#lecture_ck_btn {
    display: inline-block;
    padding: 0.1rem;
    font-size: 1.4rem;
    background: tomato;
    float: right;
    margin-right: 1rem;
    cursor: pointer;
}
#ck_msg {
	color: red;
	font-size: 1rem;
}

#lesson_table_wrap > table > tbody > tr:nth-child(2) {
    background: #e3e6f0;
}

</style>
</head>
<body>
	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
				<div id="regi_content">
					<div>
						<div class="page_body">
							<div class="bd_hd">
								<div class="box-body">
									<div class="row order-2 table_wrapper">
			              				<div class="col-sm-12 table_wrapper" id="lesson_table_wrap">
											<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							                  <thead>
							                  	<tr>
													<th>
														<div class="regi-tb-center">
															<span id="view_regi_num">${one.class_no}강</span>
															<span id="view_regi_title"><strong>${one.class_title}</strong></span>
														</div>
													</th>
												</tr>
												<tr>
													<td>
														<div class="regi-info">
															<span class="info_date"><strong>수업시간 : </strong>${one.class_time}분</span>
														</div>
													</td>
												</tr>
							                  </thead>
							                  <tbody>
							                  	<tr>
													<td>
														<div class="data-bd-cont">
															<br><span class="info_writer"><strong>수업내용: </strong>${one.class_content}</span><br>
															<span class="info_viewcnt"><strong>수업목표: </strong>${one.class_target}</span><br>
															<span><strong id="ck_msg">주의! </strong>수업종료 버튼을 클릭해야만 출석인정이 됩니다</span>
														</div>
													</td>
												</tr>
												<tr id="lesson_vd_area">
													<td>
														<iframe id="lesson_vd" width="560" height="315" src="https://www.youtube.com/embed/qR90tdW0Hbo?rel=0&enablejsapi=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
													</td>
												</tr>
							                  </tbody>
							                  <tfoot>
											  </tfoot>
			                				</table>
										</div>
									</div>
									<div class="btn_area">
										<div class="btn_right board_regi_btn">
											<a class="lecture-view-btn" id="lecture_ck_btn">
												<span id="lecture-view-span">수업종료</span>
											</a>
										</div>
										<div class="btn_left board_regi_btn">
											<a href="${path}/lecturelesson/classroom?lno=${one.lno}">
												<i class="far fa-list-alt" id="btn_list"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@ include file="../include/main_footer.jsp" %>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			var old = new Date().getTime();
			var ctimes = ${one.class_time};
			var admit = ctimes*0.9;
			console.info(old+"<<<현재시간, 강의시간: "+ctimes+"출석인정시간: "+admit);
			$("#lecture-view-span").click(function(){
				var now = new Date().getTime();
				var diff = (now-old)/1000/60;
				var check = 0;
				console.info(now+"<<종료버튼 누른 시간 , 수강시강: "+diff+"인정시간: "+admit);
				if(diff>=admit){
					alert("출석체크가 완료됐습니다.");
					check = 1;
					 $.ajax({
						url: "${path}/lecturelesson/lessonview?class_no=${one.class_no}&lno=${one.lno}&attend_ck="+check,
						type: "post",
						success: function() {
							console.log(check);
						}, error: function() {
							alert("system error!!!");
						}
					});	
				} else {
					alert("강의를 90%이상 시청해야 출석이 인정됩니다.");
				}
			});
		});
		
	</script>
</body>
</html>
