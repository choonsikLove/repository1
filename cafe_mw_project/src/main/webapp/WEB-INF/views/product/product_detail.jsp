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

	
body,html{
    width: 100%;
}	

.content{	display: flex;
	 justify-content: center;
	 align-items: center;
	 }
	 
.var{margin:60px 13% 20px 13%; font-size: 12px; color: gray;}
.h{color: gray;}
.a{color: black;}
.jm{
	display: flex;
	 justify-content: center;
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
		display: flex;
	}
	
	
	.btn1{
		display: block;
	    border: 0;
	    padding: 13px 40px;
	    background: #0A2155;
	    font-size: 15px;
	    color: #FFFFFF;
	    cursor: pointer;
	    width: 178px;
	    margin: 15px 10px 10px 0px; 
	}
	
	
	.btn1:hover{
		opacity: 0.7;
		filter:alpha(opacity=75);
	}	
	
	.btn2{
		display: block;
	    padding: 13px 40px;
	    background: #FFFFFF;
	    border: 0.03px solid #BDBDBD;
	    font-size: 15px;
	    color: #000000;
	    cursor: pointer;
	    width: 178px;
	    margin: 15px 10px 10px 0px; 
	}
		
	.btn2:hover{
		border-color: #000;
	}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<table class="content">
	<tr>
		<td>
			<div class="var">
				<a href="#" class="h">Home</a>&ensp;>&ensp;<a href="http://localhost:9000/manwol/product_all.do" class="a">ALL</a>   
			</div>
		</td>
	</tr>
	
	<tr>
	<td class="jm">
  		<div class="img">
  			<img alt="만월회 5종 선물세트" src="http://localhost:9000/manwol/resources/images/만월회 5종 선물세트.jpg" height="600px" width="600px">
  		</div>
  	</td>
  	
  	<td>
  		<div class="jmhk">
  			<div class="k">
  				<p>만월회 5종 선물세트
  				<img alt="NEW" src="http://localhost:9000/manwol/resources/images/NEW.jpg"  width="48px"> 
                <img alt="주문폭주" src="http://localhost:9000/manwol/resources/images/주문폭주.jpg"  width="48px"> 
  				</p>
  				<p class="k_price">21,000원</p>
  		    </div>
  		    
  		   <div class="k1">
  		   	<p>소중한 지인들에게 선물하고</p>
  		   	<p>센스 있는 사람으로 거듭나기!</p>
  		   	<p>5종 선물세트로 <b>더 고급스러운</b> 선물하세요.</p>
  		   </div>
  		   
  		   <div class="l">
  		   <strong>📦 배송</strong>
  		   <p>주문 후 <b>영업일 기준 3일 이내</b> 발송됩니다.</p>
  		   <p>종이 아이스팩 + 아이스박스 (<b>아이스팩 안에는 물만 들어있으니</b> 가위로 모서리 부분을 잘라 싱크대</p>
  		   <p>또는 배수구에 버려주신 후 종이는 <b>분리수거</b> 해주시면 됩니다.)</p>
  		   <br>
  		   <br>
  		   <strong>🕘 보관방법 및 유통기한</strong>
  		   <p>신선식품으로 제품 수령 후<b>냉장 보관(0-5℃)</b>은 필수이며, 유통기한은 <b>수령일로부터 8주(단호박,</b></p>
  		   <p><b>쑥4주)</b>입니다. 패키지 하단에 유통기한이 별도로 표기되어있습니다.</p>
  		   </div>
  		   <br>
  		   <br>
  		   
  		   <div class="n">
  		   <p><b>원산지</b><span>&emsp;대한민국</span></p>
  		   <p><b>구매혜택</b><span>&emsp;0 만월포인트 적립예정<span class="material-symbols-outlined" style="font-size: 15px">help</span></span></p>
  		   <p><b>배송 방법</b><span>&emsp;택배</span></p>
  		   <p><b>배송비</b><span>&emsp;3,000원 (30,000원 이상 무료배송) ㅣ 도서산간 배송비 추가<span class="material-symbols-outlined" style="font-size: 15px">help</span></span></p>
  		   </div>
  		   <br>
  		   <br>

  			<h4>5종 선물세트*</h4>
  			<select class="se1">
  				<option disabled selected>5종 선물세트(필수)</option>
  				<option>베스트 5종세트</option>
  				<option>초보자 10종세트</option>
  				<option>내맘대로 5종세트</option>
  			</select>
  			
  			<h4>내맘대로 5종세트 구매하신 분만 선택해주세요(5개)</h4>
  			<select class="se1">
  				<option disabled selected>내맘대로 5종세트 구매하신 분만 선택해주세요(5개)(선택)</option>
  				<option>베스트 5종세트</option>
  				<option>초보자 10종세트</option>
  				<option>내맘대로 5종세트</option>
  			</select> 
  			
  			<h4>추가상품</h4>
  			<select class="se1">
  				<option disabled selected>추가상품(선택)</option>
  				<option>만월쇼핑백 2,000원</option>
  				<option>초보자 10종세트</option>
  				<option>내맘대로 5종세트</option>
  			</select>	
  			
  			<div class="button">	 		
  			<button class="btn1" type="button">구매하기</button>
  			<button class="btn2" type="button">장바구니</button>
  			<button class="btn2" type="button"><span class="material-symbols-outlined" style="font-size: 15px">favorite</span> 15</button>
  			</div>
  		</div> 
	</td>
	<tr>
	</table>
	
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>