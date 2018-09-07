$(document).ready(function(){
	//로그인
	$('#loginBtn').click(function(){
		$('#logIdDiv').empty();
		$('#logPwdDiv').empty();
		
		if($('#logId').val() == "")
			$('#logIdDiv').text('아이디를 입력하세요').css('color','red').css('font-size','9pt');
		else if($('#logPwd').val() == "")
			$('#logPwdDiv').text('비밀번호를 입력하세요').css('color','red').css('font-size','9pt');
		else 
			$.ajax({
				type : 'POST',
				url : '/finalProject/member/login.do',
				data : {'id' : $('#logId').val(),'pwd' : $('#logPwd').val()},
				dataType : 'text',
				success : function(data){
					if(data=='exist')
						location.href='/finalProject/main/index.do';
					else if(data=='nonexist'){
						$('#logPwdDiv').text('로그인 실패').css('color','red').css('font-size','9pt');
					}
				}
			});
	});
	
	// 아이디 중복 체크
	$('#checkId').click(function(){
		$.ajax({
			type : 'POST',
			url : '/finalProject/member/checkId.do',
			data : {'id':$('#wId').val()}, 
			dataType : 'text',
			success : function(data){
				if(data == 'exist'){
					$('#wIdDiv').text('사용 중입니다').css('color','skyblue').css('font-size','9pt');
				}else if(data == 'nonexist'){
					$('#idChk').val($('#wId').val());
					$('#wIdDiv').text('사용 가능합니다').css('color','skyblue').css('font-size','9pt');
				}else if(data == 'empty'){
					$('#wIdDiv').text('먼저 아이디를 입력하세요').css('color','skyblue').css('font-size','9pt');
				}
			}
		});
	});
	
	
	//비회원 주문
	$('#nonmemberBtn').click(function(){
		$('#emailDiv').empty();
		$('#pwdDiv').empty();
		
		if($('#nonmember_email').val() == "")
			$('#emailDiv').text('이메일을 입력하세요').css('color','red').css('font-size','9pt');
		else if($('#nonmember_pwd').val() == "")
			$('#pwdDiv').text('비밀번호를 입력하세요').css('color','red').css('font-size','9pt');
		else 
			$('#loginForm').submit();
	});
	
	
	//회원가입
	$('#wName').keyup(function(){
		if($(this).val().length == 0)
			$('#wNameDiv').text('이름을 입력하세요').css('color','red').css('font-size','9pt');
		else
			$('#wNameDiv').text('');
	});
	$('#wId').keyup(function(){
		if($(this).val().length == 0)
			$('#wIdDiv').text('아이디를 입력하세요').css('color','red').css('font-size','9pt');
		else
			$('#wIdDiv').text('');
	});
	$('#wPwd').keyup(function(){
		if($(this).val().length == 0)
			$('#wPwdDiv').text('비밀번호를 입력하세요').css('color','red').css('font-size','9pt');
		else
			$('#wPwdDiv').text('');
	});
	
	$('#wRepwd').keyup(function(){
		if($(this).val().length == 0)
			$('#wRepwdDiv').text('비밀번호를 재입력하세요').css('color','red').css('font-size','9pt');
		else if($('#wPwd').val() != $('#wRepwd').val())
			$('#wRepwdDiv').text('비밀번호가 일치하지 않습니다').css('color','red').css('font-size','9pt');
		else
			$('#wRepwdDiv').text('');
	});
	
	
	// 등록버튼
	$('#writeBtn').click(function(){	
		$('#wNameDiv').empty();
		$('#wIdDiv').empty();
		$('#wPwdDiv').empty();
		$('#wRepwdDiv').empty();
		
		if($('#wId').val() == "")
			$('#wIdDiv').text('아이디를 입력하세요').css('color','red').css('font-size','9pt');
		else if($('#wPwd').val() == "")
			$('#wPwdDiv').text('비밀번호를 입력하세요').css('color','red').css('font-size','9pt');
		else if($('#wRepwd').val() == "")
			$('#wRepwdDiv').text('비밀번호를 재입력하세요').css('color','red').css('font-size','9pt');
		else if($('#wPwd').val() != $('#wRepwd').val())
			$('#wRepwdDiv').text('비밀번호가 일치하지 않습니다').css('color','red').css('font-size','9pt');
		else if($('#wName').val() == "")
			$('#wNameDiv').text('이름을 입력하세요').css('color','red').css('font-size','9pt');
		else if($('#wId').val() != $('#idChk').val())
			$('#wIdDiv').text('중복체크 하세요').css('color','skyblue').css('font-size','9pt');
		else 
			$('#writeForm').submit();
	});
	
	//수정버튼
	$('#mPwd').keyup(function(){
		if($(this).val().length == 0)
			$('#mPwdDiv').text('비밀번호를 입력하세요').css('color','red').css('font-size','9pt');
		else
			$('#mPwdDiv').text('');
	});
	
	$('#mNewpwd').keyup(function(){
		if($(this).val().length == 0)
			$('#mNewpwdDiv').text('새비밀번호를 입력하세요').css('color','red').css('font-size','9pt');
		else
			$('#mNewpwdDiv').text('');
	});
	
	$('#mNewrepwd').keyup(function(){
		if($(this).val().length == 0)
			$('#mNewrepwdDiv').text('새비밀번호를 재입력하세요').css('color','red').css('font-size','9pt');
		else if($('#mNewpwd').val() != $('#mNewpwdDiv').val())
			$('#mNewrepwdDiv').text('비밀번호가 일치하지 않습니다').css('color','red').css('font-size','9pt');
		else
			$('#mNewrepwdDiv').text('');
	});
	
	
	$('#modifyBtn').click(function(){	
		$('#mPwdDiv').empty();
		$('#mNewpwdDiv').empty();
		$('#mNewrepwdDiv').empty();
		
		if($('#mPwd').val() == "")
			$('#mPwdDiv').text('비밀번호를 입력하세요').css('color','red').css('font-size','9pt');
		else if($('#mNewpwd').val() == "")
			$('#mNewpwdDiv').text('새비밀번호를 입력하세요').css('color','red').css('font-size','9pt');
		else if($('#mNewrepwd').val() == "")
			$('#mNewrepwdDiv').text('새비밀번호를 재입력하세요').css('color','red').css('font-size','9pt');
		else if($('#mNewpwd').val() != $('#mNewpwdDiv').val())
			$('#mNewrepwdDiv').text('비밀번호가 일치하지 않습니다').css('color','red').css('font-size','9pt');
		else {
			$('#modifyForm').submit();
			$('#mPwd').text('');
			$('#mNewpwd').text('');
			$('#mNewrepwd').text('');
		}
	});
	
	$('#pwdUpdateBtn').click(function(){
		$('#mPwdDiv').empty();
		$('#mNewpwdDiv').empty();
		$('#mNewrepwdDiv').empty();
		
		if($('#mPwd').val() == "")
			$('#mPwdDiv').text('비밀번호를 입력하세요').css('color','red').css('font-size','9pt');
		else if($('#mNewpwd').val() == "")
			$('#mNewpwdDiv').text('새비밀번호를 입력하세요').css('color','red').css('font-size','9pt');
		else if($('#mNewrepwd').val() == "")
			$('#mNewrepwdDiv').text('새비밀번호를 재입력하세요').css('color','red').css('font-size','9pt');
		else if($('#mNewpwd').val() != $('#mNewpwdDiv').val())
			$('#mNewrepwdDiv').text('비밀번호가 일치하지 않습니다').css('color','red').css('font-size','9pt');
		else {
			$('#modifyForm').submit();
			$('#mPwd').text('');
			$('#mNewpwd').text('');
			$('#mNewrepwd').text('');
		}
	});
	
	$('#emailUpdateBtn').on('click',function(){
		$('#edit_bx').append($('<div/>',{
			class : 'in_row'
		}).append($('<div/>',{
			class : 'edit_in'
		}).append($('<span/>',{
			class : 'inpbx'
		}).append($('<input/>',{
			type : 'text',
			
		}))).append($('<button/>',{
			class :'btn_black',
			id : 'confirmMail',
			type : 'button',
			text : '인증메일 전송'
		}))
		))
		$(this).prop("disabled", true);
	});
	
	$('#confirmMail').on('click',function(){
		alert('ddd'); // 안 넘어옴
		// 인증메일 전송
	});
	
	// 주소찾기
	$('#addrBtn').on('click',function(){
		new daum.Postcode({
            oncomplete: function(data) {

                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                if(data.userSelectedType === 'R'){
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('addr1').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('addr2').focus();
            }
        }).open();
	});
	
	
	
	// 아이디 찾기
	// 이메일 인증
	$('#certNum').click(function(){
		if($('#email').val() == ""){
			$('#cerEmailDiv').text('이메일을 입력해주세요.').css('color','red').css('font-size','9pt');
			return false;
		}
			
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function(){
			if(xhttp.readyState == 4){
				var data = JSON.parse(xhttp.responseText);
				if(data != null){
					$('#cerEmailDiv').text('이미 가입한 메일입니다.').css('color','skyblue').css('font-size','9pt');
				}else{
					$('#cerEmailDiv').empty();
					sendMail($('#email').val());
				}
			}
		};
		xhttp.open("POST",'/member/checkMail.do',true);
		xhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
		xhttp.send('email='+$('#email').val());
		return false;
	});
	
	function sendMail(email){
		var xhttp = new XMLHttpRequest();
		if(xhttp.readyState == 4){
			if(xhttp.status == 200){
				$(function() {
					$('#cerEmailDiv').dialog({
						autoOpen : false
					   ,width : 'inherit'
					   ,height: 'inherit'
					   ,padding : '50px 40px 40px'
					   ,'background-color' : '#000'
					   ,'box-shadow' : 'rgba(0,0,0,0.5) 20px 20px 80px 0px'
					   ,opacity : '1'
					   ,transform : 'translate(-50%, -50%) scale(1)'
					   ,buttons : {
						   class : 'btn_close',
						   text : '로그아웃되었습니다',
						   click : function(){
							   $(this).dialog("close");
						   }
					   }
					   ,show : {
						   effect : 'blind',
						   duration : 1000
					   }
					   ,hide : {
						   effect : 'explode',
						   duration : 1000
					   }
					});
				});
			}
				 
		}
	}
	
	//다음
	$('#verify_number').keyup(function(){
		$('#vIdDiv').text('인증번호를 입력해주세요.').css('color','black').css('font-size','9pt');
	});
	
	
	$('#searchIdBtn').on('click',function(){
		if($('#verify_number').val() == ""){
			$('#vIdDiv').empty();
			$('#vIdDiv').text('유효하지 않은 인증번호입니다.').css('color','red').css('font-size','9pt');
		}
		else 
			$(this).attr("href", "/finalProject/member/searchIdNext.jsp")

	});
	
	
	// 비밀번호 찾기
	$('#verify_number_pw').keyup(function(){
		$('#vPwdDiv').text('인증번호를 입력해주세요.').css('color','black').css('font-size','9pt');
	});
	
	
	$('#searchPwdBtn').on('click',function(){
		if($('#findId').val() == "")
			$('#findIdDiv').text('아이디를 입력하세요').css('color','red').css('font-size','9pt');
		else if($('#verify_number_pw').val() == ""){
			$('#vPwdDiv').empty();
			$('#vPwdDiv').text('유효하지 않은 인증번호입니다.').css('color','red').css('font-size','9pt');
		}
		else 
			$(this).attr("href", "/finalProject/member/searchPwdNext.jsp")

	});
	
});