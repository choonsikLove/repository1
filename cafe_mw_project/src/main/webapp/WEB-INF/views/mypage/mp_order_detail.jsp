<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/admin.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/mypage.css"/>
</head>
<body>

<jsp:include page="../header.jsp"></jsp:include>

<div id='mypage_content'>
		<div id='content_border'>
			<div id='notice'>
				<span class='boldspan'>⚠️ 네이버페이</span>로 구매한 주문은<br>
				<span class='boldspan'>'네이버페이>결제내역'</span>에서 확인 가능합니다.<br><br>
				<span class='boldspan'>⚠️ 배송지 변경 및 주문 취소</span>는<br>
				<span class='boldspan'>주문/결제 당일</span> 문의해주셔야 변경 가능합니다.<br><br>
				<span class='boldspan'>⚠️ 만월쿠폰 사용 방법</span><br>
				<span class='bgcspan'>마이페이지 > 쿠폰 > 쿠폰받기</span>를 클릭해야 쿠폰이 정상발급 됩니다.<br>
				<span class='colorspan1'>* 쿠폰코드의 경우 <span class='linespan'>결제창에서 직접 쿠폰번호를 입력</span>해주세요!</span>
			</div>
			<nav id='mypage_nav'>
				<ul>
					<li><a href='?m2=order'>주문조회</a></li>
					<li><a href='?m2=wish_list'>위시리스트</a></li>
					<li><a href='?m2=regularly'>정기구독 관리</a></li>
					<li><a href='?m2=cancel'>취소조회</a></li>
					<li><a href='?m2=point_list'>만월포인트</a></li>
					<li><a href='?m2=qna'>1:1문의</a></li>
					<li class='my_inform'>정보수정</li>
					<li class='withdrow_btn'>회원탈퇴</li>
				</ul>
			</nav>
			
			<section id='mypage_section'>
				<div id='border'>
					<c:choose>
						<c:when test="${mvo.msprofile != null}">
							<img class='my_inform' id='mypage_profile' src='http://localhost:9000/manwol/resources/upload/${mvo.msprofile}'>
						</c:when>
						<c:otherwise>
							<img class='my_inform' id='mypage_profile' src='http://localhost:9000/manwol/resources/images/default_profile.png'>
						</c:otherwise>
					</c:choose>
					<div class='my_grade'>
						<span>
							<span class='colorspan2'>일반</span> 
							<span id="mypage_mname">${mvo.mname }</span>님 안녕하세요.
						</span>
						<br><br>
						구매금액 15,000원 달성 시<br>
						달까지 100km로 승급됩니다.<br>
						<div id='grade_benefit'>
							등급혜택 보기
						</div>
					</div>
					<div class='my_point'>
						만월포인트<br><br>
						<span>0</span>
					</div>
				</div>
			</section>
		
		<div class="order_detailDiv">
			<h3>주문 상세 내역</h3>
			<div>
				<span>주문일자</span>
				<span>${ovo.odate }</span>
				<span>주문번호</span>
				<span>${ovo.oid }</span>
			</div>
			<div>
				<table border='1'>
					<tr>
						<td><p>상품정보</p></td>
						<td><p>배송비</p></td>
						<td><p>진행상태</p></td>
					</tr>
					<c:forEach var="vo" items="${list }">
						<tr>
							<td>
								<div>
									<div>
										<img src="http://localhost:9000/manwol/resources/upload/${vo.pmainsfile }">
										<%-- 이것두 해야한다!! --%>
									</div>
									<div class="order_items">
										<ul>
											<li>
												<p>${vo.pname }</p>
											</li>
											<li><p>종류: -</p></li>
											<li>
												<c:choose>
													<c:when test="${vo.psaleprice == 0 }">
														<span>${vo.pprice}</span>
													</c:when>
													<c:otherwise>
														<span>${vo.psaleprice}</span>
													</c:otherwise>
												</c:choose>
												<span>/</span>
												<span>${vo.o_qnt }개</span>
											</li>
										</ul>
									</div>
								</div>
							</td>
							<td>3,000원</td>
							<td><p>배송 상태</p></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			
			<h4>구매자 정보</h4>
			<div>
				<table border='1'>
					<tr>
						<td>주문자</td>
						<td>${ovo.obuyer }</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>${ovo.ob_hp }</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>${ovo.ob_email }</td>
					</tr>
				</table>
			</div>
			
			<h4>배송지 정보</h4>
			<div>
				<table border='1'>
					<tr>
						<td>수령인</td>
						<td>${ovo.orecipient }</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>${ovo.or_hp }8</td>
					</tr>
					<tr>
						<td>배송지</td>
						<td>
							<p>(${ovo.or_post })${ovo.or_addr1 }</p>
							<p>${ovo.or_addr2 }</p>
						</td>
					</tr>
					<tr>
						<td>배송메모</td>
						<td>${ovo.oship_memo }</td>
					</tr>
				</table>
			</div>
			
			<h4>주문 금액 상세</h4>
			<div>
				<table border='1'>
					<tr>
						<td colspan='3'>
							<div class="money">
								<div>
									<span>주문금액</span>
									<c:set var="total" value="${0}"/>
											<c:forEach var="vo" items="${list}">
												<c:set var="total" value="${total + vo.pprice * vo.o_qnt}" />
											</c:forEach>
                                    <span>
										<c:out value="${total + 3000}"/>원
                                    </span>
								</div>
								<span>-</span>
								<div>
									<span>할인금액</span>
									<c:set var="total" value="${0}"/>
											<c:forEach var="vo" items="${list}">
												<c:if test="${vo.psaleprice != 0 }">
													<c:set var="total" value="${total + (vo.pprice - vo.psaleprice) * vo.o_qnt}" />
												</c:if>
											</c:forEach>
                                    <span>
										<c:out value="${total}"/>원
                                    </span>
								</div>
									<span>=</span>
								<div>
									<span>총 주문금액</span>
									<span>${ovo.ototal }원</span>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<div>
									<span>상품 금액</span>
									<c:set var="total" value="${0}"/>
										<c:forEach var="vo" items="${list}">
											<c:set var="total" value="${total + vo.pprice * vo.o_qnt}" />
										</c:forEach>
                                    <span>
										<c:out value="${total}"/>원
                                    </span>
								</div>
								<div>
									<span>배송비</span>
									<span>${ovo.oshipment }원</span>
								</div>
							</div>
						</td>
						<td>
							<div>
								<span>할인 금액(있을 때만)</span>
								<c:set var="total" value="${0}"/>
									<c:forEach var="vo" items="${list}">
										<c:if test="${vo.psaleprice != 0 }">
											<c:set var="total" value="${total + (vo.pprice - vo.psaleprice) * vo.o_qnt}" />
										</c:if>
									</c:forEach>
                                <span>
									<c:out value="${total}"/>원
                                </span>
							</div>
						</td>
						<td>
							<span>${ovo.opayment }</span>
						</td>
					</tr>
				</table>
			</div>
			
			
		</div>
	</div>
</div>	
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>