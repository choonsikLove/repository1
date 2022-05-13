<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/admin.css">
</head>
<body>

<jsp:include page="../../header.jsp"></jsp:include>
<hr class="adminHr">
<div>

	<div>
		<nav>
			<ul>
				<li><a href="http://localhost:9000/manwol/admin/member_list">회원 관리</a></li>
				<li><a href="http://localhost:9000/manwol/admin/product_list">상품 관리</a></li>
				<li><a href="http://localhost:9000/manwol/admin/order_main">주문 관리</a></li>
				<li><a href="http://localhost:9000/manwol/admin/review_main">Review 관리</a></li>
		 	</ul>
		</nav>
	</div>


	<div class="adminWrap">
		<div class="welcome">
			<div>
				<img alt="임시" src="http://localhost:9000/manwol/resources/images/default_profile.png">
			</div>
			<div>
				<p><a href="http://localhost:9000/manwol/admin"><span>관리자</span></a>님 안녕하세요.</p>
				<p>상품 관리 페이지입니다.</p>
			</div>
		</div>
	</div>
	
	<div>
		<ul class="category">
			<li><a href="http://localhost:9000/manwol/admin/product_list"><span>ALL</span></a></li>
			<li><a href="http://localhost:9000/manwol/admin/product_list_base"><span>만월 원액</span></a></li>
			<li><a href="http://localhost:9000/manwol/admin/product_list_goods"><span>만월 굿즈</span></a></li>
			<li class="category_line"><a href="http://localhost:9000/manwol/admin/product_list_gift"><span>선물하기</span></a></li>
			<li><a href="http://localhost:9000/manwol/admin/product_list_group_order"><span>단체주문</span></a></li>
		</ul>
	</div>
	
	<a href="http://localhost:9000/manwol/admin/product_write"><button class="productButton">+ 상품 추가</button></a>
	
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
</div>
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>