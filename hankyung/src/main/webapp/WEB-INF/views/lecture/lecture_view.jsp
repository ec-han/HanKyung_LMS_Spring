<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	    a {
            cursor: pointer;
            text-decoration: none;
        }
		.lecture_info {
			position: relative;
			z-index: 1;
            width: 100%;
            min-width: 1350px;
            padding: 150px 0px 0px;
            box-sizing: border-box;
            transition: .3s;
        }
        .info_title {
        	width: 1350px;
            font-size: 35px;
            margin: 0px auto;
            padding: 0px 50px 40px;
            position: relative;
            box-sizing: border-box;
        }
        .info_title_bar {
        	position: absolute;
        	width: 7px;
        	height: 32px;
        	background-color: #444;
        	top: 11.5px;
        	left: 30px;
        }
		








		.header_button {
			width: 1350px;
			margin: 0px auto;
			padding: 25px 25px 30px;
			box-sizing: border-box;
		}
		.button_left {
			display: inline-block;
		}
		.button_right {
			display: inline-block;
			float: right;
		}
		.lecture_btn {
			display: inline-block;
			width: 100px;
			height: 40px;
			line-height: 40px;
			text-align: center;
			font-size: 15px;
			border-radius: 20px;
			border: 1px solid #ddd;
			color: #999;
			transition: .3s;
		}
		#back_btn {
			color: #999;
		}
		.wish_btn {
			margin-right: 5px;
		}
		.lecture_btn:hover, #back_btn:hover {
			border: 1px solid #79CDCF;
			color: #79CDCF;
		}









		.lecture_top {
			position: relative;
			width: 100%;
			height: 350px;
		}
		.lecture_content {
			padding-left: 13%;
			position: absolute;
			top: 0px;
			left: 0px;
			width: 100%;
			box-sizing: border-box;
			z-index: 11;
			display: flex;
		}
		.lecture_img {
			display: inline-block;
			box-shadow: 2px 2px 20px rgba(0, 0, 0, 0.15);
			width: 429px;
			height: 280px;
			overflow: hidden;
			margin-top: 35px;
			border-radius: 5px;
		}
		.img_size {
			height: 280px;
		}
		.lecture_img_back {
			position: absolute;
			top: 0;
			left: 0;
			z-index: -1;
			background: linear-gradient(112.72013189013455deg, rgba(10, 83, 122,1) 4.927083333333334%,rgba(129, 209, 201,1) 97.84374999999999%);
			width: 100%;
			height: 350px;
		}
		.lecture_box {
			display: inline-block;
			padding: 67px 80px;
		}
		.index_box {
			color: white;
			font-size: 25px;
		}
		.lecture_title {
			font-size: 40px;
			width: 900px;
			height: 138px;
		}
		.lecture_day {
			padding-bottom: 5px;
		}
		
		
		
		
		
		

		.lecture_center {
			width: 1350px;
			box-sizing: border-box;
			margin: 0px auto;
			padding: 100px 25px;
		}
		.center_title {
			font-size: 35px;
			padding-bottom: 40px;
		}







		
		.lecture_bottom {
			margin-top: 20px;
			padding: 100px 0px 112px;
			background: #eee;
		}
		.bottom_title {
			text-align: center;
			font-size: 32px;
			padding-bottom: 40px;
		}
		.bottom_content {
			display: flex;
			justify-content: center;
		}
		.bottom_box {
			background: white;
			width: 300px;
			height: 330px;
			border-radius: 5px;
			margin-right: 35px;
			padding: 45px 35px 35px;
			box-sizing: border-box;
			box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.15);
			position: relative;
			overflow: hidden;
		}
		.bottom_box:last-child {
			margin-right: 0px;
		}
		.bottom_bar {
			position: absolute;
			width: 330px;
			height: 7px;
			top: 0;
			left: 0;
		}
		.bottom_bar1 {
			background: #79CDCF;
		}
		.bottom_bar2 {
			background: #2D314F;
		}
		.bottom_bar3 {
			background: #FFC000;
		}
		.box_title {
			font-size: 24px;
			line-height: 30px;
			padding-bottom: 20px;
		}
		.box_name {
			font-size: 18px;
			position: absolute;
			bottom: 32px;
			right: 35px;
		}
</style>
</head>
<body>
	<%@ include file="../include/home_header.jsp" %>
	<div class="lecture_info">
        <div class="info_title">과정 정보
        	<div class="info_title_bar"></div>
        </div>
        <div class="header_button">
			<div class="button_left">
				<a href="${path}/lecture/list" class="lecture_btn" id="back_btn">뒤로가기</a>
			</div>
			<div class="button_right">
				<a class="lecture_btn wish_btn">위시리스트</a>
				<a class="lecture_btn cart_btn">장바구니</a>
			</div>
		</div>
		<div class="lecture_top">
       		<div class="lecture_content">
	       		<div class="lecture_img">
	       			<img class="img_size" src="${path}/resources/img/${lDto.limg}">
	       		</div>
	       		<div class="lecture_img_back"></div>
	       		<div class="lecture_box">
	       			<div class="index_box lecture_title">
	      					${lDto.lname}
	       			</div>
	       			<div class="index_box lecture_day">
	       				<span class="text_box">과정기간ㅣ</span>2018.12.27 ~ 2019.04.05
	       				<%-- <fmt:formatDate value="${lDto.startdate}" pattern="yyyy.mm.dd" />
	       				~ <fmt:formatDate value="${lDto.enddate}" pattern="yyyy.mm.dd" /> --%>
	       			</div>
	       			<div class="index_box lecture_name">
	       				<span class="text_box">강사명ㅣ</span>${lDto.tname}
	       			</div>
       			</div>
       		</div>
    	</div>
   		<div class="lecture_center">
   			<div class="center_title">
   				강의 소개
   			</div>
   			<div>
   				sdfalsdjfalsdfjlsdfsdfsdf!<br>
   				sdflkasdgkewg<br>
   				Fkalsdfjasdl;gjerl<br>
   				dsgsdlfksdflerglfs
   			</div>
   		</div>
   		<div class="lecture_bottom">
   			<div class="bottom_title">
   				BEST 수강 후기
   			</div>
   			<div class="bottom_content">
   				<div class="bottom_box">
   					<div class="bottom_bar bottom_bar1"></div>
   					<div class="box_title">
   						좋은 학습 방법입니다.
   					</div>
   					<div class="box_text">
   						누군가에게 무언가를 설명하려면 평소 알고 있었던 지식이라도 다시 한 번 돌아보고 다듬어야 하며 효율적인 전달 방법을 고민해야 합니다. 그 과정을 반복하며 보다 나은 실력을 쌓을 수 있습니다.
   					</div>
   					<div class="box_name">
   						백기선
   					</div>
   				</div>
   				<div class="bottom_box">
   					<div class="bottom_bar bottom_bar2"></div>
   					<div class="box_title">
   						커리어적인 신뢰도를 높일 수 있었습니다.
   					</div>
   					<div class="box_text">
   						인프런에 올린 강의로 시작해서 지금 오프라인 강의도 하고 있는 거고. 또 다른 회사에서 내 이력서를 볼 때, 신뢰도가 더 높아졌죠.
   					</div>
   					<div class="box_name">
   						이정주
   					</div>
   				</div>
   				<div class="bottom_box">
   					<div class="bottom_bar bottom_bar3"></div>
   					<div class="box_title">
   						인프런은 지식에 가치를 부여하는 좋은 사례인 것 같아요.
   					</div>
   					<div class="box_text">
   						우리나라는 자기 경력에 관련한 교육의 가가 낮은 경우가 많아요. 인프런은 강사와 학습자 모두가 만족하는 좋은 사례를 만들어 가고 있다고 생각합니다.
   					</div>
   					<div class="box_name">
   						이동욱
   					</div>
   				</div>
   			</div>
   		</div>
    </div>
    <%@ include file = "../include/home_footer.jsp" %>
    <script type="text/javascript">
    	var lno = "${lDto.lno}";
		var id = "${sessionScope.id}";
    	$(document).ready(function(){
    		wishCheck();
    		
	    	$(".wish_btn").click(function(){
	    		wishUpdate();
	    	});
    	});
    	
    	function wishCheck(){
    		//alert("id:"+id+", lno:"+lno);
    		$.ajax({
    			type: "POST",
    			url: "${path}/lecture/wishCheck?lno="+lno+"&id="+id,
    			success: function(data){
    				if (data > 0) {
						$('.wish_btn').css("background", "#79CDCF")
										.css("border", "1px solid #79CDCF")
										.css("color", "white");
					} else {
						$('.wish_btn').css("background", "white")
										.css("border", "1px solid #ddd")
										.css("color", "#999");
					}
    			}, error: function(){
    				alert("wishCheck error!!");
    			}
    		});
    	}
    	
    	function wishUpdate(){
    		$.ajax({
    			type: "POST",
    			url: "${path}/lecture/wishUpdate?lno="+lno+"&id="+id,
    			success: function(){
    				wishCheck();
    			}, error: function(){
    				alert("wishUpdate error!!");
    			}
    		});
    	}
    	
    	/* function goodUpdate(lno){
    		var id = "${sessionScope.id}";
    		$.ajax({
    			type: "POST",
    			url: "${path}/lecture/goodUpdate?lno="+lno+"&id="+id,
    			success: function(){
    				goodCheck();
    			}, error: function(){
    				alert("goodUpdate Error!!!");
    			}
    		});
    	} */
    </script>
</body>
</html>