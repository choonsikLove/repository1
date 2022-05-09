<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/product.css">
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">
	.contents { 
	  margin-top: 30px;
	}	
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	
			<!-- content -->
		<div>
			<ul class="category">
				<li><a href="http://localhost:9000/manwol/product_all"><span>ALL</span></a></li>
				<li><a href="http://localhost:9000/manwol/product_base"><span>만월 원액</span></a></li>
				<li class="category_line"><a href="http://localhost:9000/manwol/product_goods"><span>만월 굿즈</span></a></li>
				<li><a href="http://localhost:9000/manwol/product_gift"><span>선물하기</span></a></li>
				<li><a href="http://localhost:9000/manwol/product_group_order2"><span>단체주문</span></a></li>
			</ul>
		</div>


		<div class="contents">
			<table>
				<tr>
					<th colspan="3"><p class="contents_line"></p></th>
				</tr>
				
				<tr>
				   <td>
					 <div class="contents2">
						  <a href="#"><img class="re" alt="리겔: 눈금 계량컵" src="http://localhost:9000/manwol/resources/images/product/리겔 눈금 계량컵.png" height="400px" width="400px"></a> 
		                  <p><a href="#"><strong>리겔: 눈금 계량컵</strong></a></p>                 
		                  <p>19,900원</p>
		                  <p>
		                 	<small class="material-symbols-outlined" style="font-size: 15px">chat_bubble</small>140
		                 	<small class="material-symbols-outlined" style="font-size: 15px">shopping_cart</small>Cart
		                  </p>
	                   </div>
					</td>
               
          	   		<td>
					  <div class="contents2">
						  <a href="#"><img class="re" alt="카프: 우유곽 글라스" src="http://localhost:9000/manwol/resources/images/product/카프 우유곽 글라스.png" height="400px" width="400px"></a> 
		                  <p><a href="#"><strong>카프: 우유곽 글라스</strong></a></p>                
		                  <p>8,000원</p>
		                  <p>
		                  	<small class="material-symbols-outlined" style="font-size: 15px">chat_bubble</small>6
		                 	<small class="material-symbols-outlined" style="font-size: 15px">shopping_cart</small>Cart
						  </p> 
					  </div>
					</td>
					
					<td>
					  <div class="contents2">
						  <a href="#"><img  class="re" alt="베가: 미니계량컵" src="http://localhost:9000/manwol/resources/images/product/베가 미니계량컵.png" height="400px" width="400px"></a> 
		                  <p><a href="#"><strong>베가: 미니계량컵</strong></a></p>               
		                  <p>2,500원</p>
		                  <p>
		                 	<small class="material-symbols-outlined" style="font-size: 15px">chat_bubble</small>36
		                 	<small class="material-symbols-outlined" style="font-size: 15px">shopping_cart</small>Cart
		                  </p>
	                  </div>
					</td>
				</tr>
			</table>
		</div>       
	
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>