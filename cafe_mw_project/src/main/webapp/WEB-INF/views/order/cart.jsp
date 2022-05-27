<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/order.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<div>
		<p>장바구니</p>
		<table border='1'>
			<tr>
				<td>상품 정보</td>
				<td>수량</td>
				<td>주문금액</td>
				<td>배송정보</td>
			</tr>
			<c:choose>
				<c:when test="${!empty list }">
					<c:forEach var="vo" items="${list }">
						<tr>
							<td>
								<p>삭제(아직 기능 없음)</p>
								<img src="http://localhost:9000/manwol/resources/upload/${vo.pmainsfile }">
								<p>${vo.pname}</p>
							</td>
							<td>수량</td>
							<td>
								<p class="prices">${vo.pprice }</p>
								<p>${vo.psaleprice }</p>
							</td>
							<td>배송정보</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan='4'>
							주문 내역이 없어요
						</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
		
		<ul>
			<li>총 주문 상품 1개</li>
			<li>
				<p>상품 금액: <span id="product_price"></span></p>
				<p>배송비: <span id="shipping">3000</span>원</p>
				<p>총 주문금액: <span id="total_price"></span></p>
			</li>
		</ul>
	</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>