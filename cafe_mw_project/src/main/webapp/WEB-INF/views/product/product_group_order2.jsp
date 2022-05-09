<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">
body, html {
	width: 100%;
}

table {
	margin-right: auto;
	margin-left: auto;
}


/* 이미지,가격,설명 */ 
.product{ 
	width:1270px;
	display:flex;
    justify-content: center;
    align-items: center;
}    
    
/* 카테고리 */ 
.var{margin:60px 0 20px 0; font-size: 12px; cursor:pointer;}   
.home{color: gray;}
.home:hover{color: black;}
.all{color: gray;}
.all:hover{color: black;}
.group{color: black;}


/* 상품 이미지 */
.img{
   display: flex;
    justify-content: center;
   }
.img_detail{padding-right: 100px;}
.pd{margin-bottom: 170px;}


/* 상품 상세*/
.product_detail{
	padding: 0 0 20px 0; 
	border-bottom: 1px solid lightgray;
}
.product_detail p{
	font-size: 22px; 
	margin-bottom: 5px;
}
.product_detail_price{
	color: #0042A9;
}
.product_detail_text{
	padding: 20px 0 20px 0; 
	border-bottom: 1px solid lightgray; 
	font-size: 14px;
}
.product_detail_text2{
	font-size: 14px; 
	margin-top: 20px;
}
.product_detail_text2 strong{
	color: #0A2155;
}
.product_detail_text3{
	font-size: 14px;
}
.product_detail_text3 p{
	margin-bottom: 5px;
}
.product_detail_option{
	margin-bottom: 20px; 
	width: 550px; 
	height: 30px;
}
h4{font-size: 14px; margin-bottom: 5px;}

/* 이게 뭔지 궁금해?
.se1{
	margin-bottom: 20px; 
	width: 550px; 
	height: 30px;
}
*/

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
	width: 562px;
}		
.btn:hover{
	border-color: #000;
}


/*3개의 카테고리 이미지들..*/
.detail{width: 1270px; padding-left: 2px;}
.category{
	  cursor: pointer;	
      font-size:14px; color: #D2D2D2; 
      display: flex;
       justify-content: center;
       padding: 50px 0 20px 0;
       border-bottom: 1px solid #BDBDBD;       
}
.category strong{
      border-radius:100px; font-size: 10px; 
      background-color: #8BBCFF; padding: 2px; 
      color: black; margin: 0 5px;
}
.category_a:hover{color: black;}
.category_b:hover{color: black;}
.category_c:hover{color: black;}

/*카카오톡 주문창*/
.order{padding: 10px 500px 20px 10px;  font-size: 14px; border: 1px solid #BDBDBD;}	
}
.cacao{cursor:pointer;}
.cacao:hover {
	cursor:pointer;	
}
.delivery{
   text-align: left;  width: 1270px;
   border-bottom:border: 1px solid #BDBDBD;
} 
  

/*상품정보 제공고시*/
.table{
	width:1270px;
   border-spacing:0; 
   font-size: 12px;
}
.table th, .table td{
	padding: 10px 10px;
	border-bottom: 1px solid #BDBDBD;
}
.table th{
	text-align: left; 
	background-color: #F6F6F6;
	font-style: normal;
	font-weight: normal;
	}


/*구매평*/
.Purchasing_review{text-align: left; width:1270px;border-spacing:0;  padding: 45px 0 100px 0;}
.Purchasing_review strong{font-size: 18px; font-weight: bold;}
.Purchasing_review_t{margin: 30px 0 10px 0; font-size: 13px;}
.Purchasing_review span{
	border-radius:100px; 
	font-size: 13px; 
    background-color:#8BBCFF; 
    border-radius:100px;
    padding: 2px; 
    color: black; 
    margin: 0 5px;
    font-weight: bold;
}
.bt_write{
	display: block;
	border: 0;
	background: #0A2155;
	font-size: 15px;
	color: white;
	cursor: pointer;
	padding: 10px 20px 10px 28px;
	margin-bottom: 35px;
	width: 80px;
}
.bt_write a{color: white;}
.bt_write:hover{ 
		opacity: 0.7;
		filter:alpha(opacity=75);
}
.Purchasing_review_miniphoto p{margin: 10px 0;}
.Purchasing_review_miniphoto span{font-size: 15px;}




</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- content -->
	<table class="content" style="table-layout: fixed;">
		<tr>
			<td>
	<table class="product">
		<tr>
			<td>
				<div class="var">
					<a href="http://localhost:9000/manwol/index" class="home">Home&ensp;>&ensp;</a>  
					<a href="http://localhost:9000/manwol/product_all" class="all">ALL&ensp;>&ensp; </a>
					<a href="http://localhost:9000/manwol/product_group_order2" class="group">단체주문</a>
				</div>
			</td>
		</tr>

		<tr>
			<td class="img">
				<div class="img_detail">
					<img alt="만월회 단체주문"
						src="http://localhost:9000/manwol/resources/images/product/만월회 단체주문.jpg"
						height="600px" width="600px">
				</div>
			</td>

			<td>
				<div class="pd">
					<div class="product_detail">
						<p>만월회 단체주문</p>
						<p class="product_detail_price">가격문의(상세정보 참조)</p>
					</div>

					<div class="product_detail_text">
						<p>특별한 날, 만월회 밀크티와 함께! 괜스레 마음 들뜨는 특별한 그런 날, 만월회를 더해보세요. 환하게</p>
						<p>빛나는 보름달만큼이나 진하고 달콤한 하루가 될 거예요 🌕</p>
					</div>

					<div class="product_detail_text2">
						<h4>📦 배송</h4>
						<p>
							종이 아이스팩 + 아이스박스 (<b>아이스팩 안에는 물만 들어있으니</b> 가위로 모서리 부분을 잘라 싱크대
						</p>
						<p>
							또는 배수구에 버려주신 후 종이는 <b>분리수거</b> 해주시면 됩니다.)
						</p>
						<br> <br>
						<h4>🕘 보관방법 및 유통기한</h4>
						<p>
							신선식품으로 제품 수령 후<b>냉장 보관(0-5℃)</b>은 필수이며, 유통기한은 <b>수령일로부터 8주(단호박,</b>
						</p>
						<p>
							<b>쑥4주)</b>입니다. 패키지 하단에 유통기한이 별도로 표기되어있습니다.
						</p>
					</div>
					<br> <br>

					<div class="product_detail_text3">
						<p>
							<b>구매혜택</b><span>&emsp;0 만월포인트 적립예정<span
								class="material-symbols-outlined" style="font-size: 15px">help</span></span>
						</p>
						<p>
							<b>배송 방법</b><span>&emsp;택배</span>
						</p>
						<p>
							<b>배송비</b><span>&emsp;3,000원 (30,000원 이상 무료배송) ㅣ <small>도서산간
									배송비 추가</small><span class="material-symbols-outlined"
								style="font-size: 15px">help</span></span>
						</p>
					</div>
					<br> <br>

					<div class="button">
						<button class="btn" type="button">
							<span class="material-symbols-outlined" style="font-size: 15px">favorite</span><strong style="font-size: 14px;">1</strong>
						</button>
					</div>
				</div>
			</td>
		</tr>
		
</table>
</td>
</tr>

		<tr>
			<td>
				<table style="text-align: center;" class="detail" >
					<tr>
						<td>
							<div class="category">
								<span class="category_a">&emsp;&emsp;상세정보</span>&emsp;&emsp;&emsp;/&emsp;&emsp;&emsp;&emsp;
								<span class="category_b">구매평</span><strong style="border-radius:100%; padding: 2px 5px; ">0</strong>&emsp;&emsp;&emsp;/&emsp;&emsp;&emsp;
								<span class="category_c">Q&A</span><strong style="border-radius:100%; padding: 2px 5px; ">0</strong>
							</div>
						</td>
					</tr>
					
					<tr>
						<td>
							<div>
								<div>
									<img style=" padding-top:15px;" alt="단체주문 이미지" src="http://localhost:9000/manwol/resources/images/product/주문전.jpg">
								</div>
								<div>
									<img style=" padding-top:10px;" alt="단체주문 이미지" src="http://localhost:9000/manwol/resources/images/product/단체주문1.jpg">
								</div>
								<div style="margin-bottom: 15px;">
									<img alt="단체주문 이미지" src="http://localhost:9000/manwol/resources/images/product/단체주문2.jpg">
								</div>
							</div>
						</td>
					</tr>

					<tr>
						<td>
							<table>
								<tr>
									<th>
									</th>
								</tr>	
							</table>
						</td>
					</tr>

					<tr>
						<td>
							<table class="order_1" >
							<tr>
								<td>
							
								<div class="order" style="text-align: left;">
									<p style="margin-bottom:7px;"> 1. 고객명:</p>
									<p style="margin-bottom:7px;"> 2. 연락처:</p>
									<p style="margin-bottom:7px;"> 3. 제품 수령 주소:</p>
									<p style="margin-bottom:7px;"> 4. 원하시는 상품 및 수량:</p>
									<p style="margin-bottom:7px;"> 5. 스티커 제작 유무:</p>
									<p style="margin-bottom:7px;"> 6. 원하시는 수령일시:</p>
								</div>
								</td>
								</tr>
								</table>
								</td>
								</tr>
						<tr>
						<td>	
							<div>	
								<a href="#" class="cacao">
									<img alt="카카오톡 주문 버튼" src="http://localhost:9000/manwol/resources/images/product/카카오톡.jpg">
								</a>
							</div>
							
							<div >
								<img  alt="단체주문 이미지" src="http://localhost:9000/manwol/resources/images/product/단체주문3.jpg">
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
<tr>
			<td>
				<table class="table" >
					<tr>
						<td style="border: none;  font-size: 15px;"><p style="margin-left:-10px">상품정보 제공고시</p></td>
					</tr>
					<tr>
						<th style="border-top:1px solid #BDBDBD ">제품명</th>
						<td style="border-top:1px solid #BDBDBD ">만월회 음료 원액 베이스 9종</td>
					</tr>

					<tr>
						<th>식품의 유형</th>
						<td>액상차(살균제품), 당류가공품(살균제품), 커피(살균제품)</td>
					</tr>

					<tr>
						<th>생산자 및 소재지</th>
						<td>㈜만월회, 경기도 용인시 기흥구 서천로201번길 14(프리미엄원희캐슬 기흥서천 355호 농서동)</td>
					</tr>
					<tr>
						<th>제품명</th>
						<td>만월회 음료 원액 베이스 9종</td>
					</tr>
					<tr>
						<th>제조연월일, 유통기한</th>
						<td>◾️ 유통기한: 제조일로부터 냉장보관 8주 이내 (제품별도 표기) (단호박,쑥, 리얼딸기 4주 이내)</td>
					</tr>
					<tr>
						<th>포장단위별 내용물의 용량(중량), 수량</th>
						<td>◾️ 2포 세트 / 12포 세트 (1포당 40ml)</td>
					</tr>
					<tr>
						<th>원재료명 및 함량</th>
						<td>
							<p>◾️ 밀크티: 정제수, 고형차(미얀마산/넌데어리크리머, 설탕, 홍차분말7%), 홍차추출액(홍차1%:폴란드산) [우유 함유]</p>
							<p>◾️ 말차: 정제수, 백설탕, 말차(유기농 녹차잎100%, 국내산, 제주)10%</p>
							<p>◾️ 자몽샤워: 과채음료[청포도농축액:칠레산, 정백당, 벌꿀, (산도조절제:구연산), 메타인산나트륨, 사양벌꿀], 라임농축액[이탈리아산/라임주스5배농축, 천연향료(라임향)], 자몽농축액25%(베트남산),</p>
							<p>청사과시럽[말레이시아산/합성향료(그린애플향), 그린애플주스농축, 착색료(식용색소황색제4호, 청색제1호)]</p>
							<p>◾️ 민트초코: 정제수, 민트초코파우더50%[정백당, 코코아분말(싱가폴산), 탈지분유, 유청분말, 포도당], 민트시럽[말레이시아산/백설탕, 천연향료0.4%(페퍼민트향), 착색료(식용색소황색제4호, 청색제</p>
							<p>1호)] [우유함유]</p>
							<p>◾️ 악마초코: 정제수, 다크초코라떼파우더20%[코코아분말42%(네델란드산), 초코렛분말3.5%(벨기에산), 정백당, 유청분말, 아세설팜칼륨], 코코아분말13%(프랑스산), 백설탕 [우유(유청분말)함유]</p>
							<p>◾️ 그린티초코: 정제수, 백설탕, 코코아분말(프랑스산)5%, 호지차분말(국내산, 제주)5%, 당류가공품(미국산/전화당, 코코아분말 13%, 오레가노추출물) [대두 함유]</p>
							<p>◾️ 콜드브루: 더치커피 추출액[고형분 함량25%(에티오피아산)], 정제수</p>
							<p>◾️ 쑥: 정제수, 백설탕, 쑥가루12%(국내산)</p>
							<p>◾️ 단호박: 정제수, 호박페이스트 28%[밤호박퓨레50%(국내산), 백두앙금(외국산:미국,캐나다,미얀마), 정제염], 백설탕, 서양호박분말8%(단호박100%:중국산), 호박가루6%[단호박분말25%(국내산),</p>
							<p>무수포도당, 결정과당, 덱스트린, 식물성크림] [우유, 대두 함유]</p>
							<p>◾️ 리얼딸기: 가당냉동딸기[국내산/딸기(국내산) 80%, 설탕, 구연산], 가당딸기[국내산/딸기(이집트산 80%, 국내산 20%) 80%, 설탕, 레몬농축액(레몬 100%, 아르헨티나산), 설탕]</p>
						</td>
					</tr>
					<tr>
						<th>영양성분</th>
						<td>
							<p>40ml (1포) 기준</p>
							<p>◾️ 밀크티: 열량 102kcal, 나트륨 30mg(2%), 탄수화물 19g(6%), 당류 8g(8%), 지방 2.8g(5%), 트랜스지방 0g(-), 포화지방 2.3g(15%), 콜레스테롤 0mg(0%), 단백질 0g(0%)</p>
							<p>◾️ 말차: 열량 105kcal, 나트륨 0mg(0%), 탄수화물 24g(7%), 당류 20g(20%), 지방 0g(0%), 트랜스지방 0g(-), 포화지방 0g(0%), 콜레스테롤 0mg(0%), 단백질 1g(2%)</p>
							<p>◾️ 자몽샤워: 열량 70kcal, 나트륨 15mg(1%), 탄수화물 17g(5%), 당류 17g(17%), 지방 0g(0%), 트랜스지방 0g(-), 포화지방 0g(0%), 콜레스테롤 0mg(0%), 단백질 0g(0%)</p>
							<p>◾️ 민트초코: 열량 110kcal, 나트륨 15mg(1%), 탄수화물 23g(8%), 당류 17g(17%), 지방 0.7g(1%), 트랜스지방 0g(-), 포화지방 0.5g미만(3%), 콜레스테롤 0mg(0%), 단백질 2g(4%)</p>
							<p>◾️ 악마초코: 열량 85kcal, 나트륨 10mg(1%), 탄수화물 14g(4%), 당류 8g(8%), 지방 2g(4%), 트랜스지방 0g(-), 포화지방 1.3g(9%), 콜레스테롤 0mg(0%), 단백질 2g(4%)</p>
							<p>◾️ 그린티초코: 열량 85kcal, 나트륨 0mg(0%), 탄수화물 19g(6%), 당류 15g(15%), 지방 0.6g(1%), 트랜스지방 0g(-), 포화지방 0.5g미만(3%), 콜레스테롤 0mg(0%), 단백질 1g(2%)</p>
							<p>◾️ 콜드브루: 열량 5kcal, 나트륨 0mg(0%), 탄수화물 1g미만(0%), 당류 0g(0%), 지방 0g(0%), 트랜스지방 0g(-), 포화지방 0g(0%), 콜레스테롤 0mg(0%), 단백질 0g(0%)</p>
							<p>◾️ 쑥: 열량 80kcal, 나트륨 55mg(3%), 탄수화물 19g(6%), 당류 13g(13%), 지방 0g(0%), 트랜스지방 0g(-), 포화지방 0g(0%), 콜레스테롤 0mg(%), 단백질 1g미만(0%)</p>
							<p>◾️ 단호박: 열량 70kcal, 나트륨 0mg(0%), 탄수화물 15g(5%), 당류 4g(4%), 지방 0g(0%), 트랜스지방 0g(-), 포화지방 0g(0%), 콜레스테롤 0mg(0%), 단백질 1g미만(2%)</p>
							<p>◾️ 리얼딸기: 열량 45kcal, 나트륨 0mg(0%), 탄수화물 9mg(3%), 당류 9g(9%), 지방 0.6g(1%), 트랜스지방 0g(-), 포화지방 0g(0%), 콜레스테롤 0mg(0%), 단백질 0g(0%)</p>
						</td>
					</tr>
					<tr>
						<th>유전자변형식품에 해당하는 경우의 표시</th>
						<td>해당없음</td>
					</tr>
					<tr>
						<th>소비자안전을 위한 주의사항</th>
						<td>
							<p>40ml (1포) 기준</p>
							<p>◾️ 밀크티: 고카페인 함유 120.6mg | 말차: 고카페인 함유 97mg | 악마초코: 고카페인 함유 16mg | 그린티초코: 고카페인 함유 17mg | 콜드브루: 고카페인 함유 91mg</p>
							<p>◾️ 본 제품은 우유, 대두, 땅콩, 기타 견과류를 사용한 제품과 같은 제조시설에서 제조하고 있습니다.</p>
							<p>◾️ 받는 즉시 냉장보관 하시고, 스틱은 개봉 후 즉시 섭취해주세요.</p>
						</td>
					</tr>
					<tr>
						<th>
							<p>수입식품에 해당하는 경우 “수입식품안전관리</p>
							<p>특별법에 따른 수입신고를 필함”의 문구</p>
						</th>
						<td>해당없음</td>
					</tr>
					<tr>
						<th style="border-bottom: 1px solid #BDBDBD">소비자상담 관련 전화번호</th>
						<td style="border-bottom: 1px solid #BDBDBD">070-7714-7002</td>
					</tr>
				</table>
			</td>
		</tr>
		

		<tr>
			<td>
			<div class="Purchasing_review" >
				<table  class="Purchasing_review">
					<tr>
						<td colspan="2">
							<div class="Purchasing_review_list">
								<p>
									<strong>구매평</strong><span style="border-radius:100%; padding: 2px 5px; font-size: 12px;">0</span>
								</p>
								<p style="margin: 30px 0 20px 0;" class="Purchasing_review_t">상품을 구매하신 분들이 작성한 리뷰입니다.</p>
								<div class="bt_write">
									<a href="write.html" class="on">구매평 작성</a>
								</div>
								<p style=" color: #949494; cursor:pointer; font-size: 15px;"><small class="material-symbols-outlined" style="font-size: 18px; color: #949494">image</small>  포토 구매평만 보기</p>
							</div>
						</td>
					</tr>
					
					<tr class="Purchasing_review_miniphoto">
						<td class="miniphoto1">
							<div style="text-align: center; border-top: 1.2px solid #BDBDBD; margin-top:10px; padding: 50px 0; color: #BDBDBD; font-size: 14px;">
								<p>등록된 구매평이 없습니다.</p>
							</div>
						</td>
					</tr>
				</table>
				</div>
			</td>
		</tr>
		</table>



	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>