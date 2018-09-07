<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style type="text/css">
h3.title {padding: 10px 0px; border-bottom: 4px solid black; margin-bottom: 0px; font-size: 24px; font-weight: 700;}

.deliveryControll {overflow: hidden; width: 100%; height: auto;}
.deliveryControll ul {display: table; list-style: none; padding: 0px; margin: 0px; width: 100%;}
.deliveryControll ul li {display: table-cell; float: left; width: 100%; padding : 10px 0px 10px 2%;}
.deliveryControll ul li:first-child {border-bottom: 2px solid black;}
.deliveryControll ul li > div {width: 100%; overflow: hidden; height: auto;}
.deliveryControll ul li > div > div {float: left; text-align: center;}
.deliveryControll ul li:nth-child(1)~li > div > div:nth-child(1) {width: 5%;} /* 체크박스 */
.deliveryControll ul li:nth-child(1)~li > div > div:nth-child(2) {width: 15%;} /* 주문번호 */
.deliveryControll ul li:nth-child(1)~li > div > div:nth-child(3) {width: 10%;} /* 아이디 */
.deliveryControll ul li:nth-child(1)~li > div > div:nth-child(4) {width: 10%;} /* 이름 */
.deliveryControll ul li:nth-child(1)~li > div > div:nth-child(5) {width: 30%;} /* 주소 */
.deliveryControll ul li:nth-child(1)~li > div > div:nth-child(6) {width: 15%;} /* 전화번호 */
.deliveryControll ul li:nth-child(1)~li > div > div:nth-child(7) {width: 10%;} /* 배송상태 */
.deliveryControll ul li:nth-child(2) {border-bottom: 1px solid black;}
.deliveryControll ul li:nth-child(2)~li {border-bottom: 1px solid #d4d4d4;}

.delivery_step {width: 100%; overflow: hidden; height: auto;}
.delivery_step > * {float: left; margin-right: 20px;}
.delivery_step select {
	width: 150px; /* 원하는 너비설정 */ 
	padding: .8em .5em; /* 여백으로 높이 설정 */ 
	font-family: inherit; /* 폰트 상속 */ 
	background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */ 
	border: 1px solid #999; border-radius: 0px; /* iOS 둥근모서리 제거 */ 
	-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
	-moz-appearance: none; 
	appearance: none;
}
.delivery_step select::-ms-expand {display:none}

.delivery_step div:last-child {float: right; padding-right: 2%;}
.delivery_step div input {
	width: 150px; /* 원하는 너비설정 */ 
	padding: .8em .5em; /* 여백으로 높이 설정 */
	font-family: inherit;
	border: 1px solid #999; 
}

.btn_black {width: 150px;padding: .8em .5em;border: 1px solid #303033;background: #303033;font-size: 13px;color: #fff;line-height: 20px;}

.delivery_title > div {float: left; border-right: 1px solid #d4d4d4; text-align: center; font-weight: 700;}
.delivery_title > div:last-child {float: left; border-right: 0px solid #d4d4d4;}

.delivery_item {cursor: pointer;}

#delivery_item_detail {overflow: hidden; height: auto; width: 90%; border: 1px solid #d4d4d4; margin: 10px 0px 10px 5%; display: none;}
#delivery_item_detail .stepbox {border-top: 3px solid black; border-bottom: 1px solid black; padding: 5px 0px;}
#delivery_item_detail .stepbox span {font-family: "Do Hyeon"; font-weight: 700;}

.items {width: 58%; float: left;}
.items .item {width: 100%; display: inline-block; *display: inline; padding: 10px 0px;}
.items .item .item_info {display: block;float: left; vertical-align: middle;}
.items .item .item_info .item_name {font-family: "Do Hyeon"; font-size: 24px; font-weight: 900; padding: 10px 0px; word-wrap: break-word;font-size: 18px;line-height: 24px;font-weight:500; word-wrap: break-word;}
.items .item .item_info .item_size {font-size: 12px; padding-bottom: 10px;}
.itmes .item .item_info .item_count {padding: 10px 0px;}
.items .item .item_image {height: auto; width: 140px;}
.items .item img { float: left; width: 80px; vertical-align: middle; padding: 0px 30px; }

#delivery_item_detail .pay_info {width: 36%; float: right; border-left: 1px solid #d4d4d4; padding: 0px 2%;}
#delivery_item_detail .pay_info > div:nth-child(odd) {float: left; width: 45%; height: 40px; padding-top:10px;}
#delivery_item_detail .pay_info > div:nth-child(even) {float: right; width: 45%; height: 45px; text-align: right; padding-top:5px;}
#delivery_item_detail .pay_info > div > span {font-family: "Do Hyeon"; font-size: 22pt; font-weight: 700;}

.my_btnbox {margin-top: 20px; text-align: right;}
</style>

</head>
<body>
<section class="deliveryControll">
	<h3 class="title">배송관리</h3>
	<ul>
		<li>
			<div class="delivery_step">
				<select>
					<option value="all">전체</option>
					<option value="prep">준비중</option>
					<option value="delivery">배송중</option>
					<option value="complete">배송완료</option>
				</select>
				<div><i class="material-icons">date_range</i>&emsp;<input type="date" class="datePicker"> ~ <input type="date" class="datePicker"></div>
				<div><input type="button" class="btn_black" value="검색"></div>
			</div>
		</li>
		<li>
			<div class="delivery_title">
				<div><input type="checkbox" name="checkAll" id="checkAll"></div>
				<div>주문번호</div>
				<div>아이디</div>
				<div>이름</div>
				<div>주소</div>
				<div>전화번호</div>
				<div>배송상태</div>
			</div>
		</li>
		<!-- <li>
			<div class="delivery_item">
				<div><input type="checkbox" name="check" class="check"></div>
				<div>2017081994420</div>
				<div>whtjddbs</div>
				<div>조성윤</div>
				<div>경기도 구리시 인창동 원일아파트 000동 0000호</div>
				<div>010-1234-1234</div>
				<div>준비중</div>
			</div>
		</li> -->
	</ul>
	<div class="my_btnbox">
		<button class="btn_black">배송중</button>
		<button class="btn_black">배송완료</button>
	</div>
</section>
<section id="delivery_item_detail">
	<div class="stepbox">
		주문일자 <span>2018.08.30</span> 주문번호 <span>2018082900001</span>
	</div>
	<div class="items">
		<div class="item">
			<div class="item_image">
				<img src="../image/bra01.jpg">
			</div>
			<div class="item_info">
				<div class="item_name">NEW! Lightly Lined Wireless Bra</div>
				<div class="item_size">[Size] 34B</div>
				<div class="item_count">32000원 / 수량 1개</div>
			</div>
		</div>
	</div>
	<div class="pay_info">
		<div>총 상품가격</div><div><span>32000</span>원</div>
		<div>할인금액</div><div><span>(-)3000</span>원</div>
		<div>총 결제금액</div><div><span>29000</span>원</div>
	</div>
</section>
</body>

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#checkAll').click(function(){
		if($('#checkAll').prop('checked')) {
			$('.check').prop('checked', true);
		}else {
			$('.check').prop('checked', false);
		}
	})
	
	//주문 리스트 불러오기
	$.ajax({
		type : 'POST',
		url : '/finalProject/admin/getDeliveryList.do',
		dataType : 'json',
		success : function(data) {
			//alert(JSON.stringify(data));
			$.each(data.mapList,function(index, item){
				$('<li/>').append($('<div/>',{
					class : 'delivery_item'
				}).append($('<div/>').append($('<input/>',{
					type : 'checkbox',
					name : 'check',
					class : 'check'
				}))).append($('<div/>',{
					text : item.serial
				})).append($('<div/>',{
					text : item.id
				})).append($('<div/>',{
					text : item.name
				})).append($('<div/>',{
					text : item.addr
				})).append($('<div/>',{
					text : item.tel
				})).append($('<div/>',{
					text : item.status
				}))).appendTo($('.deliveryControll ul'));
			});
		}
	});
	
	
	//주문 리스트 클릭시
	$('.deliveryControll').on('click','.delivery_item > *:not(:has(input.check))',function(){
		if($(this).parent().next().prop('tagName')=='SECTION') {
			$('#delivery_item_detail').hide();
			$('.deliveryControll').append($('#delivery_item_detail'));
			return false;
		}
		
		$('#delivery_item_detail').hide();
		
		var serial = $(this).parent().children().eq(1).text();
		
		$.ajax({
			type : 'POST',
			url : '/finalProject/admin/deliveryDetail.do',
			data : {'serial' : serial},
			dataType : 'json',
			success : function(data){
				
			}
		});
		//ajax로 데이터 불러올 부분
		$('#delivery_item_detail > .stepbox span:eq(0)').text('2018.09.05');
		$('#delivery_item_detail > .stepbox span:eq(1)').text(serial);
		$('#delivery_item_detail img').prop('src','../image/bra02.jpg');
		$('#delivery_item_detail .item_name').text('NEW! Lightly Lined Wireless Bra');
		$('#delivery_item_detail .item_size').text('[Size] 32B');
		$('#delivery_item_detail .item_count').text('32000원 / 수량 1개');
		$('#delivery_item_detail > .pay_info span:eq(0)').text('32000');
		$('#delivery_item_detail > .pay_info span:eq(1)').text('(-) 2000');
		$('#delivery_item_detail > .pay_info span:eq(2)').text('30000');
		
		$(this).parent().parent().append($('#delivery_item_detail'));
		$('#delivery_item_detail').slideToggle();
	});
	
});
</script>
</html>