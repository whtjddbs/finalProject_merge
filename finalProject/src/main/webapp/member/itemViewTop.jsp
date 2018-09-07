<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/itemView.css">

</head>
<body>
<div class="detail_category">
	<ul >
	    <li class="category">
            <select>
            	<option><a  href="">MAIN</a></option>
                <option><a  href="">WOMEN</a></option>
                <option><a  href="">ACC</a></option>
                <option><a  href="">MEN</a></option>
                <option><a  href="">YOUTH</a></option>
                <option><a  href="">HOME</a></option>
                <option><a  href="">FOOD</a></option>
                <option><a  href="">TECH+</a></option>
            </select>
	    </li>
	    <li class="category">
              <select>
           		<option><a  href="">SUBMAIN</a></option>
               	<option><a  href="">WOMEN</a></option>
               	<option><a  href="">ACC</a></option>
				<option><a  href="">MEN</a></option>
				<option><a  href="">YOUTH</a></option>
				<option><a  href="">HOME</a></option>
				<option><a  href="">FOOD</a></option>
				<option><a  href="">TECH+</a></option>
              </select>
	    </li>
	    <li class="category">
               <select>
            	<option><a  href="">MAIN</a></option>
                <option><a  href="">WOMEN</a></option>
                <option><a  href="">ACC</a></option>
                <option><a  href="">MEN</a></option>
                <option><a  href="">YOUTH</a></option>
                <option><a  href="">HOME</a></option>
                <option><a  href="">FOOD</a></option>
                <option><a  href="">TECH+</a></option>
               </select>
	    </li>
	</ul>
</div>

 <!---->
 <div class="postLayout">
	 <div  class="image">
	       <img  class="imagebox" src="../image/bra01.jpg">
		   <div  class="item_detail_view">
				            <h1  class="name">
				                PINK BRA
				            </h1>
   		      

	 				
				            <div  class="sale">
				                <div  class="o">
				                    78,000<
				                </div>
				                
				                <div  class="s">
				                    39,000원
				                </div>
				            </div>
				    <div class="policy">
				        <ul>
				           
				            <li >추가혜택</li>
				            <li> 현대카드 38,220원 (2% 청구할인)
				            <li>적립금 390p</li>
				            <li>할부금 월 6,500원 (6개월 할부시)</li>
				                <a  href="" title="무이자 카드보기">무이자 카드보기</a>
				            </li>		            
				        </ul>
				    </div>





						<div>
						       	<div>
						            <div>
									    <select type="combobox"  class="selbx">
									        <!----><option  value="-1">COLOR를 선택해주세요</option>
									        <option  value="0">BLACK </option>
									        <option  value="1">WHITE </option>
									        <option  value="2">PINK </option>
									    </select>
								    </div>
								</div>
					
				                <div>
								         <div  class="selbx">
										    <select type="combobox"  class="">
										        <option  value="3">SIZE를 선택해주세요(가슴둘레)</option>
										       	<option  value="4">75</option>
										       	<option  value="5">80</option>
										       	<option  value="6">85</option>
										    </select>
										</div>
				                  </div>
				                  
				                  <div >
								         <div  class="selbx">
										    <select type="combobox"  class="">
										        <option  value="3">SIZE를 선택해주세요(cup)</option>
										       	<option  value="4">A</option>
										       	<option  value="5">B</option>
										       	<option  value="6">C</option>
										    </select>
										</div>
				                  </div>
						
					            
					
					
						<div  class="chooseBox">  
				          <div >
				 			<a  class="shopbag" href="">SHOPPING BAG</a>
				  			<a  class="buyNow" href="">BUY NOW</a>
						  </div>
				        </div>
					</div>
				
			</div>
<!---->
<!---->



<div  class="topend">
        <div  ><!---->
    		<a  href="#top" class="btnTop">TOP</a>
		</div>
        <div  >
  			<a  href="#end" class="btnBottom">END</a>
		</div>
    </div>
</div>

            

    </div>

<div class="detail_info_area">
    <div class="accodionbx">    
       <div class="productInfo">상품정보</div>
       <div>
           <p>상품코드 : </p><br>
           <p>배송정보 : <br>
           	해당 브랜드 제품으로만 50000원 이상 구매시 무료배송 ( 미만시 배송비 2500원 발생 )
           </p>
       </div>
    </div>
  
    <!---->
    
    <div class="accodionbx">
      	<div class="deliveryInfo">배송정보</div>
            <br>
            <div>제주,산간지역은 교환,반품시 왕복 9,000원의 추가배송비가 청구되니 구매시 신중한 선택 부탁드립니다.</div>
        </div>
   </div>
      
<div>
  <jsp:include page="../member/itemViewMid1.jsp"/>
</div> 


</body>
</html>