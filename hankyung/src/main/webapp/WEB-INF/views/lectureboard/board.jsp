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
<title>강의게시판</title>
<style type="text/css">
#search_result {
	width: 10rem;
}
#viewoption {
    display: inline-block;
    width: auto;
    letter-spacing: -1;
    height: calc(1.5em + .75rem + 2px);
    padding: .175rem .55rem;
    font-weight: 400;
    line-height: 1.5;
    color: #6e707e;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #d1d3e2;
    border-radius: .35rem;
    outline-offset: -2px;
}
#board_header {
    margin-bottom: 0;
    background-color: #f8f9fc;
    border-bottom: 1px solid #e3e6f0;
    height: 4rem;
    order: 1;
    display: flex;
    flex-direction: row;
}
#order_board {
	order: 1;
    flex: 8;
}
#order_board > span {
	font-size: 1rem;
    border-right: 2px dotted #d1d3e2;
    padding: 0 1rem;
}
#sort_board {
    order: 2;
    padding-top: 0.5rem;
}
#activeIdx {
	font-weight: bold;
	text-decoration: underline;
}
#noticeno {
	background: #FFC000;
    color: white;
    font-weight: bold;
}
#question-no {
    color: #79CDCF;
    font-weight: bold;
}
#answer-no {
    color: #FFC000;
    font-weight: bold;
}
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
		            <div class="card-header" id="board_header">
		            	<div id="order_board">
		            		<c:if test="${sessionScope.type != '2'&&!empty sessionScope.id}">
							<span>
								<a href="${path}/lectureboard/list?viewoption=all&search_option=${map.search_option}" id="viewAll">전체보기</a>
							</span>
							</c:if>
							<span>
								<a href="${path}/lectureboard/list?viewoption=notice&search_option=${map.search_option}" id="viewNotice">공지</a>
							</span>
							<span>
								<a href="${path}/lectureboard/list?viewoption=qna&search_option=${map.search_option}" id="viewQna">묻고답하기</a>
							</span>
							<span>
								<a href="${path}/lectureboard/list?viewoption=normal&search_option=${map.search_option}" id="viewNormal">일반게시글</a>
							</span>
						</div>
						<c:choose>
							<c:when test="${map.viewoption == 'notice'||map.viewoption == 'normal'}">
								<div id="sort_board">
									<input type="hidden" value="new" name="code" id="code">
									<span>
										<a href="${path}/lectureboard/list?sort_option=new&search_option=${map.search_option}&keyword=${map.keyword}&viewoption=${map.viewoption}" id="orderNew">최신순</a>
									</span>
									<span>
										<a href="${path}/lectureboard/list?sort_option=reply&search_option=${map.search_option}&keyword=${map.keyword}&viewoption=${map.viewoption}" id="orderReply">댓글순</a>
									</span>
									<span>
										<a href="${path}/lectureboard/list?sort_option=view&search_option=${map.search_option}&keyword=${map.keyword}&viewoption=${map.viewoption}" id="orderCnt">조회순</a>
									</span>
								</div>
							</c:when>
						</c:choose>
		            </div>
		            <div class="card-body">
						<div class="table-responsive">
			              	<div id="dataTable_wrapper" class="dataTables_wrapper">
			              		<div class="row order-1" id="length_filter">
			              			<c:choose>
			              				<c:when test="${(map.viewoption == 'notice'&&sessionScope.type == '2')||empty sessionScope.id}">
			              				</c:when>
			              				<c:otherwise>
			              				<div class="col-sm-12 col-md-6 order-1 margin-right board_regi_btn">
					              			<i class="fas fa-pen-square"></i>
					              		</div>
			              				</c:otherwise>
			              			</c:choose>
				              		<div class="col-sm-12 col-md-6 order-3 margin-left">
				              			<div id="dataTable_filter" class="dataTables_filter">
				              				<label>
				              					<select id="selsearch" name="selsearch">
													<option value="all" selected="selected">전체검색</option>
													<option value="title">제목</option>
													<option value="content">내용</option>
													<option value="writer">작성자</option>
												</select>
				              					<input type="search" class="form-control form-control-sm" id="search_board" name="search_board">
				              					<button type="button" id="searchbtnArea"><i class="fas fa-search" id="search_btn"></i></button>
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
						                  <c:forEach items="${map.list}" var="bDto">
						                 	<jsp:useBean id="now" class="java.util.Date"/>
											<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today"/>
											<fmt:formatDate value="${bDto.regdate}" pattern="yyyy-MM-dd" var="regdate"/>
						                    <tr>
						                      <td>
						                      	<c:choose>
						                      		<c:when test="${bDto.btype == '0'}">
						                      		<span id="noticeno">공지</span>
						                      		</c:when>
						                      		<c:when test="${bDto.btype == '1'}">
						                      		<c:if test="${bDto.re_level == 0}">
						                      		<span id="question-no">질문</span>
						                      		</c:if>
						                      		<c:if test="${bDto.re_level > 0}">
						                      		<span id="answer-no">답변</span>
						                      		</c:if>
						                      		</c:when>
						                      		<c:otherwise>
						                      		${bDto.lbnum}
						                      		</c:otherwise>
						                      	</c:choose>
						                      </td>
						                      <td>
						                      	<a href="${path}/lectureboard/read?bno=${bDto.bno}">${bDto.title}</a>
						                      	<c:if test="${bDto.replycnt >0}">
													<span class="replyCnt_Color">${bDto.replycnt}</span>
												</c:if>
												<c:if test="${today==regdate}">
													<span class="new_time">New</span>
												</c:if>
						                      </td>
						                      <td>${bDto.writer}</td>
						                      <td>
						                      	<c:choose>
													<c:when test="${today == regdate}">
														<fmt:formatDate pattern="hh:mm:ss" value="${bDto.regdate}" />
													</c:when>
													<c:otherwise>
														<fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.regdate}" />		
													</c:otherwise>
												</c:choose>		
											  </td>
						                      <td>${bDto.viewcnt}</td>
						                      <td></td>
						                    </tr>
						                   </c:forEach>
						                  </tbody>
				                		</table>
				              		</div>
				              	</div>
				              	<div class="row order-3">
				              		<div class="col-sm-12 col-md-5 flex_r">
				              			<div class="dataTables_info order-1" id="dataTable_info">
				              				<c:if test="${!empty map.keyword}">
											<div class="order-2 margin-left" id="search_result">
												<span class="search_span">"${map.keyword}"</span> 검색 - 총
												<span class="search_span">${map.count}</span>건 
											</div>
											</c:if> 
				              			</div>
				              			<div class="col-sm-12 col-md-7 order-2" id="pagenation_wrapper">
				              				<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
				              					<ul class="pagination">
				              						<c:if test="${map.pager.curPage > 1}">
				              						<li class="paginate_button page-item previous" id="dataTable_previous">
				              							<a href="${path}/lectureboard/list?curPage=${map.pager.curPage-1}&viewoption=${map.viewoption}&search_option=${map.search_option}&keyword=${map.keyword}&sort_option=${map.sort_option}" class="page-link">
				              								이전 페이지
				              							</a>
				              						</li>
				              						</c:if>
				              						<!-- begin end로 몇번부터 몇번까지 반복하게 설정. startPage(1)부터 begin해서 endPage(10)에서 end. var="idx"는 for문의 i(index) 같은거
													c:out은 출력임. 삼항연산자 사용. pageMaker.criDto.page : 선택한 페이지 == idx랑 같으면 class="active"효과를 주는 거 -->
													<c:forEach begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}" var="idx">
														<li class="paginate_button page-item" <c:out value="${map.pager.curPage == idx ? 'id=activeIdx':''}"/>>
					              							<a href="${path}/lectureboard/list?curPage=${idx}&viewoption=${map.viewoption}&search_option=${map.search_option}&keyword=${map.keyword}&sort_option=${map.sort_option}" class="page-link">
					              								${idx}
					              							</a>
					              						</li>
													</c:forEach>
				              						<c:if test="${map.pager.curPage < map.pager.blockEnd}">
				              						<li class="paginate_button page-item next" id="dataTable_next">
				              							<a href="${path}/lectureboard/list?curPage=${map.pager.curPage+1}&viewoption=${map.viewoption}&search_option=${map.search_option}&keyword=${map.keyword}&sort_option=${map.sort_option}" class="page-link">
				              								다음 페이지
				              							</a>
				              						</li>
				              						</c:if>
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
			var sort_option = "${map.sort_option}";
			if(sort_option == "new"){
				$("#orderNew").css("color","rgb(36, 195, 182)").css("font-weight", "bold").css("text-decoration", "underline");
			} else if(sort_option == "reply"){
				$("#orderReply").css("color","rgb(36, 195, 182)").css("font-weight", "bold").css("text-decoration", "underline");
			} else if(sort_option == "view"){
				$("#orderCnt").css("color","rgb(36, 195, 182)").css("font-weight", "bold").css("text-decoration", "underline");
			}
			
			
			
			var viewoption = "${map.viewoption}";
			if(viewoption == "all"){
				$("#viewAll").css("color","rgb(36, 62, 195)").css("font-weight", "bold").css('font-size','1.15rem');
			} else if(viewoption == "notice"){
				$("#viewNotice").css("color","rgb(36, 62, 195)").css("font-weight", "bold").css('font-size','1.15rem');
			} else if(viewoption == "qna"){
				$("#viewQna").css("color","rgb(36, 62, 195)").css("font-weight", "bold").css('font-size','1.15rem');
			} else if(viewoption == "normal"){
				$("#viewNormal").css("color","rgb(36, 62, 195)").css("font-weight", "bold").css('font-size','1.15rem');
			}
			
			$('.board_regi_btn').click(function(){
				location.href="${path}/lectureboard/create?viewoption=${map.viewoption}";
			});
			
			$('#searchbtnArea').click(function(){
				var search_option = $('#selsearch').val();
				var keyword = $.trim($('#search_board').val());
				
				if(keyword == null || keyword.length == 0){
					$('#search_board').focus();
					$('#search_board').css('border','2px solid #79CDCF');
					 // 검색 시 페이지네이션이 밑으로 밀리는 현상 방지 
					$('#dataTable_paginate').css('bottom','1rem');
					return false;
				}
				alert(viewoption+","+search_option+","+keyword);
				location.href="${path}/lectureboard/list?viewoption="+viewoption+"&search_option="+search_option+"&keyword="+keyword;
			});
			
			
		});
		
			
			
		
	</script>
</body>
</html>
