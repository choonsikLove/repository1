<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
				<p>관리자 메인 페이지입니다.</p>
			</div>
		</div>
		
		<div class="order_detailDiv">
			<h3>주문 상세 내역</h3>
			<div>
				<span>주문일자</span>
				<span>${vo.odate }</span>
				<span>주문번호</span>
				<span>${vo.oid }</span>
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
						<td>${vo.obuyer }</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>${vo.ob_hp }</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>${vo.ob_email }</td>
					</tr>
				</table>
			</div>
			
			<h4>배송지 정보</h4>
			<div>
				<table border='1'>
					<tr>
						<td>수령인</td>
						<td>${vo.orecipient }</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>${vo.or_hp }8</td>
					</tr>
					<tr>
						<td>배송지</td>
						<td>
							<p>(${vo.or_post })${vo.or_addr1 }</p>
							<p>${vo.or_addr2 }</p>
						</td>
					</tr>
					<tr>
						<td>배송메모</td>
						<td>${vo.oship_memo }</td>
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
									<span>${vo.ototal }원</span>
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
									<span>${vo.oshipment }원</span>
								</div>
							</div>
						</td>
						<td>
							<div>
								<span>할인 금액</span>
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
							<span>${vo.opayment }</span>
						</td>
					</tr>
				</table>
			</div>
			
			
		</div>
	</div>
</div>	
	<jsp:include page="../../footer.jsp"></jsp:include>

</body>
</html>