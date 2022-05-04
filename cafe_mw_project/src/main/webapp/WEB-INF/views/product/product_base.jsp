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
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
		<div>
			<ul class="category">
				<li><a href="http://localhost:9000/manwol/product_all.do"><span>ALL</span></a></li>
				<li class="category_line"><a href="http://localhost:9000/manwol/product_base.do"><span>만월 원액</span></a></li>
				<li><a href="http://localhost:9000/manwol/product_goods.do"><span>만월 굿즈</span></a></li>
				<li><a href="http://localhost:9000/manwol/product_gift.do"><span>선물하기</span></a></li>
				<li><a href="#"><span>단체주문</span></a></li>
			</ul>
		</div>
		
		<div class="contents_line"></div>

		<div class="contents">             
             <div class="contents2">
                  <img class="re" alt="만월회 음료 원액 베이스 10종(1kg)" src="http://localhost:9000/manwol/resources/images/만월회 음료 원액 베이스 10종(1kg).jpg" height="300px" width="300px"> 
                  <h5>만월회 음료 원액 베이스 10종(1kg)</h5>                 
                  <p class="pay no-margin" style=""><small><del>47,500원</del></small></p>
                   <p><span id="percent">37%</span> 29,900원</p>
                  <img alt="NEW" src="http://localhost:9000/manwol/resources/images/NEW.jpg"  width="48px"> 
                  <img alt="SALE" src="http://localhost:9000/manwol/resources/images/SALE.jpg"  width="48px">
                  <p> 
                 	<small class="material-symbols-outlined" style="font-size: 15px">chat_bubble</small>1264
                 	<small class="material-symbols-outlined" style="font-size: 15px">shopping_cart</small>Cart
                  </p>
               </div>
               
			 <div class="contents1">
                  <img class="re" alt="만월회 음료 원액 베이스 10종(2개입,12개입)" src="http://localhost:9000/manwol/resources/images/만월회 음료 원액 베이스 10종(2개입,12개입).jpg" height="300px" width="300px"> 
                  <h5>만월회 음료 원액 베이스 10종(2개입,12개입)</h5>                 
                  <p class="pay no-margin" style="">3,800원</p>
                  <img alt="NEW" src="http://localhost:9000/manwol/resources/images/NEW.jpg"  width="48px"> 
                  <img alt="BEST" src="http://localhost:9000/manwol/resources/images/BEST.jpg"  width="48px"> 
                  <p>
                 	<small class="material-symbols-outlined" style="font-size: 15px">chat_bubble</small>4824
                 	<small class="material-symbols-outlined" style="font-size: 15px">shopping_cart</small>Cart
                  </p>	
               </div>
			 	
			 	<div class="contents1">
                  <img class="re" alt="[첫 구매고객 500원]만월회 음료 원액 베이스 10종" src="http://localhost:9000/manwol/resources/images/첫 구매고객 500원.jpg" height="300px" width="300px"> 
                  <h5>[첫 구매고객 500원]만월회 음료 원액 베이스 10종</h5>                
                  <p>500원  <del>3,800원</del></p>
                  <img alt="SALE" src="http://localhost:9000/manwol/resources/images/SALE.jpg"  width="48px"> 
                  <img alt="주문폭주" src="http://localhost:9000/manwol/resources/images/주문폭주.jpg"  width="48px">
                  <p> 
                  	<small class="material-symbols-outlined" style="font-size: 15px">chat_bubble</small>295
                 	<small class="material-symbols-outlined" style="font-size: 15px">shopping_cart</small>Cart
                  </p>	
               </div>    
		</div>        

	
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>