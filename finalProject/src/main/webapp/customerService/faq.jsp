<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/faq.css">

<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('div.info3').hide();
	
	$.ajax({
		type : 'POST',
		url : '/finalProject/customerService/getFaqList.do',
		data : 'pg=${pg}',
		dataType : 'json',
		success : function(data){
			//Faq 첫화면 불러오기 ALL
			$.each(data.list,function(index,faqDTO){
				$('<div/>',{
					class : 'info2',
				}).append($('<p/>',{
					text: faqDTO.type
					}).css({
						width: '140px',
						'font-weight': '300'
				})).append($('<p/>',{
					text: faqDTO.title
					}).css({
						padding: '17px 3% 17px 60px',
						'text-align': 'left',
						'font-weight': '500'
				})).appendTo($('#faqTable'));
				
				$('<div/>',{
					class : 'info3',
				}).append($('<p/>',{
					id: 'p_content',
					text: faqDTO.content
				})).appendTo($('#faqTable'));
				
				
			});
			
			$('#faqPagingDiv').html(data.paging.pagingHTML);
		}
	});
	
	$('#faqTable').on('click','p',function(){

		if($(this).parent().next().css('display')=='none'){
			$(this).parent().next().slideDown();
			$(this).css('background','#e0f9bb');
			$(this).prev().css('background','#e0f9bb');
			$(this).parent().css('border-bottom','hidden');
			$(this).parent().next().css('background','#e0f9bb');
		}else {
			$(this).parent().next().slideUp();
			$(this).css('background','');
			$(this).prev().css('background','');
			$(this).parent().css('border-bottom','1px solid #d4d4d4');
			$(this).parent().next().css('background','');
		}
	});
	
	
});
</script>

</head>
<body>

<div class="wrap" style="padding: 0 50px 100px;">

	<div _myPage class="my_grade">
    <ul _myPage>
        <li _myPage>
            <a _myPage href="#">
                <span _myPage>회원등급</span>
                <!----><em _myPage>GREEN</em>
            </a>
            <a _myPage class="benefit_show" href="#">
              	할인혜택 보기
            </a>
        </li>
        <li _myPage>
            <a _myPage href="#">
                <span _myPage>배송중</span>
                <em _myPage>0</em>
            </a>
        </li>
        <li _myPage>
            <a _myPage href="#">
                <span _myPage>마일리지</span>
                <em _myPage>0</em>
            </a>
        </li>
    </ul>
	</div>

	<h3 class="h_tit">FAQ</h3>
	
	<div class="sub_div">
		<div class="searchbox">
			<span class="outbox">
				<input type="search" class="inbox">
			</span>
			<button class="faq_searchBtn" type="submit"></button>
		</div>
		<p style="font-size: 12px; color: #303033;">찾으시는 답변이 없으면 <strong>1:1 문의하기</strong>를 이용해 주세요.</p>
		
		<div style="position: absolute; top: 0; right: 0;">
			<a class="inform">반품/환불/무통장입금 안내 ></a>
			<a class="inform">취소/반품 접수 ></a>
		</div>
	</div>
	
	<div class="small_tab">
	    <ul id="small_tab_ul">
	        <li>
	            <a style="color: #000; font-weight: 700;">자주찾는 FAQ</a>
	        </li>
	        <li>
	            <a>주문결제</a>
	        </li>
	        <li>
	            <a>배송</a>
	        </li>
	        <li>
	            <a>취소/환불</a>
	        </li>
	        <li>
	            <a>반품교환</a>
	        </li>
	        <li>
	            <a>기타</a>
	        </li>
	    </ul>
	</div>
	
	<div id="faqTable">
		<div class="info">
		    <p class="info_p" style="width: 140px;">구분</p>
		    <p class="info_p" style="padding: 15px 3% 15px 0;">제목</p>
	    </div>

	</div>
	
	<div id="faqPagingDiv" style="float: left; width: 100%;" align="center"></div>
</div>

</body>
</html>















