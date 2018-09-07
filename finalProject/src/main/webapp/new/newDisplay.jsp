<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous"
>


<title>Insert title here</title>


<style type="text/css">




body, a {

	html , body { height:100%;
	overflow: hidden
}

}
ul, li{
	list-style: none;
	padding-left: 0px;
	
}

#pdtForm {
	width: 600px;
	height: 500px;
	margin-right: 20px;
}

#pdtView {

	position: relative;
	display: flex;
	padding: 0 50px;
	overflow: hidden;
}


#center {

	margin-left: 200px;
	width: 80%;
}



#one_pdtForm {
	height: 55%;
	width: 100%;
	object-fit: cover;
}

#leftScroll {
	position: absolute;
	width: 200px;
	height: auto;
	left: 50px;
	top: 250px;
	object-fit: cover;
	margin-right: 200px;
}

body div a{
 text-decoration:none;

}


#see_more {
	margin-left: 90%;
}


.selected{
	color:blue;

}

img {heignt: 100%; width: 100%; object-fit: one_pdtForm;}

</style>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		var leftPosition = parseInt($('#leftScroll').css('top'));

		$(window).scroll(function() {

			var scrollTop = $(window).scrollTop();
			var newPosition = scrollTop + leftPosition + "px";

			$("#leftScroll").stop().animate({
				"top" : newPosition

			}, 500);

		}).scroll();
		
		
		$('#leftScroll li').click(function(){
			$('#leftScroll li').removeClass('selected');
			$(this).addClass('selected');
			
			
		});
	
			
			
		});


</script>

</head>
<body class="whole_banner">
	<div>
		<!-- 왼쪽 ------------------------------------------------------->
		<nav id="leftScroll">
			<span id="category_name">NEW</span>
			<h2>NEW Arrivals</h2>
			
			<a href="#"><li>Bras</li></a> 
			<a href="#"><li>Panties</li></a> 
			<a href="#"><li>Men`s</li></a> 
			<a href="#"><li>Sport</li></a> 
		</nav>

		<!--가운데 ------------------------------------------------------- -->
		<!----------------------------------------------------------- -->

		<div id="center">
			<div id="center">
			
			
			<!-- 첫번째 줄---------------------- -->
			
				
				
					
					<ul id="pdtView">
					<!--제품1 ------------------------->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	
						<!--제품2 ------------------------------------------------->
						
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	

						<!--제품3 ------------------------------------------------->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>		
						<!--제품4--------------------------------- -->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	
						
						
						
						
						<!--제품5--------------------------------- -->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	
					</ul>

				<!-- 한줄끝 ------------------------------------------------------>	
					
				<!-- 두번째 줄---------------------------------------------------->
				
					
							
					<ul id="pdtView">
					<!--제품1 ------------------------->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	
						<!--제품2 ------------------------------------------------->
						
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	

						<!--제품3 ------------------------------------------------->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>		
						<!--제품4--------------------------------- -->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	
						
						
						
						
						<!--제품5--------------------------------- -->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	
					</ul>
					
				<!-- 한줄끝 ------------------------------------------------------>		
				<!------------------------------------------------------------>	
				
				
				
				<!-- 세번째 줄---------------------------------------------------->
				
				
						
					<ul id="pdtView">
					<!--제품1 ------------------------->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	
						<!--제품2 ------------------------------------------------->
						
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	

						<!--제품3 ------------------------------------------------->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>		
						<!--제품4--------------------------------- -->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	
						
						
						
						
						<!--제품5--------------------------------- -->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	
					</ul>
					
				<!-- 한줄끝 ------------------------------------------------------>
				
			<!-- 네번째 줄---------------------- -->
				
				

			<ul id="pdtView">
					<!--제품1 ------------------------->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	
						<!--제품2 ------------------------------------------------->
						
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	

						<!--제품3 ------------------------------------------------->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>		
						<!--제품4--------------------------------- -->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	
						
						
						
						
						<!--제품5--------------------------------- -->
						<li id="pdtForm">
							<a href="#">
								<!-- 사진창  -->
								<div id="one_pdtForm">
									<img src="../image/dada.jpg" />
									<div>페퍼시즈닝</div>
									<div>바트심슨</div>
									<div>42,000</div>
									<div>20% 33,600원</div>
									<!--하트  --> 							
									<a> 
										<i class="far fa-heart"></i>&nbsp;&nbsp;
									</a> 							
										<span>0</span> 							
									<!-- 리뷰----->
									<a> 
										<i class="far fa-comment-alt"></i>
									</a> 
										<span>0</span>			
								</div>
							</a> 				
						</li>	
					</ul>
					
				<!-- 한줄끝 ------------------------------------------------------>	
				
				
						
							
					
				</div>
			</div>
		</div>
</body>
</html>