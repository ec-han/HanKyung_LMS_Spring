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
<title>게시글 등록</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
<style type="text/css">
#regi_table_wrap > table > thead > tr, #regi_table_wrap > table > tfoot > tr {
	background: #eaecf4;
}
#regi_table_wrap > table > tbody > tr {
	background: #f8f9fc;
}
.btn_right {
	float: right;
    margin-right: 1rem;
}
.regi-tb-center {
    font-size: 1rem;
    float: left;
    font-weight: 400;
    /* text-align: center; */
    position: relative;
    top: 0.7rem;
}

.sel-viewoption {
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
    margin-left: 1rem;
}
#viewoptionheader {
    position: relative;
    top: 5px;
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
								<form class="register_form" id="register_frm" method="POST" action="${path}/lectureboard/answer">
									<input type="hidden" value="${one.bno}" name="bno">
									<input type="hidden" value="${one.writer}" name="writer">
									<div class="box-body">
										<div class="row order-2 table_wrapper">
				              				<div class="col-sm-12 table_wrapper" id="regi_table_wrap">
												<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								                  <thead>
								                  	<tr>
														<th>
															<div class="regi-tb-center" id="viewoptionheader">답글</div>
															
															<div class="regi-tb-center">제목</div>
															<fieldset class="field_border">
																<input name="title" class="form-control" id="regi_title" value="RE: ${one.title}">
																<span class="step_url"></span>
															</fieldset>
														</th>
													</tr>
								                  </thead>
								                  <tbody>
								                  	<tr>
														<td>
															<div class="data-bd-cont">
																<fieldset class="field_border">
																	<textarea class="form-control" id="summernote" name="content">${one.content}</textarea>
																	<span class="step_url"></span>
																</fieldset>
															</div>
														</td>
													</tr>
								                  </tbody>
								                  <tfoot>
													<tr>
														<td>
															<div class="tb-center">작성자</div>
															<fieldset class="field_border">
																<input class="form-control" id="regi_writer" value="${sessionScope.name}" readonly="readonly">
															</fieldset>
														</td>
													</tr>
												  </tfoot>
				                				</table>
											</div>
										</div>
										<div class="btn_area">
											<div class="btn_right board_regi_btn" id="lecturebd_regi">
												<i class="fas fa-pen-square"></i>
											</div>
											<div class="btn_left board_regi_btn">
												<a href="${path}/lectureboard/list?viewoption=${one.btype}">
													<i class="far fa-list-alt" id="btn_list"></i>
												</a>
											</div>
										</div>
									</div>
									<input type="hidden" name="code" id="code">
									
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- 본문 내용에 따라 바뀔 곳 끝   -->
			</div>
			<%@ include file="../include/main_footer.jsp" %>
		</div>
	</div>
	
	<script src="${path}/resources/js/summernote-ko-KR.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
	   		$('#summernote').summernote({
	   			lang: 'ko-KR',
	   	        placeholder: '글을 입력해주세요.',
	   	        tabsize: 2,
	   	        height: 100,
	   	        minHeight: null,             // set minimum height of editor
	   	        maxHeight: null,             // set maximum height of editor
	   	        focus: true,                  // set focus to editable area after initializing summernote
	   	     	codeviewFilter: false,
	   		  	codeviewIframeFilter: true,
	   		  	codeviewFilterRegex: 'custom-regex',
	   		  	codeviewIframeWhitelistSrc: ['my-own-domainname'],
	   		 	toolbar: [
		   		    // [groupName, [list of button]]
		   		    ['style', ['bold', 'italic', 'underline', 'clear']],
		   		    ['font', ['strikethrough', 'superscript', 'subscript']],
		   		    ['fontsize', ['fontsize']],
		   		    ['color', ['color']],
		   		    ['para', ['ul', 'ol', 'paragraph']],
		   		    ['height', ['height']]
		   		  ]
	   		}); 
	   		
			$("#lecturebd_regi").click(function(){
				var viewoption = $('#viewoption').val();
				var title = $("#regi_title").val();
				var content = $("#summernote").val();
					
				// 게시글 내용 작성자 null안되게 유효성 체크
				if(title==""||title.length==0){
					$('.step_url').text('글을 등록하려면 입력해주세요').css('display','block');
					return false;
				} else {
					$('.step_url').css('display','hidden');
//					alert('유효성 체크1 완료');
				} 
				
				if(content == "<p><br></p>"){
					$('.step_url').text('글을 등록하려면 입력해주세요').css('display','block');
					return false;
				} else {
					$('.step_url').css('display','hidden');
//					alert('유효성 체크2 완료');
				} 
				
				$("#register_frm").submit();
			});
			
		});
	</script>
	
</body>
</html>