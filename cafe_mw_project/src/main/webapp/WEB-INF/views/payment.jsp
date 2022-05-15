<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/manwol/resources/css/payment.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>


	<!-- content -->
	<div class="payment">
		<h2>결제하기</h2>
		<table>
			<tr>
				<td style="display: flex;">
					<table class="payment_content1">
						<tr>
							<td>
								<table class="payment_content1_1">
									<tr>
										<td>
											<h4>주문 상품 정보</h4>
											<div class="payment_content1_1_line">
												<div>
													<div class="payment_product">
														<div>
															<a href="http://localhost:9000/manwol/product_detail">
																<img alt="만월회 5종 선물세트"
																src="http://localhost:9000/manwol/resources/images/만월회 5종 선물세트.jpg"
																width="100px;" height="100px;">
															</a>
														</div>
														<div class="payment_product1">
															<div>
																<a href="http://localhost:9000/manwol/product_detail"><span
																	style="color: black; font-size: 16.5px;">만월회 5종
																		선물세트</span></a>
																<p>
																	<a href="http://localhost:9000/manwol/product_detail">
																		<span> <small>필수</small>&ensp;베스트5종세트 -1개
																	</span>
																	</a>
																</p>
																<p class="payment_price">
																	<a href="http://localhost:9000/manwol/product_detail"><strong>21,000원</strong></a>
																</p>
															</div>
														</div>
													</div>
												</div>
												<div class="payment_price1">
													<p>
														배송비 <strong>3,000원</strong>
													</p>
												</div>
											</div>
										</td>
									</tr>
								</table> <!-- 1번째 1번째  table -->
							</td>
						</tr>

						<tr>
							<td>
								<table class="payment_content1_2">
									<tr>
										<td>
											<h4>주문자 정보</h4>
											<div>
												<div class="payment_guide">
													<p>⚠️ 무통장 입금 안내</p>
													<p>무통장 입금 시 주문자명과 입금자명이 다를 경우 자동으로 입금 확인이 어렵</p>
													<p>습니다. 이럴 경우 수동으로 입금확인 진행 후 주문완료 처리 도와드리고 있으</p>
													<p>니 혹시나 입금 후 주문취소가 되더라도 걱정하지 않으셔도 됩니다!</p>
												</div>
												<div class="payment_guide1">
													<div>
														<p style="margin-bottom: 5px; color: black;">김유진</p>
														<p>01012345678</p>
														<p>qwer1234@gmail.com</p>
													</div>
													<div class="payment_btn">
														<button type="button">
															<strong>수정</strong>
														</button>
													</div>
												</div>
											</div>
										</td>
									</tr>
								</table> <!-- 1번째 2번째  table -->
							</td>
						</tr>

						<tr>
							<td>
								<table class="payment_content1_3">
									<tr>
										<td>
											<div>
												<h4>배송 정보</h4>
												<div class="deliver">
													<div>
														<p style="font-weight: 500;">김유진</p>
														<p class="deliver_ph">01012345678</p>
														<p>서울 강남구 강남대로 428</p>
														<p>만이빌딩 5층,10층</p>
														<p>(06129)</p>
													</div>
													<div class="message">
														<button type="button">
															<strong>변경</strong>
														</button>
													</div>
												</div>
												<div class="message1">
													<p>배송메모</p>
													<select>
														<option>배송메모를 선택해 주세요.</option>
														<option>배송 전에 미리 연락 바랍니다.</option>
														<option>부재시 경비실에 맡겨주세요.</option>
														<option>부재시 전화나 문자를 남겨주세요.</option>
														<option>직접입력</option>
													</select>
													<!--   
													<p>
                                          				<input type="text" placeholder="배송메모를 입력해 주세요" style="width: 545px; height: 30px;">
                                       				</p> 
                                       			-->
												</div>
											</div>
										</td>
									</tr>
								</table> <!-- 1번째 3번째  table -->
							</td>
						</tr>
						<tr>
							<td>
								<table class="payment_content1_4">
									<tr>
										<td>
											<div>
												<h4>쿠폰/만월포인트</h4>
												<div class="payment_content1_4_1">
													<div>
														<div class="coupon">
															<p>쿠폰</p>
															<input type="text" placeholder="보유쿠폰 0장">
															<button type="button">쿠폰적용</button>
														</div>
													</div>
													<div>
														<div class="coupon">
															<p>쿠폰번호</p>
															<input type="text" placeholder="쿠폰 번호 입력">
															<button type="button">코드확인</button>
														</div>
													</div>
													<div>
														<div class="coupon">
															<p>만월포인트</p>
															<input type="text" placeholder="0">
															<button type="button">전액사용</button>
														</div>
													</div>

													<div class="point">
														<small style="color: black;">보유 만월포인트 0</small>
														<p>
															<small>1 만월포인트 이상 보유 및 1원 이상 구매시</small>
														</p>
														<p>
															<small>사용 가능</small>
														</p>
													</div>
												</div>
											</div>
										</td>
									</tr>
								</table> <!-- 1번째 3번째  table -->
							</td>
						</tr>
					</table> <!-- 1번째 전체 table -->

					<table class="payment_content2">
						<!-- 2번째 전체 table -->
						<tr>
							<td>
								<table class="payment_content2_1">
									<tr>
										<td>
											<div>
												<h4>주문 요약</h4>
												<div>
													<div class="information">
														<p class="information1">
															상품가격<span>21,000원</span>
														</p>
														<p class="information2">
															배송비<span>+3,000원</span>
														</p>
													</div>
													<div class="information3">
														<p>
															총 주문금액 <span>24,000원</span>
														</p>
													</div>
												</div>
												<div class="information_point">
													<p>
														<span>0</span>만월포인트
														적립예정
													</p>
												</div>
											</div>
										</td>
									</tr>
								</table> <!-- 2번째 1번째  table -->
							</td>
						</tr>
						<tr>
							<td>
								<table class="payment_content2_2">
									<tr>
										<td>
											<div>
												<div>
													<h4>결제 수단</h4>
												</div>
												<div class="payment_method">
													<p>
														<span>
															<input type="radio" value="">&ensp;신용카드
														</span>
														<span class="payment_method1">
															<input type="radio" value="">&ensp;실시간계좌이체
														</span>
													</p>
													<p>
														<span>
															<input type="radio" value="">&ensp;가상계좌
														</span>
														<span class="payment_method1">
															<input type="radio" value="">&ensp;무통장입금
														</span>
													</p>
													<input type="radio" value="">&ensp;카카오페이
												</div>
											</div>
										</td>
									</tr>
								</table> <!-- 2번째 2번째  table -->
							</td>
						</tr>
						<tr>
							<td>
								<table class="payment_content2_3">
									<tr>
										<td>
											<div class="agreement">
												<input type="checkbox">&nbsp;전체 동의
												<p>
													<span>┗</span>&emsp;
													<input type="checkbox">&nbsp;구매조건 확인 및 결제진행에 동의
												</p>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div  class="agreement_btn">
												<button class="agreement_btn1">결제하기</button>
											</div>
										</td>
									</tr>
								</table> <!-- 2번째 3번째  table -->
							</td>
						</tr>
					</table><!-- 2번째 전체 table -->
				</td>
			</tr>
		</table>
	</div>
	
	
	<!--  footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>