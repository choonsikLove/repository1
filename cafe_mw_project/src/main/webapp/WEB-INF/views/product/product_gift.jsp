<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페 만월회 벤치마킹 프로젝트</title>
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
				<li><a href="http://localhost:9000/manwol/product_goods"><span>만월 굿즈</span></a></li>
				<li class="category_line"><a href="http://localhost:9000/manwol/product_gift"><span>선물하기</span></a></li>
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
						  <a href="http://localhost:9000/manwol/product_detail"><img class="re" alt="만월회 5종 선물세트" src="http://localhost:9000/manwol/resources/images/product/만월회 5종 선물세트.jpg" height="400px" width="400px" ></a> 
		                  <p><a href="http://localhost:9000/manwol/product_detail"><strong>만월회 5종 선물세트</strong></a></p>                 
		                  <p class="pay_no-margin">21,000원</p>
		                  <img alt="NEW" src="http://localhost:9000/manwol/resources/images/product/NEW.jpg"  width="48px"> 
		                  <img alt="주문폭주" src="http://localhost:9000/manwol/resources/images/product/주문폭주.jpg"  width="48px">   
		                  <p>
							<small class="material-symbols-outlined" style="font-size: 15px">chat_bubble</small>73
		                 	<small class="material-symbols-outlined" style="font-size: 15px">shopping_cart</small>Cart
		                  </p>
	                  </div>
					</td>

					<td>
					  <div class="contents2">
						  <a href=""><img class="re"alt="만월회 소매넣기" src="http://localhost:9000/manwol/resources/images/product/만월회 소매넣기.jpg" height="400px" width="400px"></a> 
		                  <p><a href="#"><strong>만월회 소매넣기</strong></a></p>          
		                  <p>3,800원</p>
		                  <img alt="선물추천" src="http://localhost:9000/manwol/resources/images/product/선물추천.jpg"  width="48px"> 
		                  <p>
		                  	<small class="material-symbols-outlined" style="font-size: 15px">chat_bubble</small>346
		                 	<small class="material-symbols-outlined" style="font-size: 15px">shopping_cart</small>Cart
		                  </p>
	                  </div>
					</td> 
					
					<td>
					  <div class="contents4">
						  <a href="http://localhost:9000/manwol/product_group_order"><img class="re" alt="만월회 단체주문" src="http://localhost:9000/manwol/resources/images/product/만월회 단체주문.jpg" height="400px" width="400px"></a> 
		                  <p><a href="http://localhost:9000/manwol/product_group_order"><strong>만월회 단체주문</strong></a></p>                 
		                  <p>가격문의</p>
		                  <p>
		                 	<small class="material-symbols-outlined" style="font-size: 15px">chat_bubble</small>0
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