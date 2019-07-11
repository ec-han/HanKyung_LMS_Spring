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
	position:relative;
	margin: 0 auto;
	width: 80%;
	height: 64px;
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
.drop_btn_box{
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
#management_list{

}
#management_score{
	display: none;
}

.insert_btn{
	right: 15;
	top: 14px; 
	font-size: 14px;
}
</style>
</head>
<body>
	<!-- <div class="modal_back">
		<div class="modal_text">
			"<span class="delete_mem"></span>" 회원을 삭제하시겠습니까?
			<div class="modal_btn_box">
				<div class="n_btn modal_btn">아니오</div>	
				<div class="y_btn modal_btn">네</div>	
			</div>

		</div>
	</div> -->

	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
				<div class="container_box">
					<div class="container_header">
						<span class="student info">개인정보</span>
						<span class="student score">성적</span>
						<span class="student cnsln">상담</span>
						<button class="insert_btn btn_box">추가</button>
					</div>
					<!-- 학생 아이디 정보 조회 -->
					<div id="management_list"></div> 
					<!-- 학생 수업 점수 조회 -->
					<div id="management_score"></div>
					<!-- 학생 상담일지 조회 -->
					<div id="management_cnsln"></div>
					
					
				</div>
			</div>
			<%@ include file="../include/main_footer.jsp" %>
		</div>
	</div>


	<script type="text/javascript">
		$(function(){
			management_list();
			
			$(".student").eq(0).css("color", "red");
			
			$(".student").click(function(){
				$(".student").css("color", "black").css("font-size", "20px");
				$(this).css("color", "red");
			});

			$(".score").click(function(){
				management_score();
				$("#management_list").css("display", "none");
				$("#management_cnsln").css("display", "none");
				$("#management_score").css("display", "block");
				$(".insert_btn").css("display", "none");
			});
			$(".info").click(function(){
				management_list();
				$("#management_score").css("display", "none");
				$("#management_cnsln").css("display", "none");
				$("#management_list").css("display", "block");
				$(".insert_btn").css("display", "block");
			});
			$(".cnsln").click(function(){
				management_cnsln();
				$("#management_list").css("display", "none");
				$("#management_score").css("display", "none");
				$("#management_cnsln").css("display", "block");
				$(".insert_btn").css("display", "none");
			});
			
			
		});
		
		$(document).on("click", ".dropy_btn", function(){
   			var valId = $(this).parent().children("div").eq(4).children("input").val();
   			$.ajax({
   				url:"${path}/member/drop?valId="+valId,
   				type: "POST",
   				success: function(){
   					management_list();
   				},
   				error:function(){
   					alert("System Error!!");
   				}
   			});
   		}); 
		
		$(document).on("click", ".delete_btn", function(){
			var valNum = $(this).parent().children("div").eq(0).children("input").val();
			var valName = $(this).parent().children("div").eq(1).children("input").val();
			var valId = $(this).parent().children("div").eq(4).children("input").val();
			$(this).parent().children(".drop_btn_box").css("display", "block");
			$(this).parent().children(".btn_box").css("display", "none");			
		});
		
		$(document).on("click", ".dropn_btn", function(){
			$(this).parent().children(".drop_btn_box").css("display", "none");
			$(this).parent().children(".btn_box").css("display", "block");
		});
		
		
		$(document).on("click", ".inserty_btn", function(){
        	var name = $('#insert_name').val();
        	var email = $('#insert_email').val();
        	var phone = $('#insert_phone').val();
        	var id = $('#insert_id').val();
        	var pw = $('#insert_pw').val();
			/* 중복체크 */
			$.ajax({
				url: "${path}/member/create_check?id="+id+"&email="+email+"&phone="+phone,
				type: "POST",
				success: function(result){
					if(result > 0){
						alert("이미 가입된 회원 또는 아이디입니다.");
					}else{
			        	if(name == '' | name == null){
			        		$('#insert_name').focus();
			        		alert("이름을 입력해주세요");
			        	}else if(email == '' | email == null){
			        		$('#insert_email').focus();
			        		alert("메일을 입력해주세요");
			        	}else if(phone == '' | phone == null){
			        		$('#insert_phone').focus();
			        		alert("전화번호을 입력해주세요");
			        	}else if(id == '' | id == null){
			        		$('#insert_id').focus();
			        		alert("아이디를 입력해주세요");
			        	}else if(pw == '' | pw == null){
			        		$('#insert_pw').focus();
			        		alert("비밀번호를 입력해주세요");
			        	}else{
			        		$('#frm_mem').submit();
			        		$('.insert_box_header').css("display", "none");
			        	}
					}

				}, error: function(){
					alert("management error!!");
				}
			});
        	    	
        });
		
		
		function management_list(){
			$.ajax({
				type: "GET",
				url: "${path}/main/management_list",
				success: function(result){
					$("#management_list").html(result);
				}, error: function(){
					alert("management error!!");
				}
			});
		}
		
		function management_score(){
			$.ajax({
				type: "GET",
				url: "${path}/main/management_score",
				success: function(result){
					$("#management_score").html(result);
				}, error: function(){
					alert("management error!!");
				}
			});
		}
		
		function management_cnsln(){
			$.ajax({
				type: "GET",
				url: "${path}/main/management_cnsln",
				success: function(result){
					$("#management_cnsln").html(result);
				}, error: function(){
					alert("management error!!");
				}
			});
		}
		
	</script>
</body>
</html>
