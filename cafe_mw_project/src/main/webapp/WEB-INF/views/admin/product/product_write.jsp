<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/product_write.css">
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/product_write.js"></script>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
</head>
<body>

<header> <%--다른 헤더랑 이름이 겹치니까 css파일 합치지 않도록 주의! --%>
	<div>
		<div>
			상품 추가
		</div>
		
		<div>
			<button type="button">취소</button>
			<button type="button">작성</button>
		</div>
	</div>
</header>
<hr>

<div><%--헤더 아래 전체 --%>
	<div><%--중앙 --%>
		<form>
			<div>
				<img alt="프로필 사진"
					src="http://localhost:9000/manwol/resources/images/default_profile.png">
				<span>상품 이름</span>
				<input type="text" placeholder="상품 이름">
			</div>
			<div>
				가격 <input type="text" placeholder="상품 이름">
				할인가 <input type="text" placeholder="상품 이름">
			</div>
			<div>
				<span>태그 이미지 선택</span>
				<table>
					<tr>
						<td>
							<img alt="새 상품" src="http://localhost:9000/manwol/resources/images/product/NEW.jpg">
						</td>
						<td>
							<img alt="주문 폭주 상품" src="http://localhost:9000/manwol/resources/images/product/주문폭주.jpg">
						</td>
						<td>
							<img alt="세일 상품" src="http://localhost:9000/manwol/resources/images/product/SALE.jpg">
						</td>
						<td>
							<img alt="선물 추천 상품" src="http://localhost:9000/manwol/resources/images/product/선물추천.jpg">
						</td>
					</tr>
					<tr>
						<td>
							<p>새 상품</p>
							<input type="checkbox" name="tagImage" value="newProduct">
						</td>
						<td>
							<p>주문 폭주 상품</p>
							<input type="checkbox" name="tagImage" value="popularProduct">
						</td>
						<td>
							<p>세일 상품</p>
							<input type="checkbox" name="tagImage" value="saleProduct">
						</td>
						<td>
							<p>선물 추천 상품</p>
							<input type="checkbox" name="tagImage" value="giftProduct">
						</td>
					</tr>
				</table>
			</div>
			<div>
				<span>카테고리</span>
				<select name="productCategory">
					<option value="">카테고리를 선택해 주세요</option> <%--이거 선택하면 안됨 --%>
				    <option value="base">만월 원액</option>
				    <option value="goods">만월 굿즈</option>
				    <option value="gift">선물하기</option>
				</select>
			</div>
			<div>
				<span>대표 이미지</span>
				<input type="file">
			</div>
			<div>
				작성 창(아직 안 만들었음)<br>
				여기는 이미지 위주니까 다양한 이미지를 넣을 수 있는 방법을 찾아보기.
			</div>
			<div>
				<span>재고</span>
				<input type="text" placeholder="정수만 입력 가능하게 만들기">
			</div>
			<div>
				셀렉트 박스 만들기
			
				<span>큰 이름</span>
				<input type="text" id="selectBoxName">
			
				<span>필수항목 여부</span>
				<input type="checkbox" id="selectBoxCheck">
			
				<button type="button" id="select1">추가</button>
			
				<br>
			
				<button type="button" id="select3">완료</button>
			</div>
			<div id="newSelect">
			
			</div>
		</form>
	</div>
</div>


</body>
</html>