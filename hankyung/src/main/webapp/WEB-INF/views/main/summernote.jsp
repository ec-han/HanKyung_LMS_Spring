<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
</head>
<body>
	<textarea class="form-control" id="summernote" name="content"></textarea>
	
	<!-- include summernote-ko-KR -->
	<script src="${path}/resources/js/summernote-ko-KR.js"></script>
   	<script type="text/javascript">
	   	$(document).ready(function() {
	   		$('#summernote').summernote({
	   			lang: 'ko-KR',
	   	        placeholder: 'Hello stand alone ui',
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
	   	});
	   	
	   	
      
      
    </script>
</body>
</html>