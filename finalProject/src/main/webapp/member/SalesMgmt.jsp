<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매출 관리</title>
<link rel="stylesheet" type="text/css" href="../css/SalesMgmt.css">
</head>
<body>
<h3 class="title">매출 관리</h3>
<div>
	<table class="tblarea1">
		<tr>
			<th style="width: 80px; padding-right: 20px;">
				<div class="selectBx1">
					<select>
						<option value="main">Main</option>
						<option value="men">MEN</option>
						<option value="women">WOMEN</option>
						<option value="sports">SPORTS</option>
					</select>
				</div>
			</th>
			<th style="width: 80px;">
				<div class="selectBx2">
					<select>
						<option value="sub">SubMain</option>
						<option value="bra">Bra</option>
						<option value="pantie">panties</option>
						<option value="Tpan">T-panties</option>
					</select>
				</div>
			</th>
			<th>
				<div class="searchBx">
					<input type="text" size="20" "" ><a href=""><img src="../image/search.jpg"></a>
				</div>
			</th>	
		</tr>
	</table>
</div>

<div>
	<table class="tblarea2">
		<thead>
			<tr>
				<th>
	                <div class="table1">
	                       	메인
	              	</div>
	            </th>
	            <th>
	                <div class="table2">
	                       	서브
	              	</div>
	            </th>
	            <th>
	               <div class="table3">
	                      	상품명
	             	</div>
	            </th>
	            <th>
	                <div class="table4">
	                      	수량
	                </div>
	            </th>
	            <th>
	                <div class="table5">
	                      	가격
	                </div>
	            </th>
	            <th  >
                    <div class="table6" >
                          	상품 합계
                    </div>
                </th>                        
	        </tr>
	     </thead>
	     <tbody>
	   	 <tr>
	        <td>
	        	<div class="tb1">
					women
	        	</div>
	       	</td>
	       	<td>
	        	<div class="tb2">
	        		bra
	        	</div>
	       	</td>
	       	<td>
	        	<div class="tb3">
	        		블랙
	        	</div>
	       	</td>
	       	<td>
	        	<div class="tb4">
	        		30
	        	</div>
	       	</td>
	       	<td>
	        	<div class="tb5">
	        		30,000
	        	</div>
	       	</td>
	       	<td>
	        	<div class="tb6">
	        		900,000
	        	</div>
	       	</td>
	     </tr>
	     
	     <tr>
	        <td>
	        	<div class="tb1">
					women
	        	</div>
	       	</td>
	       	<td>
	        	<div class="tb2">
	        		bra
	        	</div>
	       	</td>
	       	<td>
	        	<div class="tb3">
	        		핑크
	        	</div>
	       	</td>
	       	<td>
	        	<div class="tb4">
	        		10
	        	</div>
	       	</td>
	       	<td>
	        	<div class="tb5">
	        		25,000
	        	</div>
	       	</td>
	       	<td>
	        	<div class="tb6">
	        		250,000
	        	</div>
	       	</td>
	     </tr>
	  	 </tbody>
	</table>
</div>




<div class="total">
	총 매출 : <input type="label" size="15" >1,150,000
</div>

</body>
</html>