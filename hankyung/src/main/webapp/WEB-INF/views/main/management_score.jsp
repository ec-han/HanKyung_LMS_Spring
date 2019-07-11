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
.content_area{
	background-color: #F8F9FC;
}
.container_box{
	/* border:1px solid black; */
	height: 500px;
}
.container_header{
	margin: 0 auto;
	width: 80%;
/* 	height: 85px; */
	border: 2px solid lightgray;
	border-bottom:0px;
	padding: 16px 20px;
	font-size: 20px;
}
.student{
	display:inline-block;
	width: 100px;
	border-right:1px dashed gray;
	text-align: center;
}
.search_box{
	display: none;
	font-size: 15px;
	height: 30px;
	line-height: 30px;
}
.search_menu{
	display:inline-block;
	text-align:center;
	margin: 0 10px;
}
.list_box{
	margin: 0 auto;
	width: 80%;
	border: 2px solid lightgray;
	border-bottom: 0px;
}
.list_box_header{
	display: flex;
	background-color: white;
	position: relative;
}
.list_box_title{
	background-color: #efefef;
}
.list_box_header > div{
	text-align: center;
	height: 40px;
	line-height: 40px;
	color: gray;
	font-size: 15px;
	font-weight: 600;
}
.list_box_header > div > input{
	text-align: center;
}
.info_line{
	border-left: 2px solid lightgray;
	border-bottom: 2px solid lightgray;
	
}
.flex_line2{
	flex:2;
}
.flex_line3{
	flex:3;
}
.num{
	flex: 1;
	border-bottom: 2px solid lightgray;
}
.info_box{
	border: none;
	outline: none;
	padding: 10px;
	width: 100%;
	height: 100%;
	background-color: white;
	text-align: center;
}
.btn_box{
	position: absolute;
	border:2px solid #404988;
	background-color: #404988;
	border-radius:5px;
	color: white;
	width: 50px;
	height: 38px;
}

.update_btn{
	right: -55px;
}
.delete_btn{
	right: -110px;
}
.update_btn_box{
	position: absolute;
	display:none;
	border:2px solid #404988;
	background-color: #404988;
	border-radius:5px;
	color: white;
	width: 50px;
	height: 38px;
	top: 0px;
}
.dropn_btn{
	right: -55px;
}
.dropy_btn{
	right: -110px;
}
.modal_back{
	position: absolute;
	display: none;
	top: 0;
	left: 0;
	width:100vw;
	height:100vh;
	background-color: rgba(0,0,0,0.3);
	z-index: 10;
}
.modal_text{
	position:relative;
	padding: 50px;
	margin: 200px auto 0;
	width: 400px;
	height: 200px;
	background-color: white;
	text-align: center;
	font-size: 15px;
}
.modal_btn_box{
	position: absolute;
	bottom: 50;
	width: 300px;
	height: 50px;
	display: flex;
	line-height: 50px;
	justify-content: space-between;
}
.modal_btn{
	width:140px;
	border: 1px solid #404988;
	border-radius: 5px;
	background-color: #404988;
	color: white;
}

.lecture_title{
	margin: 0 auto;
	width: 80%;
	border: 2px solid lightgray;
	border-bottom: 0px;
	height: 50px;
	text-align: center;
	font-size: 25px;
}
</style>
</head>
<body>
	<div class="lecture_title">**** 과목</div>
	<div class="list_box">
		<div class="list_box_header list_box_title">
			<div class="num">No.</div>
			<div class="info_line flex_line2">이름</div>
			<div class="info_line flex_line2">아이디</div>
			<div class="info_line flex_line3">과목1</div>
			<div class="info_line flex_line3">과목2</div>
			<div class="info_line flex_line3">과목3</div>
			<div class="info_line flex_line3">과목4</div>
			<div class="info_line flex_line3">과목5</div>
		</div>	
		<c:forEach items="${list}" var="sDto" varStatus="status">
			<div class="list_box_header">
				<div class="num">
					<input id="input_num" name="num" class="info_box" value="${status.index+1}" readonly="readonly">
				</div>
				<div class="name info_line flex_line2">
					<input id="input_name" name="name" class="info_box" value="${sDto.name}" readonly="readonly">
				</div>
				<div class="id info_line flex_line2">
					<input id="input_id" name="id" class="info_box" value="${sDto.id}" readonly="readonly">
				</div>
				<div class="info_line flex_line3">
					<input id="input_sub1" name="sub1"class="info_box sub" maxlength="3" value="${sDto.sub_score1}" readonly="readonly" numberOnly>
				</div>
				<div class="info_line flex_line3">
					<input id="input_sub2" name="sub2" class="info_box sub" maxlength="3" value="${sDto.sub_score2}" readonly="readonly" numberOnly>
				</div>
				<div class="info_line flex_line3">
					<input id="input_sub3" name="sub3" class="info_box sub" maxlength="3" value="${sDto.sub_score3}" readonly="readonly" numberOnly>
				</div>
				<div class="info_line flex_line3">
					<input id="input_sub4" name="sub4" class="info_box sub" maxlength="3" value="${sDto.sub_score4}" readonly="readonly" numberOnly>
				</div>
				<div class="info_line flex_line3">
					<input id="input_sub5" name="sub5" class="info_box sub" maxlength="3" value="${sDto.sub_score5}" readonly="readonly" numberOnly>
				</div>
			</div>
		</c:forEach>
	</div>		
	<script type="text/javascript">
		 $(function(){
			
			 /*	$('.update_btn').click(function(event) {
				var flag = $(this).parent().children("input").val();
				alert(flag);
				if(flag > 0){
					$(".sub").removeAttr("readonly");
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
			}); */
			
			$("input:text[numberOnly]").on("keyup", function() {
			    $(this).val($(this).val().replace(/[^0-9]/g,""));
			    if($(this).val() > 100){
			    	$(this).val(100);
			    }
			});
			
		});
		
	</script>
</body>
</html>
