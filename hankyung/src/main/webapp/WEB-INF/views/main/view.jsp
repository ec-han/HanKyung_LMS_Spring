<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/main_common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/board_common.css?v=1">
<title>게시글 상세페이지</title>
<style type="text/css">
#regi_table_wrap > table > thead > tr, #regi_table_wrap > table > tfoot > tr {
	background: #f4f7ff; /* #eaecf4 */
}
#regi_table_wrap > table > thead > tr:nth-child(2) {
	background: #f8f9fc;
}
#regi_table_wrap > table > tbody > tr {
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
#regi_table_wrap .table td, #regi_table_wrap .table th {
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
.regi-info {
	display: flex;
    flex-direction: row;
}
.info_date {
	order: 1;
    flex: 3;
}
.info_writer {
	order: 2;
    flex: 3;
}
.info_viewcnt {
	order: 3;
    flex: 3;
}
/* 삭제 확인 모달창 */
#bd_modal_all {
	border: 3px solid black;
	position: fixed;
	z-index: 1001;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: auto; /* 넘어가면 스크롤 만들어줌  */
	background-color: rgba(0,0,0,0.15);
	align-items: center;
	justify-content: center;
	display: none;
}
#bd_modal {
	border-radius: 0.5rem;
    background-color: #f4f7ff;
    color: white;
    width: 30rem;
    height: 18rem;
    margin: 240px auto;
    box-shadow: 0 3px 10px 0 rgba(0,0,0,0.01), 0 3px 15px 0 rgba(0,0,0,0.05);
}
.bd_modal_txt {
	border: none;
    color: #555;
    outline: none;
    font-weight: bold;
    font-size: 1.45rem;
    line-height: 1.45rem;
    height: 1.45rem;
    text-align: center;
    letter-spacing: -1;
}

.bd_wrap{
	width: 30rem;
    height: 15rem;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
}
#bd_h_wrap {
    float: left;
    position: absolute;
    top: 0;
    left: 0;
    display: inline-block;
    width: 30rem;
    height: 4rem;
    background-color: #79CDCF;
}
#bd_h_wrap > h3 {
    font-weight: bold;
    font-size: 1.2rem;
    color: white;
    text-align: left;
    padding-left: 1rem;
}

.bd_btn_wrap {
	position: absolute;
	bottom: 0;
	display: flex;
	padding-left: 10px;
	cursor: pointer;
}
.bd_modal_btn{
	width: 105px;
	margin: 0 5px;
	font-size: 20px;
	font-weight: 600;
	line-height: 30px;
	height: 50px;
	padding-top: 1px;
	text-align: center;
	color: #fff;
	justify-content: center;
	align-items: center;
	text-decoration: none;
	flex-direction: row;
}
#bd_btn_no{
	order: 1;
	padding: 10px;
	background-color: #FFC000;
    border-radius: 0.4rem;
}
#bd_btn_no:hover, #bd_btn_yes:hover {
	color: white;
	text-decoration: none;
}
#bd_btn_yes {
	order: 2;
	padding: 10px;
	background-color: #79CDCF;
	border-radius: 0.4rem;
}

#bd_close_modal {
	position: absolute;
	top: 0;
	left: 100%;
	background-color: #FFC000;
	color: white;
	font-weight: bold;
	width: 2rem;
    height: 2rem;
    border: none;
    cursor: pointer;
    box-shadow: 0 3px 10px 0 rgba(0,0,0,0.01), 0 3px 15px 0 rgba(0,0,0,0.05);
}

</style>
</head>
<body>
	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
			<!-- 본문 내용에 따라 바뀔 곳 시작 : body라 생각하면 됨  -->
				<div id="regi_content">
					<div>
						<div class="page_body">
							<div class="bd_hd">
								<div class="box-body">
									<div class="row order-2 table_wrapper">
			              				<div class="col-sm-12 table_wrapper" id="regi_table_wrap">
											<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							                  <thead>
							                  	<tr>
													<th>
														<div class="regi-tb-center">
															<span id="view_regi_num">No.${one.tnum}</span>
															<span id="view_regi_title"><strong>${one.title}</strong></span>
														</div>
													</th>
												</tr>
												<tr>
													<td>
														<div class="regi-info">
															<span class="info_date">
																<strong>작성일 : </strong>
																<fmt:formatDate pattern="yyyy.MM.dd" value="${one.regdate}"/>
															</span>
															<span class="info_writer"><strong>작성자 : </strong>${one.writer}</span>
															<span class="info_viewcnt"><strong>조회수 : </strong>${one.viewcnt}</span>
														</div>
													</td>
												</tr>
							                  </thead>
							                  <tbody>
							                  	<tr>
													<td>
														<div class="data-bd-cont">
															<br>${one.content}<br>
														</div>
													</td>
												</tr>
							                  </tbody>
							                  <tfoot>
											  </tfoot>
			                				</table>
										</div>
									</div>
									<div class="btn_area">
										<c:if test="${sessionScope.name == one.writer}">
										<div class="btn_right board_regi_btn">
											<i class="fas fa-eraser" id="btn_del"></i>
											<a href="${path}/board/update?bno=${one.bno}&btype=${one.btype}">
												<i class="fas fa-edit" id="btn_modi_view"></i>
											</a>
										</div>
										</c:if>
										<div class="btn_left board_regi_btn">
											<a href="${path}/board/list?btype=${one.btype}">
												<i class="far fa-list-alt" id="btn_list"></i>
											</a>
											<c:if test="${!empty sessionScope.id}">
											<a>
												<i class="fas fa-reply" id="btn_rpl"></i>
											</a>
											</c:if>
											
										</div>
									</div>
									<!-- 모달 창  -->
									<div id="bd_modal_all">
										<div id="bd_modal">
											<div class="bd_wrap">
												<div id="bd_h_wrap">
													<h3>글 삭제</h3>
												</div>
												<p><span class="bd_modal_txt">정말 <span class="bd_focus_text">삭제</span>하시겠습니까?</span></p>
												<div class="bd_btn_wrap">
													<a class="bd_modal_btn" id="bd_btn_no">아니오</a>
													<a class="bd_modal_btn" id="bd_btn_yes">예</a>
												</div>
												<button id="bd_close_modal">X</button>
											</div>
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
	$(function(){
		/* 글 삭제 모달 창 */
		$('#btn_del').click(function(){
			$('#bd_modal_all').css('display','block');
		});
		$('#bd_close_modal').click(function(){
			$('#bd_modal_all').css('display','none');
		});
		$('#bd_btn_no').click(function(){
			$('#bd_modal_all').css('display','none');
		});
		$('#bd_btn_yes').click(function(){// 삭제 확인 모달창에서 "예"버튼 눌렀을 때 
			location.href = "${path}/board/delete?tnum=${one.tnum}&btype=${one.btype}";
		});
		/* $('#btn_modi_view').click(function(){
			location.href - "${path}/board/update?bno=${one.bno}&btype=${one.btype}";
		}); */
	});
	
	</script>
	
</body>
</html>