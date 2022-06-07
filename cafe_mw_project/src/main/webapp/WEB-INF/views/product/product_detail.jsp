<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/product_detail.css">
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/for_product_button_only.css">
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/product_detail.js"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- content -->
	<input type="hidden" value="${vo.pnum }" id="for_cart">
	<input type="hidden" value="${vo.pstock }" id="stock_for_cart">
	<input type="hidden" value="${memail}" id="memail_for_cart">
	<table class="content" style="table-layout: fixed;">
		<tr>
			<td>
				<table class="product">
					<tr>
						<td>
							<div class="var">
								<a href="http://localhost:9000/manwol/index" class="home">Home&ensp;>&ensp;</a> 
								<a href="http://localhost:9000/manwol/product_all" class="all">ALL</a>
								<%--나중에 --%>
							</div>
						</td>
					</tr>

					<tr>
						<td class="img">
							<div class="img_detail">
								<img alt="상품 이미지"
									src="http://localhost:9000/manwol/resources/upload/${vo.pmainsfile }"
									height="600px" width="600px">
							</div>
						</td>

						<td>
							<div>
								<div class="product_detail">
									<p>
										${vo.pname }
										<c:choose>
											<c:when test="${tagimage1 == '새상품'}">
												<img alt="새 상품" src="http://localhost:9000/manwol/resources/images/product/NEW.jpg"
													width="48px">
											</c:when>
											<c:when test="${tagimage1 == '주문폭주상품'}">
												<img alt="주문 폭주 상품" src="http://localhost:9000/manwol/resources/images/product/주문폭주.jpg"
													width="48px">
											</c:when>
											<c:when test="${tagimage1 == '세일상품'}">
												<img alt="세일 상품" src="http://localhost:9000/manwol/resources/images/product/SALE.jpg"
													width="48px">
											</c:when>
											<c:when test="${tagimage1 == '선물추천상품' }">
												<img alt="선물 추천 상품" src="http://localhost:9000/manwol/resources/images/product/선물추천.jpg"
													width="48px">
											</c:when>
										</c:choose>
										<c:choose>
											<c:when test="${tagimage2 == '새상품'}">
												<img alt="새 상품" src="http://localhost:9000/manwol/resources/images/product/NEW.jpg"
													width="48px">
											</c:when>
											<c:when test="${tagimage2 == '주문폭주상품'}">
												<img alt="주문 폭주 상품" src="http://localhost:9000/manwol/resources/images/product/주문폭주.jpg"
													width="48px">
											</c:when>
											<c:when test="${tagimage2 == '세일상품'}">
												<img alt="세일 상품" src="http://localhost:9000/manwol/resources/images/product/SALE.jpg"
													width="48px">
											</c:when>
											<c:when test="${tagimage2 == '선물추천상품' }">
												<img alt="선물 추천 상품" src="http://localhost:9000/manwol/resources/images/product/선물추천.jpg"
													width="48px">
											</c:when>
										</c:choose>
									</p>
									<c:choose>
										<c:when test="${vo.psaleprice == 0}">
											<p class="product_detail_price">${vo.pprice }</p>원
										</c:when>
										<c:otherwise>
											<p class="former_price">${vo.pprice }원</p>
											<p class="product_detail_price">${vo.psaleprice }</p>원
										</c:otherwise>
									</c:choose>
								</div>
								<div class="product_detail_text">
									${vo.ptext }
								</div>
								<c:if test="${vo.pcategory == 'base'}">
									<div class="product_detail_text2">
										<strong>📦 배송</strong>
										<p>주문 후 <b>영업일 기준 3일 이내</b> 발송됩니다.</p>
										<p>종이 아이스팩 + 아이스박스 (<b>아이스팩 안에는 물만 들어있으니</b> 가위로 모서리 부분을 잘라 싱크대 또는 
										배수구에 버려주신 후 종이는 <b>분리수거</b>해주시면 됩니다.)</p>
										
										<br> <br> <strong>🕘 보관방법 및 유통기한</strong>
										<p>신선식품으로 제품 수령 후<b>냉장 보관(0-5℃)</b>은 필수이며, 유통기한은 <b>수령일로부터8주(단호박,</b></p>
										<p><b>쑥4주)</b>입니다. 패키지 하단에 유통기한이 별도로 표기되어있습니다.</p>
									</div>
								</c:if>
								<br>
								<br>
								<div>
									<button type ="button" onclick="fnCalCount('m');" class="qntButton">-</button>
									<input class="c_qnt" name="qnt" type="text" value="0" readonly="readonly"></input>
								    <button type="button" onclick="fnCalCount('p');" class="qntButton">+</button>
								    <p>총 주문 금액: <span id="qnt_price">0</span>원</p>
								</div>

								<div class="product_detail_text3">
									<p>
										<b>원산지</b><span>&emsp;대한민국</span>
									</p>
									<p>
										<b>구매혜택</b><span>&emsp;0 만월포인트 적립예정<span
											class="material-symbols-outlined" style="font-size: 15px">help</span></span>
									</p>
									<p>
										<b>배송 방법</b><span>&emsp;택배</span>
									</p>
									<p>
										<b>배송비</b><span>&emsp;3,000원 (30,000원 이상 무료배송) ㅣ 도서산간
											배송비 추가<span class="material-symbols-outlined"
											style="font-size: 15px">help</span>
										</span>
									</p>
								</div>
								<br> <br>

								<h4>5종 선물세트*</h4>
								<select class="product_detail_option">
									<option disabled selected>5종 선물세트(필수)</option>
									<option>베스트 5종세트</option>
									<option>초보자 10종세트</option>
									<option>내맘대로 5종세트</option>
								</select>

								<h4>내맘대로 5종세트 구매하신 분만 선택해주세요(5개)</h4>
								<select class="product_detail_option">
									<option disabled selected>내맘대로 5종세트 구매하신 분만
										선택해주세요(5개)(선택)</option>
									<option>베스트 5종세트</option>
									<option>초보자 10종세트</option>
									<option>내맘대로 5종세트</option>
								</select>

								<h4>추가상품</h4>
								<select class="product_detail_option">
									<option disabled selected>추가상품(선택)</option>
									<option>만월쇼핑백 2,000원</option>
									<option>초보자 10종세트</option>
									<option>내맘대로 5종세트</option>
								</select>

								<div class="button">
									<a href="http://localhost:9000/manwol/payment"><button class="btn1" type="button">구매하기</button></a>
									<button class="btn2" type="button" id="cart_button">장바구니</button>
									<button class="btn3" type="button">
										<span class="material-symbols-outlined"
											style="font-size: 15px">favorite</span> 15
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
				<table class="photopyong">
					<tr>
						<td>
							<p>포토구매평(32)</p>
						</td>

						<td align="right">
							<p>
								<a href="#"><small>더보기</small> </a>
								<button class="photopyong_more"><</button>
								<button class="photopyong_more">></button>
							</p>
						</td>
					</tr>



					<tr>
						<td>
							<div class="miniphoto">
								<p class="star_img">★★★★★</p>
								<div style="display: flex;">
									<div>
										<p>선물용으로 딱이에요 구성도 좋고 예쁨.. 근데 기스가 좀 심하게 난채로 와서 아</p>
										<p>쉬웠어요ㅜ</p>
									</div>
									<div class="miniphoto_img">
										<img alt="포토구매평1"
											src="http://localhost:9000/manwol/resources/images/product/포토구매평1.png"
											width="100px" height="100px">
									</div>
								</div>
							</div>

						</td>
						<td>
							<div class="miniphoto1">
								<p class="star_img">★★★★★</p>
								<div style="display: flex;">
									<div>
										<p>친구에게 생일선물로 주려고 샀습니다! 맛 종류가 다양한데 다섯가지 맛을 직접</p>
										<p>선택할 수 있는게 가장 좋았네요, 민트초코를 좋아하는 친구라 민초만 두개 넣었</p>
										<p style="display: flex;">습니다. 친구가 원래도 좋아하는 가게라고..</p>
									</div>
									<div class="miniphoto_img">
										<img alt="포토구매평2"
											src="http://localhost:9000/manwol/resources/images/product/포토구매평2.png"
											width="100px" height="100px">
									</div>
								</div>
							</div>
						</td>
					</tr>

					<tr>
						<td>
							<div class="miniphoto">
								<p class="star_img">★★★★★</p>
								<div style="display: flex;">
									<div>
										<p>요즘 카페 말차도 맛이 천차만별이라 씁쓸하고 혀에 남는 말차맛을 되게 좋아하</p>
										<p>는데 만월회가 너무 정확하게 표현되서 맛있어요 ㅠㅠ 그린티+샷추가 조합으로</p>
										<p>먹는데 말모...너무 맛있어요 집에서 만들어 ..</p>
									</div>
									<div class="miniphoto_img">
										<img alt="포토구매평3"
											src="http://localhost:9000/manwol/resources/images/product/포토구매평3.png"
											width="100px" height="100px">
									</div>
								</div>
							</div>
						</td>
						<td>
							<div class="miniphoto1">
								<p class="star_img">★★★★★</p>
								<div style="display: flex;">
									<div>
										<p>생일선물로 줬는데 만족했대요 감사합니다</p>
									</div>
									<div class="miniphoto_img1">
										<img alt="포토구매평4"
											src="http://localhost:9000/manwol/resources/images/product/포토구매평4.png"
											width="100px" height="100px">
									</div>
								</div>
							</div>
						</td>

					</tr>
				</table>
			</td>
		</tr>


		<tr>
			<td>
				<table style="text-align: center;" class="detail">
					<tr>
						<td>
							<div class="category">
								<span class="category_a">&emsp;&emsp;상세정보</span>&emsp;&emsp;&emsp;/&emsp;&emsp;&emsp;&emsp;
								<span class="category_b">구매평</span><strong>75</strong>&emsp;&emsp;&emsp;/&emsp;&emsp;&emsp;
								<span class="category_c">Q&A</span><strong>19</strong>
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>	
		
		<tr>
			<td>
				<div class="sub_images_div">
					<c:if test="${vo.psfile1 != null}">
						<img class="sub_images" src="http://localhost:9000/manwol/resources/upload/${vo.psfile1 }">
					</c:if>
					<c:if test="${vo.psfile2 != null}">
						<img class="sub_images" src="http://localhost:9000/manwol/resources/upload/${vo.psfile2 }">
					</c:if>
					<c:if test="${vo.psfile3 != null}">
						<img class="sub_images" src="http://localhost:9000/manwol/resources/upload/${vo.psfile3 }">
					</c:if>
					<c:if test="${vo.psfile4 != null}">
						<img class="sub_images" src="http://localhost:9000/manwol/resources/upload/${vo.psfile4 }">
					</c:if>
					<c:if test="${vo.psfile5 != null}">
						<img class="sub_images" src="http://localhost:9000/manwol/resources/upload/${vo.psfile5 }">
					</c:if>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<table class="delivery"
					style="border-bottom: 1px solid #BDBDBD; margin-top: 18px">
					<tr>
						<th>FRESH</th>
					</tr>

					<tr>
						<td><br>
							<p>- 종이 아이스팩 + 아이스박스&nbsp;</p>
							<p>(아이스팩 안에는 물만 들어있으니 가위로 모서리 부분을 잘라 싱크대 또는 배수구에 버려주신 후 종이는
								분리수거 해주시면 됩니다.)</p>
							<p>- 수령 즉시 냉장보관 (0~5℃)</p>
							<p>- 개봉 후 즉시 섭취</p>
							<p>- 제조연월일: 주문 일로부터 2주 이내</p>
							<p>- 유통기한: 수령 일로부터 냉장 보관 8주 이내 (단호박, 쑥 4주 이내) (패키지 하단 유통기한
								참조)</p> <br> <br></td>
					</tr>

					<tr>
						<th>DELIVERY</th>
					</tr>
					<tr>
						<td><br>
							<p>- 배송 지 변경 / 출고일 변경 / 주문 취소는 주문&middot;결제 당일 문의해주셔야 변경
								가능합니다.</p>
							<p>- 배송은 주문 후 영업일 기준 1-3일 소요됩니다.</p>
							<p>- 택배 물량 증가와 택배 사 Hub센터의 상 하차 인력 부족으로 인해 평소보다 2-5일 배송이 늦어질
								수 있습니다.</p> <br> <br></td>
					</tr>

					<tr>
						<th>A/S</th>
					</tr>
					<tr>
						<td><br>
							<p>- 식품 특성 상 배송 완료 후 단순 변심으로 인한 교환 및 환불은 불가 합니다.</p>
							<p>- 배송 받은 제품에 이상이 있는 경우 100% 보상해드립니다.</p>
							<p>- 식품상품에 한해&nbsp; 출고 다음 날 제품이 도착하지 않으면 무조건 새 제품으로 다시
								보내드립니다. (*제주 및 도서 산간지역은 출고 후 2일 이내 미 배송 시)</p>
							<p>- 오 배송/파손/제품 불량의 경우 [송장 사진 1장] + [아이스 박스에 담긴 제품 사진 2장] = 총
								3장의 사진을 홈페이지 1:1문의 혹은 카카오톡 채널(@만월회)로 보내주세요.</p> <br></td>
					</tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table class="table">
					<tr>
						<td style="border: none; font-size: 15px;"><p
								style="margin-left: -10px">상품정보 제공고시</p></td>
					</tr>
					<tr>
						<th style="border-top: 1px solid #BDBDBD;">제품명</th>
						<td style="border-top: 1px solid #BDBDBD;">만월회 음료 원액 베이스 9종</td>
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
							<p>◾️ 밀크티: 정제수, 고형차(미얀마산/넌데어리크리머, 설탕, 홍차분말7%),
								홍차추출액(홍차1%:폴란드산) [우유 함유]</p>
							<p>◾️ 말차: 정제수, 백설탕, 말차(유기농 녹차잎100%, 국내산, 제주)10%</p>
							<p>◾️ 자몽샤워: 과채음료[청포도농축액:칠레산, 정백당, 벌꿀, (산도조절제:구연산), 메타인산나트륨,
								사양벌꿀], 라임농축액[이탈리아산/라임주스5배농축, 천연향료(라임향)], 자몽농축액25%(베트남산),</p>
							<p>청사과시럽[말레이시아산/합성향료(그린애플향), 그린애플주스농축, 착색료(식용색소황색제4호, 청색제1호)]</p>
							<p>◾️ 민트초코: 정제수, 민트초코파우더50%[정백당, 코코아분말(싱가폴산), 탈지분유, 유청분말,
								포도당], 민트시럽[말레이시아산/백설탕, 천연향료0.4%(페퍼민트향), 착색료(식용색소황색제4호, 청색제</p>
							<p>1호)] [우유함유]</p>
							<p>◾️ 악마초코: 정제수, 다크초코라떼파우더20%[코코아분말42%(네델란드산),
								초코렛분말3.5%(벨기에산), 정백당, 유청분말, 아세설팜칼륨], 코코아분말13%(프랑스산), 백설탕
								[우유(유청분말)함유]</p>
							<p>◾️ 그린티초코: 정제수, 백설탕, 코코아분말(프랑스산)5%, 호지차분말(국내산, 제주)5%,
								당류가공품(미국산/전화당, 코코아분말 13%, 오레가노추출물) [대두 함유]</p>
							<p>◾️ 콜드브루: 더치커피 추출액[고형분 함량25%(에티오피아산)], 정제수</p>
							<p>◾️ 쑥: 정제수, 백설탕, 쑥가루12%(국내산)</p>
							<p>◾️ 단호박: 정제수, 호박페이스트 28%[밤호박퓨레50%(국내산),
								백두앙금(외국산:미국,캐나다,미얀마), 정제염], 백설탕, 서양호박분말8%(단호박100%:중국산),
								호박가루6%[단호박분말25%(국내산),</p>
							<p>무수포도당, 결정과당, 덱스트린, 식물성크림] [우유, 대두 함유]</p>
							<p>◾️ 리얼딸기: 가당냉동딸기[국내산/딸기(국내산) 80%, 설탕, 구연산],
								가당딸기[국내산/딸기(이집트산 80%, 국내산 20%) 80%, 설탕, 레몬농축액(레몬 100%, 아르헨티나산),
								설탕]</p>
						</td>
					</tr>
					<tr>
						<th>영양성분</th>
						<td>
							<p>40ml (1포) 기준</p>
							<p>◾️ 밀크티: 열량 102kcal, 나트륨 30mg(2%), 탄수화물 19g(6%), 당류 8g(8%),
								지방 2.8g(5%), 트랜스지방 0g(-), 포화지방 2.3g(15%), 콜레스테롤 0mg(0%), 단백질
								0g(0%)</p>
							<p>◾️ 말차: 열량 105kcal, 나트륨 0mg(0%), 탄수화물 24g(7%), 당류 20g(20%),
								지방 0g(0%), 트랜스지방 0g(-), 포화지방 0g(0%), 콜레스테롤 0mg(0%), 단백질 1g(2%)</p>
							<p>◾️ 자몽샤워: 열량 70kcal, 나트륨 15mg(1%), 탄수화물 17g(5%), 당류
								17g(17%), 지방 0g(0%), 트랜스지방 0g(-), 포화지방 0g(0%), 콜레스테롤 0mg(0%),
								단백질 0g(0%)</p>
							<p>◾️ 민트초코: 열량 110kcal, 나트륨 15mg(1%), 탄수화물 23g(8%), 당류
								17g(17%), 지방 0.7g(1%), 트랜스지방 0g(-), 포화지방 0.5g미만(3%), 콜레스테롤
								0mg(0%), 단백질 2g(4%)</p>
							<p>◾️ 악마초코: 열량 85kcal, 나트륨 10mg(1%), 탄수화물 14g(4%), 당류 8g(8%),
								지방 2g(4%), 트랜스지방 0g(-), 포화지방 1.3g(9%), 콜레스테롤 0mg(0%), 단백질 2g(4%)</p>
							<p>◾️ 그린티초코: 열량 85kcal, 나트륨 0mg(0%), 탄수화물 19g(6%), 당류
								15g(15%), 지방 0.6g(1%), 트랜스지방 0g(-), 포화지방 0.5g미만(3%), 콜레스테롤
								0mg(0%), 단백질 1g(2%)</p>
							<p>◾️ 콜드브루: 열량 5kcal, 나트륨 0mg(0%), 탄수화물 1g미만(0%), 당류 0g(0%),
								지방 0g(0%), 트랜스지방 0g(-), 포화지방 0g(0%), 콜레스테롤 0mg(0%), 단백질 0g(0%)</p>
							<p>◾️ 쑥: 열량 80kcal, 나트륨 55mg(3%), 탄수화물 19g(6%), 당류 13g(13%),
								지방 0g(0%), 트랜스지방 0g(-), 포화지방 0g(0%), 콜레스테롤 0mg(%), 단백질 1g미만(0%)</p>
							<p>◾️ 단호박: 열량 70kcal, 나트륨 0mg(0%), 탄수화물 15g(5%), 당류 4g(4%),
								지방 0g(0%), 트랜스지방 0g(-), 포화지방 0g(0%), 콜레스테롤 0mg(0%), 단백질 1g미만(2%)</p>
							<p>◾️ 리얼딸기: 열량 45kcal, 나트륨 0mg(0%), 탄수화물 9mg(3%), 당류 9g(9%),
								지방 0.6g(1%), 트랜스지방 0g(-), 포화지방 0g(0%), 콜레스테롤 0mg(0%), 단백질 0g(0%)</p>
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
							<p>◾️ 밀크티: 고카페인 함유 120.6mg | 말차: 고카페인 함유 97mg | 악마초코: 고카페인 함유
								16mg | 그린티초코: 고카페인 함유 17mg | 콜드브루: 고카페인 함유 91mg</p>
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
				<table style="margin: 100px 0 30px 15px;">
					<tr>
						<td>
							<div class="container">
								<div class="star">
									<p class="star_img">★★★★★</p>
									<p>
										<strong>4.9</strong>
									</p>
									<p class="star_t">(총 75개의 구매평)</p>
								</div>
								<div class="graph">
									<div class="containergraph_5">
										<p>5점</p>
										<div class="graph_5">
											<span></span>
										</div>
									</div>
									<div class="containergraph_4">
										<p>4점</p>
										<div class="graph_4">
											<span></span>
										</div>
									</div>
									<div class="containergraph_3">
										<p>3점</p>
										<div class="graph_3">
											<span></span>
										</div>
									</div>
									<div class="containergraph_2">
										<p>2점</p>
										<div class="graph_2">
											<span></span>
										</div>
									</div>
									<div class="containergraph_1">
										<p>1점</p>
										<div class="graph_1">
											<span></span>
										</div>
									</div>
								</div>
								<div class="review">
									<p class="review_t">포토 구매평 모아보기</p>
									<div>
										<button class="bt1"><</button>
										<img alt="#"
											src="http://localhost:9000/manwol/resources/images/product/포토구매평1.png"
											width="120px" height="120px;"> <img alt="#"
											src="http://localhost:9000/manwol/resources/images/product/포토구매평2.png"
											width="120px" height="120px;"> <img alt="#"
											src="http://localhost:9000/manwol/resources/images/product/포토구매평3.png"
											width="120px" height="120px;"> <img alt="#"
											src="http://localhost:9000/manwol/resources/images/product/포토구매평4.png"
											width="120px" height="120px;">
										<button class="bt2">></button>
									</div>
								</div>
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<div class="Purchasing_review">
					<table class="Purchasing_review">
						<tr>
							<td colspan="2" style="border: none;">
								<div class="Purchasing_review_list">
									<p>
										<strong>구매평</strong><span style="font-size: 13px;">75</span>
									</p>
									<p style="margin: 30px 0 20px 0;" class="Purchasing_review_t">상품을
										구매하신 분들이 작성한 리뷰입니다.</p>
									<div class="bt_write">
										<a href="write.html" class="on">구매평 작성</a>
									</div>
									<br>
									<p
										style="border-bottom: 1.4px solid black; color: #949494; padding-bottom: 10px;">
										<small class="material-symbols-outlined"
											style="font-size: 18px; color: #949494">image</small> 포토 구매평만
										보기
									</p>
								</div>
							</td>
						</tr>

						<tr class="Purchasing_review_miniphoto">
							<td class="miniphoto1" style="border-top: none;">
								<div>
									<p class="star_img" style="cursor: pointer;">★★★★★</p>
									<p>[옵션]5종 선물세트: 베스트 5종세트</p>
									<p>선물용으로 딱이에요 구성도 좋고 예쁨.. 근데 기스가 좀 심하게 난채로 와서 아쉬웠어요ㅜ</p>
									<img alt="포토구매평1"
										src="http://localhost:9000/manwol/resources/images/product/포토구매평1.png"
										width="100px" height="100px"> <img alt="포토구매평1"
										src="http://localhost:9000/manwol/resources/images/product/포토구매평1.png"
										width="100px" height="100px">
								</div>
							</td>
							<td>
								<div>
									<p style="cursor: pointer;">juli*****</p>
								</div>
							</td>
						</tr>
						<tr class="Purchasing_review_miniphoto">
							<td class="miniphoto1">
								<div>
									<p class="star_img" style="cursor: pointer;">★★★★★</p>
									<p>[옵션]5종 선물세트: 베스트 5종세트</p>
									<p>선물용으로 딱이에요 구성도 좋고 예쁨.. 근데 기스가 좀 심하게 난채로 와서 아쉬웠어요ㅜ</p>
									<img alt="포토구매평2"
										src="http://localhost:9000/manwol/resources/images/product/포토구매평2.png"
										width="100px" height="100px"> <img alt="포토구매평2"
										src="http://localhost:9000/manwol/resources/images/product/포토구매평2.png"
										width="100px" height="100px">
								</div>
							</td>
							<td>
								<div>
									<p style="cursor: pointer;">juli*****</p>
								</div>
							</td>
						</tr>

						<tr class="Purchasing_review_miniphoto">
							<td class="miniphoto1">
								<div>
									<p class="star_img" style="cursor: pointer;">★★★★★</p>
									<p>[옵션]5종 선물세트: 베스트 5종세트</p>
									<p>선물용으로 딱이에요 구성도 좋고 예쁨.. 근데 기스가 좀 심하게 난채로 와서 아쉬웠어요ㅜ</p>
									<img alt="포토구매평3"
										src="http://localhost:9000/manwol/resources/images/product/포토구매평3.png"
										width="100px" height="100px"> <img alt="포토구매평3"
										src="http://localhost:9000/manwol/resources/images/product/포토구매평3.png"
										width="100px" height="100px">
								</div>
							</td>
							<td>
								<div>
									<p style="cursor: pointer;">juli*****</p>
								</div>
							</td>
						</tr>
						<tr class="Purchasing_review_miniphoto">
							<td class="miniphoto1">
								<div>
									<p class="star_img" style="cursor: pointer;">★★★★★</p>
									<p>[옵션]5종 선물세트: 베스트 5종세트</p>
									<p>선물용으로 딱이에요 구성도 좋고 예쁨.. 근데 기스가 좀 심하게 난채로 와서 아쉬웠어요ㅜ</p>
									<img alt="포토구매평4"
										src="http://localhost:9000/manwol/resources/images/product/포토구매평4.png"
										width="100px" height="100px"> <img alt="포토구매평4"
										src="http://localhost:9000/manwol/resources/images/product/포토구매평4.png"
										width="100px" height="100px">
								</div>
							</td>
							<td>
								<div>
									<p style="cursor: pointer;">juli*****</p>
								</div>
							</td>
						</tr>


					</table>
				</div>
			</td>
		</tr>

		<tr>
			<td>
				<table style="margin-top: 25px;">
					<tr>
						<td colspan="2">
							<div
								style="margin-top: 10px; text-align: center; color: #949494;">
								<p>
									<span style="cursor: no-drop;"><</span> <span class="page">&emsp;1&emsp;</span>
									<span class="page">2&emsp;</span> <span class="page">3&emsp;</span>
									<span class="page">4&emsp;</span> <span class="page">5&emsp;</span>
									<span class="page">6&emsp;</span> <span class="page">7&emsp;</span>
									<span class="page">8&emsp;</span> <span
										style="cursor: no-drop;">></span>
								</p>
							</div>
							<div class="bt_write"
								style="margin-left: 1138px; margin-top: -2%;">
								<a href="write.html" class="on">구매평 작성</a>
							</div>
						</td>
					</tr>
				</table>
			</td>
		<tr>
	</table>


	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>