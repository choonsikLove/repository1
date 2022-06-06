<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/order.js"></script>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/order.css">
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<div class="cart_div">
		<p>장바구니</p>
		<table border='1' id="cart_table">
			<tr>
				<td>
					<input type="checkbox" checked="checked" id="cart_check_total">
					상품 정보
				</td>
				<td>수량</td>
				<td>주문금액</td>
				<td>배송정보</td>
			</tr>
			<c:choose>
				<c:when test="${!empty list }">
					<c:forEach var="vo" items="${list }" varStatus="status">
						<tr>
							<td>
								<div>
									<input type="hidden" class="cart_cid" value="${vo.cid }" checked="checked">
									<input type="checkbox" class="cart_check" value="${vo.pprice }" checked="checked" data-index="${status.index }">
									<input type="hidden" class="sale_prices" value="${vo.psaleprice }">
									<img class="cart_product" src="http://localhost:9000/manwol/resources/upload/${vo.pmainsfile }">
									<p>${vo.pname}</p>
								</div>
							</td>
							<td>
								<div>
									<button type ="button" onclick="fnCalCount('m', this, '${status.index}');" class="qntButton">-</button>
									<input class="c_qnt" type="text" value="${vo.c_qnt }" readonly="readonly"></input>
								    <button type="button" onclick="fnCalCount('p', this, '${status.index}');" class="qntButton">+</button>
									<input type="hidden" value="${vo.pstock }">
									<br>
								    <button class="qnt_change">수량 변경</button>
									<input type="hidden" class="cid" value = "${vo.cid }" >
								</div>
							</td>
							<td>
								<p class="c_prices"></p>
							</td>
							<td>배송정보</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan='4'>
							장바구니가 비어있습니다.
						</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
		
		<div>
			<button class="cart_delete">선택 상품 삭제</button>
			<button id="honey">꿀꽈배기</button>
		</div>
		
		<ul class="cart_ul">
			<li>총 주문 상품 <span id="cart_length">${fn:length(list) }</span>개 css는 주말에 하기 </li>
			<li>
				<div>
					<table border='1'>
						<tr>
							<td><span id="product_price"></span>원</td>
							<td><span>+</span></td>
							<td><span id="shipping">3000</span>원</td>
							<td><span>-</span></td>
							<td><span id="difference"></span>원</td>
							<td><span>=</span></td>
							<td><span id="total_price"></span><span>원</span></td>
						</tr>
						<tr>
							<td colspan='2'>상품 금액</td>
							<td colspan='2'>배송비</td>
							<td colspan='2'>상품 할인 금액</td>
							<td>총 주문 금액</td>
						</tr>
					
					</table>
				
				</div>
			</li>
		</ul>
	</div>
	
	<div>
		<form name="cart_form" action="cart_to_payment" method="post">
			<div id="cart_to_payment">
			</div>
		</form>
			<button class="cart_button">구매하기</button>
	</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>