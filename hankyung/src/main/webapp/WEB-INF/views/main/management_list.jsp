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
.insert_box_header{
	display: none;
	background-color: white;
	position: relative;
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
.insert_box_header > div > input{
	text-align: center;
	height: 38px;
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
.insert_btn_box{
	position: absolute;
    border:2px solid #404988;
    background-color: #404988;
    border-radius:5px;
    color: white;
    width: 50px;
    height: 38px;
}
.insertn_btn{
	right: -55px;
}
.inserty_btn{
	right: -110px;
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
#frm_mem{
	padding: 0;
	margin: 0;
}
</style>
</head>
<body>
	<div class="list_box">
		<div class="list_box_header list_box_title">
			<div class="num">No.</div>
			<div class="name info_line flex_line2">이름</div>
			<div class="email info_line flex_line3">이메일</div>
			<div class="phone info_line flex_line3">전화번호</div>
			<div class="id info_line flex_line2">아이디</div>
			<div class="pw info_line flex_line2">비밀번호</div>
		</div>	
		<form action="${path}/member/create" method="POST" id="frm_mem" name="frm_mem">
			<div class="insert_box_header">
				<div class="num">
					<input id="insert_num" name="insert_num" class="info_box" readonly="readonly" ="text-align:center;">
				</div>
				<div class="name info_line flex_line2">
					<input id="insert_name" name="name" class="info_box">
				</div>
				<div class="email info_line flex_line3">
					<input id="insert_email" name="email"class="info_box">
				</div>
				<div class="phone info_line flex_line3">
					<input id="insert_phone" name="phone" class="info_box">
				</div>
				<div class="id info_line flex_line2">
					<input id="insert_id" name="id" class="imput_id info_box">
				</div>
				<div class="pw info_line flex_line2">
					<input id="insert_pw" name="pw" type="password" class="info_box">
				</div>
				<input type="hidden" name="type" value="2">
	            <button class="insertn_btn insert_btn_box" type="button">취소</button>
	            <button class="inserty_btn insert_btn_box" type="button">확인</button>
			</div>
		</form>
		
		<c:forEach items="${list}" var="mDto" varStatus="status">
			<div class="list_box_header cnt_num">
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
                <button class="dropn_btn drop_btn_box">취소</button>
                <button class="dropy_btn drop_btn_box">확인</button>
			</div>
		</c:forEach>	
	</div>
	    <script type="text/javascript">
        $(function(){
        	
            $('.update_btn').click(function(event) {
                var flag = $(this).parent().children("input").val();
                if(flag > 0){
                    $(this).parent().children("div").children("input").removeAttr("readonly");
                    $(this).parent().children("div").children("input").eq(4).attr("readonly", "readonly");
                    $(this).parent().children("div").children("input").css("background-color", "#E6FFFF");
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
            
            $('.insert_btn').click(function(event) {
            	$('.insert_box_header').css("display", "flex");   
            	var num =  parseInt($('.cnt_num').length)+1;
            	$('#insert_num').val(num);
            });
            $('.insertn_btn').click(function(event) {
            	$('.insert_box_header').css("display", "none");
            	$('.insert_box_header').children("div").children("input").slice(1).val("");
            });
            
            
            
            
        });
        
    </script>		
</body>
</html>
