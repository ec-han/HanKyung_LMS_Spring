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
		
		<c:forEach items="${list}" var="mDto" varStatus="status">
				<div class="list_box_header">
					<div class="num">
						<input id="input_num" name="num" class="info_box" value="${status.index+1}" readonly="readonly" style = "text-align:center;">
					</div>
					<div class="name info_line flex_line2">
						<input id="input_name" name="name" class="info_box" value="${mDto.name}" readonly="readonly">
					</div>
					<div class="email info_line flex_line3">
						<input id="input_email" name="email"class="info_box" value="${mDto.email}" readonly="readonly">
					</div>
					<div class="phone info_line flex_line3">
						<input id="input_phone" name="phone" class="info_box" value="${mDto.phone}" readonly="readonly">
					</div>
					<div class="id info_line flex_line2">
						<input id="input_id" name="id" class="imput_id info_box" value="${mDto.id}" readonly="readonly">
					</div>
					<div class="pw info_line flex_line2">
						<input id="input_pw" name="pw" type="password" class="info_box" value="${mDto.pw}" readonly="readonly">
					</div>
					<input type="hidden" value="1">
					<button class="update_btn btn_box">수정</button>
					<button class="delete_btn btn_box">삭제</button>
					<button class="dropn_btn drop_btn_box">NO</button>
					<button class="dropy_btn drop_btn_box">YES</button>
				</div>
		</c:forEach>	
	</div>		
	<script type="text/javascript">
		$(function(){
			
			$('.update_btn').click(function(event) {
				var flag = $(this).parent().children("input").val();
				alert(flag);
				if(flag > 0){
					$(this).parent().children("div").children("input").removeAttr("readonly");
					$(this).parent().children("div").children("input").eq(4).attr("readonly", "readonly");
					$(this).parent().children("div").children("input").css("background-color", "#CEFBC9");
					$(this).text("확인");
					$(this).next().css("display", "none");
					$(this).parent().children("input").val(0);
					
				}else{
					var valName = $(this).parent().children("div").eq(1).children("input").val();
					var valMail = $(this).parent().children("div").eq(2).children("input").val();
					var valPhone = $(this).parent().children("div").eq(3).children("input").val();
					var valId = $(this).parent().children("div").eq(4).children("input").val();
					var valPw = $(this).parent().children("div").eq(5).children("input").val();
					
					$(this).parent().children("div").children("input").attr("readonly", "readonly");
					$(this).parent().children("div").children("input").css("background-color", "#eaeaea");
					$(this).text("수정");
					$(this).next().css("display", "block");
					$(this).parent().children("input").val(1);
					
					$.ajax({
						url:"${path}/member/admin_update?id="+valId+"&pw="+valPw+"&name="+valName+"&email="+valMail+"&phone="+valPhone,
						type: "POST",
						success: function(){

						},
						error:function(){
							alert("aaaa Error!!");
						}
					});
					
					

				}
			});
			
		});
		
	</script>
</body>
</html>
