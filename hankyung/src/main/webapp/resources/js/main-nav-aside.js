 $(function(){
	$(window).scroll(function(){
		var scrollValue = $(this).scrollTop();
		if(scrollValue > 40){
			$('#topBtn').fadeIn();
		} else {
			$('#topBtn').fadeOut();
		}
	});
	$("#nav_logout").click(function(){
		alert("로그아웃버튼 클릭");
		$.ajax({
			url: "${path}/main/logout",
			type: "POST",
			success: function() {
				alert("로그아웃 성공!!");
				location.href="${path}/";
			},
			error:function(){
				alert("System Error!!");
			}
		});
	});
	$('#topBtn').click(function(){
		$('html,body').animate({scrollTop:0},150);
	});
	// nav dropdown
       $('#messagesDropdown').click(function(){
            $('#dropbox_msg').slideToggle('fast');                
        });
        $('#alertsDropdown').click(function(){
            $('#dropbox_alert').slideToggle('fast');           
        });
        $('#usersDropdown').click(function(){
            $('#dropdown_menu_right').slideToggle('fast');               
        });
		/* $('#alertsDropdown').focusout(function(){
            $('#dropbox_alert').css('display','none');                
        });
		$('#messagesDropdown').focusout(function(){
			$('#dropbox_msg').css('display','none');            
	    });
        $('#usersDropdown').focusout(function(){
            $('#dropdown_menu_right').css('display','none');                
        }); */

 		// aside dropdown
        $('#collapseCourse_parent').click(function(){
            $('#collapseCourse').slideToggle('fast');   
        });
        $('#collapseTeacher_parent').click(function(){
            $('#collapseTeacher').slideToggle('fast');   
        });
		 $('#collapseStudents_parent').click(function(){
            $('#collapseStudents').slideToggle('fast'); 
        });
		$('#collapseUsers_parent').click(function(){
            $('#collapseUsers').slideToggle('fast'); 
	    });
		$('#collapseAdmin_parent').click(function(){
            $('#collapseAdmin').slideToggle('fast'); 
	    });
		
        $('#collapseCourse_parent').focusout(function(){
            $('#collapseCourse').css('display','none');            
        });
 		$('#collapseTeacher_parent').focusout(function(){
            $('#collapseTeacher').css('display','none');            
        });
        $('#collapseStudents_parent').focusout(function(){
            $('#collapseStudents').css('display','none');            
        });
        $('#collapseUsers_parent').focusout(function(){
            $('#collapseUsers').css('display','none');            
        });
		$('#collapseAdmin_parent').focusout(function(){
            $('#collapseAdmin').css('display','none');            
        }); 
		// 사이드 바 열고 닫힘
		var state = false;
		$('#sidebarToggle').click(function(){
			alert("클릭됨");
			alert(state);
			if(!state){
				$('.aside_wrap').animate({left:'-120px'},300);
				$('.aside_wrap').addClass('toggled');
				$('#accordionSidebar').addClass('toggled');
				$('.nav_content_footer').css('padding-left','0');
				$('.sidebar_brand-text').text("");
				$('.sidebar_brand-icon').css('margin-left','2.5rem');
				$('.collapse_inner').addClass('collapse_inner_toggled');
				$('#accordionSidebar .nav_item').css('height','50px');
			    $('#sidebarToggle').html('<i class="fas fa-angle-right"></i>');
			    
				state=true;
			} else {
				alert("else문"+state);
				$('.aside_wrap').animate({left:'0px'},300);
				$('#accordionSidebar').removeClass('toggled');
				$('.aside_wrap').removeClass('toggled');
				$('.nav_content_footer').css('padding-left','0');
				$('.sidebar_brand-icon').css('margin-left','0px');
				$('.sidebar_brand-text').html("HanKyung LMS <sup>ver 1.2</sup>");
				$('.collapse_inner').removeClass('collapse_inner_toggled');
				$('#accordionSidebar .nav_item').css('height','auto');
				$('#sidebarToggle').html('<i class="fas fa-angle-left"></i>');
				state=false;
			}
		});
        
		$('.sidebar_brand').click(function(){
			location.href="${path}/";
		});
       
        
});
