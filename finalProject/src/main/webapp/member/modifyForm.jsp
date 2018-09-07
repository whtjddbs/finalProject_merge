<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<link rel="stylesheet" href="../css/member.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/member.js">
</script>
</head>
<body>
<section class="my_modify">
	<h3 class="my_tit">회원정보수정</h3>
	<form id="modifyForm" method="post" action="/finalProject/member/modify.do">
		<ul class="tb_lst">
			<li class="tb_tr_email">
				<div class="tb_th">
					<strong>아이디</strong>
				</div>
				<div class="tb_td">
					<p><%-- ${memberDTO.id} --%> dongdong</p>
				</div>
			</li>
			<li class="tb_tr_password">
				<div class="tb_th"><strong>비밀번호변경</strong></div>
				<div class="tb_td">
					<div class="in_half">
						<div class="inpbx">
							<label >현재 비밀번호</label>
							<input id="mPwd" name="pwd" placeholder="현재 비밀번호" type="password">
							<div id="mPwdDiv"></div>
						</div>
						<div class="inpbx">
							<label >신규 비밀번호</label>
							<input id="mNewpwd" name="newpwd" placeholder="신규 비밀번호" type="password">
							<div id="mNewpwdDiv"></div>
						</div>
						<div class="inpbx">
							<label >신규 비밀번호 확인</label>
							<input id="mNewrepwd" name="newrepwd" placeholder="신규 비밀번호 확인" type="password">
							<div id="mNewrepwdDiv"></div>
						</div>
						<button type="button" class="btn_black" id="pwdUpdateBtn">비밀번호 변경</button>
					</div>
				</div>
			</li>
			<li class="tb_tr_name">
				<div class="tb_th">
					<strong>이름</strong>
				</div>
				<div class="tb_td">
					<p><%-- ${memberDTO.name } --%> 김수엘</p>
				</div>
			</li>
			<li class="tb_tr_tell">
				<div class="tb_th"><strong>휴대폰번호</strong></div>
				<div class="tb_td">
					<div class="hp_in">
						<div class="tellfield">
							<div class="ruler-selbx">
								<span class="selbx">
    								<select name="tel1" class="sel">
        								<option value="010">010</option>
        								<option value="011">011</option>
        								<option value="016">016</option>
        								<option value="017">017</option>
        								<option value="018">018</option>
        								<option value="019">019</option>
    								</select>
								</span>
							</div>
							<div class="dash">-</div>
							<div class="inpbx">
								<input id="tel2" name="tel2" value="${memberDTO.tel2}" maxlength="4" type="tel" >
							</div>
							<div class="dash">-</div>
							<div class="inpbx">
								<input id="tel3" name="tel3" value="${memberDTO.tel3}" maxlength="4" type="tel">
							</div>
						</div>
					</div>
				</div>
			</li>
			<li class="tb_tr_email">
				<div class="tb_th">
					<strong>이메일</strong>
				</div>
				<div class="tb_td">
					<p><%-- ${memberDTO.email} --%>mickycholate@naver.com</p>
					<button type="button" class="btn_black" id="emailUpdateBtn">이메일 변경</button>
					<div class="edit_bx" id="edit_bx"></div>
				</div>
			</li>
			<li class="tb_tr_addr">
				<div class="tb_th">
					<strong>주소</strong>
				</div>
				<div class="tb_td">
					<div class="in_row">
							<div>
  							  <div class="bx zip-bx"></div>
   							 <button class="btn">주소찾기</button>
							</div>
					</div>
					<div class="in_half">
						<div class="inpbx">
							<input disabled name="addr1" title="주소 입력" type="text">
						</div>
						<div class="inpbx">
							<input title="주소 상세입력" name="addr2" type="text">
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="btn_bx">
			<button class="btn_bor" type="reset">취소</button>
			<button class="btn_black" type="button" id="modifyBtn">저장</button>
			<div class="posi_bx">
				<p class="txt">탈퇴를 원하시면 회원탈퇴 버튼을 눌러주세요</p>
				<a class="btn_bor" id="bye">회원탈퇴</a>
			</div>
		</div>
	</form>
</section>

</body>
</html>