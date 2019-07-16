<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/main_common.css?v=1">
<meta charset="UTF-8">
<title>학생관리</title>
<style type="text/css">
.cnsln_conteiner{
	margin: 0 auto;
	padding: 30px 0;
	display:flex;
	width: 80%;
}
.cnsln_content_box{
	border: 1px solid gray;
	width: 30%;
	height: 500px;
	background: #fbbd03;
}
.content_header{
	height: 7%;
	padding: 10px
}
.content_body{
	height: 81%;
	padding: 10px;
}
.content_footer{
	position: relative;
	height: 15%;
	padding-top: 8px;
}
.updater{
	display: inline-block;
	margin: 0 10px 0 20px;
}
.content_box{
	margin-top: 10px;
	border: 2px solid lightgray;
	border-radius: 5px;
	height: 360px;
	overflow-x:auto;
}

#view_cnsln{
	display: inline-block;
}
#hidden_cnsln{
	display: none;
}
.flex_space{
	width: 65px;
}
.cnsln_btn{
	position: absolute;
    border:2px solid #404988;
    background-color: #404988;
    border-radius:5px;
    color: white;
    width: 50px;
    height: 38px;
    right: 20px;
    bottom: 25px;
}
.cnsln_update_btn{

}
.cnsln_ok_btn{
	display: none;
}
.cnsln_content{
	border:none;
	outline: none;
	height: 100%;
	width: 100%;
	resize: none;
}
</style>
</head>
<body>
	<div class="list_box">
		<div class="list_box_header list_box_title">
			<div class="num">No.</div>
			<div class="name info_line flex_line2">이름</div>
			<div class="id info_line flex_line2">아이디</div>
			<div class="info_line flex_line3">1회차</div>
			<div class="info_line flex_line3">2회차</div>
			<div class="info_line flex_line3">3회차</div>
			<div class="info_line flex_line3">4회차</div>
			<div class="info_line flex_line3">5회차</div>
			<div class="info_line flex_line3">6회차</div>
		</div>		
		<div class="list_box_header">
			<div class="num">
				<input id="detail_num" name="num" class="info_box" value="" readonly="readonly">
			</div>
			<div class="name info_line flex_line2">
				<input id="detail_name" name="name" class="info_box" value="${cDto.name}" readonly="readonly">
			</div>
			<div class="id info_line flex_line2">
				<input id="detail_id" name="id" class="info_box" value="${cDto.id}" readonly="readonly">
			</div>
			<div class="info_line flex_line3 cnsln_box" id="<c:out value="${empty cDto.cnsln1 ? 'no_cnsln':'yes_cnsln'}"/>">
				<c:choose>
					<c:when test="${empty cDto.cnsln1}">
						미상담
					</c:when>
					<c:otherwise>
						상담
					</c:otherwise>
				</c:choose>
			</div>
			<div class="info_line flex_line3 cnsln_box" id="<c:out value="${empty cDto.cnsln2 ? 'no_cnsln':'yes_cnsln'}"/>">
				<c:choose>
					<c:when test="${empty cDto.cnsln2}">
						미상담
					</c:when>
					<c:otherwise>
						상담
					</c:otherwise>
				</c:choose>
			</div>
			<div class="info_line flex_line3 cnsln_box" id="<c:out value="${empty cDto.cnsln3 ? 'no_cnsln':'yes_cnsln'}"/>">
				<c:choose>
					<c:when test="${empty cDto.cnsln3}">
						미상담
					</c:when>
					<c:otherwise>
						상담
					</c:otherwise>
				</c:choose>
			</div>
			<div class="info_line flex_line3 cnsln_box" id="<c:out value="${empty cDto.cnsln4 ? 'no_cnsln':'yes_cnsln'}"/>">
				<c:choose>
					<c:when test="${empty cDto.cnsln4}">
						미상담
					</c:when>
					<c:otherwise>
						상담
					</c:otherwise>
				</c:choose>
			</div>
			<div class="info_line flex_line3 cnsln_box" id="<c:out value="${empty cDto.cnsln5 ? 'no_cnsln':'yes_cnsln'}"/>">
				<c:choose>
					<c:when test="${empty cDto.cnsln5}">
						미상담
					</c:when>
					<c:otherwise>
						상담
					</c:otherwise>
				</c:choose>
			</div>
			<div class="info_line flex_line3 cnsln_box"  id="<c:out value="${empty cDto.cnsln6 ? 'no_cnsln':'yes_cnsln'}"/>">
				<c:choose>
					<c:when test="${empty cDto.cnsln6}">
						미상담
					</c:when>
					<c:otherwise>
						상담
					</c:otherwise>
				</c:choose>
			</div>
		
		</div>
	</div>	
	<form action="${path}/member/cnsln_update" method="POST" id="frm_cnsln" name="frm_cnsln">
		<input type="hidden" id="writer" name="writer" value="${sessionScope.name}">
		<input type="hidden" id="id" name="id" value="${cDto.id}">
		<input type="hidden" id="content" name="content">
		<input type="hidden" id="cnsln_num" name="num">
	</form>
	<div class="cnsln_conteiner">
		<div class="cnsln_content_box">
			<div class="content_header">1회차</div>
			<div class="content_body">
				<div>상담내용</div>
				<div class="content_box">
					<textarea name="content" class="cnsln_content" readonly="readonly">${cDto.cnsln1}</textarea>
				</div>
			</div>
			<div class="content_footer">
				<div>
					<span class="updater">최종수정</span> ${cDto.cnsln1_writer}
				</div>
				<div>
					<span class="updater">수정날짜</span> <fmt:formatDate pattern="yy/MM/dd HH:mm" value="${cDto.cnsln1_date}" />
				</div>
				
				<button class="cnsln_update_btn cnsln_btn">수정 </button>
                <button class="cnsln_ok_btn cnsln_btn">확인 <input type="hidden" value="1"></button>
			</div>
		</div>
		
		<div class="flex_space"></div>
		
		<div class="cnsln_content_box" id="<c:out value="${empty cDto.cnsln1 && empty cDto.cnsln3 ? 'hidden_cnsln':'view_cnsln'}"/>">
			<div class="content_header">2회차</div>
			<div class="content_body">
				<div>상담내용</div>
				<div class="content_box">
					<textarea name="content" class="cnsln_content" readonly="readonly">${cDto.cnsln2}</textarea>
				</div>
			</div>
			<div class="content_footer">
				<div>
					<span class="updater">최종수정</span> ${cDto.cnsln2_writer}
				</div>
				<div>
					<span class="updater">수정날짜</span> <fmt:formatDate pattern="yy/MM/dd HH:mm" value="${cDto.cnsln2_date}" />
				</div>
				
				<button class="cnsln_update_btn cnsln_btn">수정</button>
                <button class="cnsln_ok_btn cnsln_btn">확인  <input type="hidden" value="2"></button>
			</div>
		</div>
		
		<div class="flex_space"></div>
		
		<div class="cnsln_content_box" id="<c:out value="${empty cDto.cnsln2 && empty cDto.cnsln4 ? 'hidden_cnsln':'view_cnsln'}"/>">
			<div class="content_header">3회차</div>
			<div class="content_body">
				<div>상담내용</div>
				<div class="content_box">
					<textarea name="content" class="cnsln_content" readonly="readonly">${cDto.cnsln3}</textarea>
				</div>
			</div>
			<div class="content_footer">
				<div>
					<span class="updater">최종수정</span> ${cDto.cnsln3_writer}
				</div>
				<div>
					<span class="updater">수정날짜</span> <fmt:formatDate pattern="yy/MM/dd HH:mm" value="${cDto.cnsln3_date}" />
				</div>
				
				<button class="cnsln_update_btn cnsln_btn">수정</button>
                <button class="cnsln_ok_btn cnsln_btn">확인 <input type="hidden" value="3"></button>
			</div>
		</div>
	</div>
	<div class="cnsln_conteiner">
		<div class="cnsln_content_box" id="<c:out value="${empty cDto.cnsln3 && empty cDto.cnsln5 ? 'hidden_cnsln':'view_cnsln'}"/>">
			<div class="content_header">4회차</div>
			<div class="content_body">
				<div>상담내용</div>
				<div class="content_box">
					<textarea name="content" class="cnsln_content" readonly="readonly">${cDto.cnsln4}</textarea>
				</div>
			</div>
			<div class="content_footer">
				<div>
					<span class="updater">최종수정</span> ${cDto.cnsln4_writer}
				</div>
				<div>
					<span class="updater">수정날짜</span> <fmt:formatDate pattern="yy/MM/dd HH:mm" value="${cDto.cnsln4_date}" />
				</div>
				
				<button class="cnsln_update_btn cnsln_btn">수정</button>
                <button class="cnsln_ok_btn cnsln_btn">확인 <input type="hidden" value="4"></button>
			</div>
		</div>
		
		<div class="flex_space"></div>
		
		<div class="cnsln_content_box" id="<c:out value="${empty cDto.cnsln4 && empty cDto.cnsln6 ? 'hidden_cnsln':'view_cnsln'}"/>">
			<div class="content_header">5회차</div>
			<div class="content_body">
				<div>상담내용</div>
				<div class="content_box">
					<textarea name="content" class="cnsln_content" readonly="readonly">${cDto.cnsln5}</textarea>
				</div>
			</div>
			<div class="content_footer">
				<div>
					<span class="updater">최종수정</span> ${cDto.cnsln5_writer}
				</div>
				<div>
					<span class="updater">수정날짜</span> <fmt:formatDate pattern="yy/MM/dd HH:mm" value="${cDto.cnsln5_date}" />
				</div>
				
				<button class="cnsln_update_btn cnsln_btn">수정</button>
                <button class="cnsln_ok_btn cnsln_btn">확인 <input type="hidden" value="5"></button>
			</div>
		</div>
		
		<div class="flex_space"></div>
		
		<div class="cnsln_content_box" id="<c:out value="${empty cDto.cnsln5 ? 'hidden_cnsln':'view_cnsln'}"/>">
			<div class="content_header">6회차</div>
			<div class="content_body">
				<div>상담내용</div>
				<div class="content_box">
					<textarea name="content" class="cnsln_content" readonly="readonly">${cDto.cnsln6}</textarea>
				</div>
			</div>
			<div class="content_footer">
				<div>
					<span class="updater">최종수정</span> ${cDto.cnsln6_writer}
				</div>
				<div>
					<span class="updater">수정날짜</span> <fmt:formatDate pattern="yy/MM/dd HH:mm" value="${cDto.cnsln6_date}" />
				</div>
				
				<button class="cnsln_update_btn cnsln_btn">수정</button>
                <button class="cnsln_ok_btn cnsln_btn">확인 <input type="hidden" value="6"></button>
			</div>
		</div>
	</div>
		
			
	<script type="text/javascript">
		$(function(){	
			$('#detail_num').val(num);
			$(".cnsln_update_btn").click(function(){
				$(this).css(".display", "none");
				$(this).parent().children(".cnsln_ok_btn").css("display", "block");
				$(this).parent().parent().children(".content_body").children(".content_box").children().removeAttr("readonly");
				
				
			});
			$(".cnsln_ok_btn").click(function(){
				$(this).css("display", "none");
				$(this).parent().children(".cnsln_update_btn").css("display", "block");
				$(this).parent().parent().children(".content_body").children(".content_box").children().attr("readonly", "readonly");
				
				var cnsln_num = $(this).children("input").val();
				var content = $(this).parent().parent().children(".content_body").children(".content_box").children().val();
				var name = $("#writer").val();
				$("#content").val(content);
				$("#cnsln_num").val(cnsln_num);
				
				$("#frm_cnsln").submit();
			});
			
			
		});
		
	</script>
</body>
</html>
