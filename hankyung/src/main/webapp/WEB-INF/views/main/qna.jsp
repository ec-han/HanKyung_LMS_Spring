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
<title>공지사항</title>
<style type="text/css">

</style>
</head>
<body>

	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
				<!-- DataTales Example -->
		        <div class="card shadow">
		            <div class="card-header">
		              <h6 class="text-primary">묻고 답하기</h6>
		            </div>
		            <div class="card-body">
						<div class="table-responsive">
			              	<div id="dataTable_wrapper" class="dataTables_wrapper">
			              		<div class="row order-1" id="length_filter">
			              			<c:if test="${!empty sessionScope.id}">
				              		<div class="col-sm-12 col-md-6 order-1 margin-right board_regi_btn">
				              			<i class="fas fa-pen-square"></i>
				              			<!-- <div class="dataTables_length" id="dataTable_length">
				              					<label>
				              							보기
				              							<select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
				              								<option value="10">10</option>
				              								<option value="10">25</option>
				              								<option value="10">50</option>
				              							</select>
				              					</label>
				              			</div> -->
				              		</div>
				              		</c:if>
				              		<div class="col-sm-12 col-md-6 order-2 margin-left">
				              			<div id="dataTable_filter" class="dataTables_filter">
				              				<label>
				              					검색:
				              					<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable">
				              				</label>
				              			</div>
				              		</div>
				              	</div>
				              	<div class="row order-2 table_wrapper">
				              		<div class="col-sm-12 table_wrapper">
				              			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						                  <thead>
						                    <tr style="width: 10px">
						                      <th style="width: 50px">No.</th>
						                      <th style="width: 300px">제목</th>
						                      <th style="width: 100px">작성자</th>
						                      <th style="width: 130px">작성일</th>
						                      <th style="width: 85px">조회수</th>
						                      <th style="width: 70px">첨부</th>
						                    </tr>
						                  </thead>
						                  <tbody>
						                  <c:forEach items="${boardList}" var="board">
						                 	<jsp:useBean id="now" class="java.util.Date"/>
											<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today"/>
											<fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd" var="regdate"/>
						                    <tr>
						                      <td>${board.tnum}</td>
						                      <td><a href="${path}/board/read?bno=${board.bno}&btype=${board.btype}">${board.title}</a></td>
						                      <td>${board.writer}</td>
						                      <td>
						                      	<c:choose>
													<c:when test="${today == regdate}">
														<fmt:formatDate pattern="hh:mm:ss" value="${board.regdate}" />
													</c:when>
													<c:otherwise>
														<fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}" />		
													</c:otherwise>
												</c:choose>		
											  </td>
						                      <td>${board.viewcnt}</td>
						                      <td></td>
						                    </tr>
						                   </c:forEach>
						                  </tbody>
				                		</table>
				              		</div>
				              	</div>
				              	<div class="row order-3">
				              		<div class="col-sm-12 col-md-5 flex_r">
				              			<div class="dataTables_info order-1" id="dataTable_info" role="status" aria-live="polite">
				              				57건 중 21건부터 30건까지 
				              			</div>
				              			<div class="col-sm-12 col-md-7 order-2" id="pagenation_wrapper">
				              				<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
				              					<ul class="pagination">
				              						<li class="paginate_button page-item previous" id="dataTable_previous">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">
				              								이전 페이지
				              							</a>
				              						</li>
				              						<li class="paginate_button page-item">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">
				              								1
				              							</a>
				              						</li>
				              						<li class="paginate_button page-item">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">
				              								2
				              							</a>
				              						</li>
				              						<li class="paginate_button page-item">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">
				              								3
				              							</a>
				              						</li>
				              						<li class="paginate_button page-item">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">
				              								4
				              							</a>
				              						</li>
				              						<li class="paginate_button page-item">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">
				              								5
				              							</a>
				              						</li>
				              						
				              						<li class="paginate_button page-item next" id="dataTable_next">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">
				              								다음 페이지
				              							</a>
				              						</li>
				              					</ul>
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

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$('.board_regi_btn').click(function(){
				var btype = 1;
				location.href="${path}/board/create?btype="+btype;
			});
		});
	</script>
</body>
</html>
