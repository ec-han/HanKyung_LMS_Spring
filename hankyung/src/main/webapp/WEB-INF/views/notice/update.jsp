<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/board_common.css?v=1">
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
<title>게시글 등록</title>
<style type="text/css">
#update_table_wrap > table > thead > tr, #update_table_wrap > table > tfoot > tr {
	background: #eaecf4;
}
#update_table_wrap > table > tbody > tr {
	background: #f8f9fc;
}
.btn_right {
	float: right;
    margin-right: 1rem;
}
.upd-tb-center {
    font-size: 1rem;
    float: left;
    font-weight: 400;
    /* text-align: center; */
    position: relative;
    top: 0.7rem;
}
</style>
</head>
<body>
	<%@ include file="../include/home_header.jsp" %>
	<!-- 가장 큰 박스 -->
	<div class="section_box">
		<div class="regi-modi-big-wrap">
			<div class="info_title">게시글 수정
        		<div class="info_title_bar"></div>
       		</div>
	        <div class="card-big-wrapper">
				<div id="update_content">
					<div>
						<div class="page_body">
							<div class="bd_hd">
								<!--onsubmit="postForm()"  -->
								<form role="form" class="update_form" id="update_frm" method="POST" action="#">
									<div class="box-body">
										<div class="row order-2 table_wrapper">
				              				<div class="col-sm-12 table_wrapper" id="update_table_wrap">
												<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								                  <thead>
								                  	<tr>
														<th>
															<div class="upd-tb-center">제목</div>
															<fieldset class="field_border">
																<input class="form-control" name="title" id="upd_title" value="${update.title}">
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
																	<textarea class="form-control" id="summernote" name="content">${update.content}</textarea>
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
																<input class="form-control" name="writer" id="upd_writer" value="${update.writer}" readonly="readonly">
															</fieldset>
														</td>
													</tr>
												  </tfoot>
				                				</table>
											</div>
										</div>
										<div class="btn_area">
											<div class="btn_right board_regi_btn" id="qna_upd">
												<i class="fas fa-pen-square"></i>
											</div>
										</div>
									</div>
									<input name="bno" value="${update.bno}" type="hidden">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/home_footer.jsp" %>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
	<script src="${path}/resources/js/summernote-ko-KR.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
	   		$('#summernote').summernote({
	   			lang: 'ko-KR',
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
	   		
			$("#qna_upd").click(function(){
				
				var title = $("#upd_title").val();
				var content = $("#summernote").val();
//				alert(content);

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
				
				$("#update_frm").submit();
			});
			
		});
	</script>
	
</body>
</html>