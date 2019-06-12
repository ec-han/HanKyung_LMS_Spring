var joinValidate = {
	//결과 메세지 출력시 사용하는 Text
	resultCode : {
		empty_val :{
			code : 1,
			desc : '* 필수입력 정보입니다.'
		},
		space_length_val : {
			code : 2,
			desc : '* 공백없이 입력해주세요.'
		},
		
		//ID
		success_id : {
			code : 0,
			desc : '* 사용가능한 아이디입니다.'
		},
		invalid_id : {
			code : 3,
			desc : '* 올바른 ID를 입력해주세요.'
		},
		length_id : {
			code : 4,
			desc : '* 5~15자 이내로 입력해주세요.'
		},
		overlap_id : {
			code : 5,
			desc : '* 이미 사용중인 아이디 입니다.'
		},
		
		
		// PW
		success_pw : {
			code : 0,
			desc : '* 사용가능한 비밀번호 입니다.'
		},
		invalid_pw : {
			code : 3,
			desc : '* 올바른 비밀번호를 입력해주세요.'
		},
		length_pw : {
			code : 4,
			desc : '* 4~12자 이내로 입력해주세요.'
		},
		
		
		// REPW
		success_repw : {
			code : 0,
			desc : '* 비밀번호가 일치합니다.'
		},
		invalid_repw : {
			code : 3,
			desc : '* 올바른 비밀번호를 입력해주세요.'
		},
		other_repw : {
			code : 4,
			desc : '* 입력하신 비밀번호가 다릅니다.'
		},
		

//		* 비밀번호를 다시 입력해주세요.
		
		// NAME
		success_name : {
			code : 0,
			desc : ''
		},
		invalid_name : {
			code : 3,
			desc : '* 올바른 이름를 입력해주세요.'
		},
		
		// PHONE
		success_phone : {
			code : 0,
			desc : ''
		},
		invalid_phone : {
			code : 3,
			desc : '* 올바른 번호를 입력해주세요.'
		},
		number_phone : {
			code : 4,
			desc : '* 휴대폰 번호가 유효하지 않습니다.'
		},
		
		//email
		success_email : {
			code : 0,
			desc : '* 사용가능한 이메일 입니다.'
		},
		invalid_email : {
			code : 3,
			desc : '* 올바른 이메일을 입력해주세요.'
		}
		
	},
	checkId : function(memId){
		var regEmpty = /\s/g;
		var idReg = RegExp(/^[a-zA-Z0-9-_]{1,15}$/);
		
		if (memId == '') {
			return this.resultCode.empty_val;		
			
		} else if (memId.match(regEmpty)) {
			return this.resultCode.space_length_val;
			
		} else if (!idReg.test(memId)) {
			return this.resultCode.invalid_id;
			
		} else if (memId.length < 5 || memId.length > 15) {
			return this.resultCode.length_id;		
			
		} else { 
			return this.resultCode.success_id;
		}
	},
	checkPw : function(memPw, memRepw){
		var regEmpty = /\s/g;
		var pwReg = RegExp(/^[a-zA-Z0-9]{4,12}$/);
		
		if (memPw == '') {
			return this.resultCode.empty_val;
			
		} else if (memPw.match(regEmpty)) {
			return this.resultCode.space_length_val;;
			
		} else if (memPw.length < 4 || memPw.length > 12) {
			return this.resultCode.length_pw;
			
		} else if (!pwReg.test(memPw)) {
			return this.resultCode.invalid_pw;
			
		} else {
			if (memRepw != null || memRepw.length != 0){
				if(memRepw == memPw){
					$('.err_msg').eq(2).css('display', 'inline-block')
									   .text(this.resultCode.success_repw.desc)
									   .css('color', 'mediumseagreen');
					$('.check_i').eq(2).css('color', 'mediumseagreen');
				}  else {
					$('.err_msg').eq(2).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text(this.resultCode.other_repw.desc);
					$('.check_i').eq(2).css('color', '#ff1212');
				} 
			}
			return this.resultCode.success_pw;
		}
	},
	checkRpw : function(memPw, memRepw){
		var pwReg = RegExp(/^[a-zA-Z0-9]{4,12}$/);
		var regEmpty = /\s/g;
		
		if (memRepw == '') {
			return this.resultCode.empty_val;
		} else {
			if (memPw != null || memPw.length != 0){
				if(memRepw == memPw){
					$('.err_msg').eq(2).css('display', 'inline-block')
									   .text(this.resultCode.success_repw.desc)
									   .css('color', 'mediumseagreen');
					$('.check_i').eq(2).css('color', 'mediumseagreen');
				}  else {
					$('.err_msg').eq(2).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text(this.resultCode.other_repw.desc);
					$('.check_i').eq(2).css('color', '#ff1212');
					return this.resultCode.other_repw.desc;
				} 
			}
			return this.resultCode.success_repw;
		}
		
		
		
	}	
}


//아이디 중복체크 Ajax

function ajaxCheck(memId){
	var return_val = ""; 
	$.ajax({
		//url:"idCheck.makefree?id="+id 라고 쓰는 것을 url과 data로 나누어서 사용
		url:"idCheck?id="+memId,
		type:"POST",
		contentTypeType:"application/json",
		async: false,
		success:function(data){
			if(data == "1"){
				$(".err_msg").eq(0).text("* 이미 사용중인 아이디 입니다.")
								   .css("color", "#ff1212");
				$('.check_i').eq(0).css('color', '#ff1212');
				return_val = "-1";
			} else {
				$('.err_msg').eq(0).css('display', 'inline-block')
								   .css('color', 'mediumseagreen')
								   .text('* 사용가능한 아이디 입니다.');
				$('.check_i').eq(0).css('color', 'mediumseagreen');
				return_val = "1";
			}
		},
		error:function(){
			alert("System Error!!!");
		}
	});	
	return return_val;
}

function ajaxPwCheck(id, pw){
	var return_val = false; 
	$.ajax({
		url: "pwCheck?id="+id+'&pw='+pw,
		type: 'POST',
		dataType: "text",
		async: false,
		success: function(data){
			if(data == "1"){
				$('.pwAjax').css('display', 'inline-block')
							.css('color', 'mediumseagreen')
							.text('* 비밀번호가 같습니다.');
				return_val = true;
			} else {
				$('.pwAjax').css('display', 'inline-block')
							.css('color', '#ff1212')
							.text('* 비밀번호가 다릅니다.');
				return_val = false;
			}
		},
		error:function(){
			alert("System Error!!!");
		}
	});
	return return_val;
}
