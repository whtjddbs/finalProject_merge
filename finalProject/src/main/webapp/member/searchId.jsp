<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디찾기</title>
<link rel="stylesheet" href="../css/member.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script type="text/javascript" src="../js/member.js">
</script>
</head>
<body>
<div class="login_wrap">
	<h2 class="member_title">ID/PW 찾기</h2>
	<ul class="tab_list">
		<li><a href="searchId.jsp" class="active">아이디</a></li>
		<li><a href="searchPwd.jsp">비밀번호</a></li>
	</ul>
	<div class="tab_cnt">
		<div class="login_info">
			<h1>등록된 이메일로 찾기</h1>
			<p>가입 당시 입력한 이메일을 통해 아이디를 찾을 수 있습니다.</p>
		</div>

		<ul class="field_section">
            <li>
				<div class="title pc_view">
					<label>이름</label>
				</div>
				<div class="field">
					<div class="inpbx">
						<input id="name" placeholder="이름" type="text">
					</div>
				</div>
			</li>
			<li>
				<div class="title pc_view">
					<label>이메일</label>
				</div>
				<div class="field">
					<div class="tellfield">
						<div class="inpbx">
						    <input id="email" type="text">
						</div>
						<a class="btn btn_bg" id="certNum">인증번호</a>
					</div>
					<div id="cerEmailDiv" class="dialog"></div>
				</div>
			</li>
			<li >
				<div class="title pc_view">
					<label>인증번호</label>
				</div>
				<div class="field">
					<div class="inpbx">
						<input id="verify_number" placeholder="인증번호 6자리 숫자 입력" type="text">
					</div>
					<div class="field_vali2" id="vIdDiv">인증번호를 입력해주세요.</div>
				</div>
			</li>
		</ul>

		<a class="btn btn_login" id="searchIdBtn">다음</a>
	</div>
</div>

</body>
</html>