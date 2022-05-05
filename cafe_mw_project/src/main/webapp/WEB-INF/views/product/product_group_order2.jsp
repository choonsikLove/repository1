<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/product.css">
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

<style type="text/css">

	.var{margin:60px 0 20px 15.5%; font-size: 12px; color: gray;}
	.h{color: gray;}
	.a{color: black;}
	.jm{
		display: flex;
		 justify-content: center;
		 margin-bottom: 60px;
		}
	.img{padding: 0 100px;}
	.k{padding: 0 0 20px 0; border-bottom: 1px solid lightgray;}
	.k p{font-size: 22px; margin-bottom: 5px;}
	.k_price{color: #0042A9;}
	.k1{padding: 20px 0 20px 0; border-bottom: 1px solid lightgray; font-size: 14px; }
	.l{font-size: 14px; margin-top: 20px;}
	.l strong{color: #0A2155;}
	.n{font-size: 14px;}
	.n p{margin-bottom: 5px;}
	h4{font-size: 14px; margin-bottom: 5px;}
	.se1{margin-bottom: 20px; width: 550px; height: 30px;}
	
	.button{
	 margin-top: -20px;
	}
	
	.btn{
		display: block;
	    padding: 13px 40px;
	    background: #FFFFFF;
	    border: 0.01px solid #BDBDBD;
	    font-size: 15px;
	    color: #000000;
	    cursor: pointer;
	    width: 550px;
	}
		
	.btn:hover{
		border-color: #000;
	}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="var">
		<a href="#" class="h">Home</a>  >   <a href="http://localhost:9000/manwol/product_all.do" class="h">ALL</a>  >   <a href="http://localhost:9000/manwol/product_group_order2.do" class="a">단체주문</a>   
	</div>
	
	<section class="jm">
  		<div class="img">
  			<img alt="만월회 단체주문" src="http://localhost:9000/manwol/resources/images/만월회 단체주문.jpg" height="600px" width="600px">
  		</div>
  	
  		<div class="jmhk">
  			<div class="k">
  				<p>만월회 단체주문</p>
  				<p class="k_price">가격문의(상세정보 참조)</p>
  		    </div>
  		    
  		   <div class="k1">
  		   	<p>특별한 날, 만월회 밀크티와 함께! 괜스레 마음 들뜨는 특별한 그런 날, 만월회를 더해보세요. 환하게</p>
  		   	<p>빛나는 보름달만큼이나 진하고 달콤한 하루가 될 거예요 🌕</p>
  		   </div>
  		   
  		   <div class="l">
  		   <h4>📦 배송</h4>
  		   <p>종이 아이스팩 + 아이스박스 (<b>아이스팩 안에는 물만 들어있으니</b> 가위로 모서리 부분을 잘라 싱크대</p>
  		   <p>또는 배수구에 버려주신 후 종이는 <b>분리수거</b> 해주시면 됩니다.)</p>
  		   <br>
  		   <br>
  		   <h4>🕘 보관방법 및 유통기한</h4>
  		   <p>신선식품으로 제품 수령 후<b>냉장 보관(0-5℃)</b>은 필수이며, 유통기한은 <b>수령일로부터 8주(단호박,</b></p>
  		   <p><b>쑥4주)</b>입니다. 패키지 하단에 유통기한이 별도로 표기되어있습니다.</p>
  		   </div>
  		   <br>
  		   <br>
  		   
  		   <div class="n">
  		   <p><b>구매혜택</b><span>&emsp;0 만월포인트 적립예정<span class="material-symbols-outlined" style="font-size: 15px">help</span></span></p>
  		   <p><b>배송 방법</b><span>&emsp;택배</span></p>
  		   <p><b>배송비</b><span>&emsp;3,000원 (30,000원 이상 무료배송) ㅣ <small>도서산간 배송비 추가</small><span class="material-symbols-outlined" style="font-size: 15px">help</span></span></p>
  		   </div>
  		   <br>
  		   <br>

  			<div class="button">	 		
  			<button class="btn" type="button"><span class="material-symbols-outlined" style="font-size: 15px">favorite</span>1</button>
  			</div>
  		</div> 
	</section>
	
  <!--  
   <aside class="aside">
  	 	<h4>배송안내</h4><br>
   
 		<li>우체국택배로 전국 어디든 배송해드립니다(익일 배송이 어려운 제주도 및 산간지역 제외)<br></li>
	    <li>꽃은 묶음배송이 불가하여, 1개당 배송비가 각각 추가됩니다<br></li>
	    <li>택배는 지역마다 도착시간이 다르므로, 시간을 지정할 수 없습니다<br></li>
	    <li>꽃 발송 당일에 운송장번호와 꽃 안내를 문자로 보내드립니다<br></li>
 		<img src="img/배송.jpg" width="1100px" height="700"> <br><br>
   		<br><br><br>
   		<img src="img/정기배송1.jpg" width="900px" height="600"> <br><br>
   		<img src="img/정기배송2.jpg" width="900px" height="600">
   </aside>
   -->

	
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>