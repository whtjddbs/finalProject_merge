<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>finalProject</title>
<link rel="stylesheet" type="text/css" href="../css/loginForm.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/member.js">
</script>
</head>
<body>
    <div  class="main_container"></div>
    <section  class="member">
        <div align="center" class="login_wrap">
			<h2 align="center" class="member_title">LOGIN</h2>
    
    		<ul  class="tab_list">
        		<li ><a href="" class="active">회원</a></li>
    		</ul>

    <div class="tab_cnt">
    
        <form method="post" id="loginForm" action="/finalProject/member/login.do">
        
            <div class="inpbx">
    			<input placeholder="아이디 " type="text" name="id" id="logId">
    			<div id="logIdDiv"></div>
    		</div>
    		
    		<div class="inpbx">
    			<input placeholder="비밀번호" type="password" name="pwd" id="logPwd">
    			<div id="logPwdDiv"></div>
    		</div>

            <button class="btn btn_login" type="button" id="loginBtn">LOGIN</button>
        </form>
    </div>
    
    <ul class="linkarea">
        <li><a href="/finalProject/member/writeForm.do">회원가입</a></li>
        <li><a href="/finalProject/member/searchId.do">아이디찾기</a></li>
        <li><a href="/finalProject/member/searchPwd.do">비밀번호찾기</a></li>
        <li><a href="/finalProject/member/beLoginForm.do">비회원</a></li>
    </ul>

</div>
    </section>
  
</body>
</html>