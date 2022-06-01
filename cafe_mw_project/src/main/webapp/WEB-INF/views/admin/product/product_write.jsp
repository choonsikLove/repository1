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
			<button type="button" id="product_write_cancel">취소</button>
			<button type="button" id="product_write_submit">작성</button>
		</div>
	</div>
</header>
<hr>

<div><%--헤더 아래 전체 --%>
	<form name="product_write_form" action="product_write" method="post" enctype="multipart/form-data">
	<div><%--중앙 --%>
			<div>
				<img alt="프로필 사진"
					src="http://localhost:9000/manwol/resources/images/default_profile.png">
				<span>상품 이름</span>
				<input type="text" name="pname" id="product_name">
			</div>
			<div>
				<span>가격</span> <input type="text" name="pprice" id="product_price">
				<span>할인가</span> <input type="text" name="psaleprice" id="product_sale_price" value=0>
			</div>
			<div>
				<span>태그 이미지 선택</span>
				<table border='1'>
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
							<p>새 상품</p><br>
							<input type="checkbox" name="ptagimages" value="새상품">
						</td>
						<td>
							<p>주문 폭주 상품</p><br>
							<input type="checkbox" name="ptagimages" value="주문폭주상품">
						</td>
						<td>
							<p>세일 상품</p><br>
							<input type="checkbox" name="ptagimages" value="세일상품">
						</td>
						<td>
							<p>선물 추천 상품</p><br>
							<input type="checkbox" name="ptagimages" value="선물추천상품">
						</td>
					</tr>
				</table>
			</div>
			<div>
				<span>카테고리</span>
				<select name="pcategory" id="product_category">
					<option value="">카테고리를 선택해 주세요</option> <%--이거 선택하면 안됨 --%>
				    <option value="base">만월 원액</option>
				    <option value="goods">만월 굿즈</option>
				    <option value="gift">선물하기</option>
				</select>
			</div>
			<div>
				<span>대표 이미지</span>
				<input type="file" id="mainProductImage" name="pmainimage" style="visibility: hidden;" onchange="loadFile3(this)">
				<label for="mainProductImage"><div>+</div></label>
				<div>
					<img id="main_image">
				</div>
			</div>
			<div>
				<span>기타 이미지</span>
				<input type="file" id="productImages" name="files" style="visibility: hidden;" multiple="multiple"
				>
				<label for="productImages"><div>+</div></label>
				<div id="multiple_product_images">
					여기에 파일 수 제한하는 스크립트 넣어야 하는데 너무 어려워서 일단 안 넣었습니다. 최대 5개까지만 넣어주세요.
				</div>
			</div>
			<div>
				<span>재고</span>
				<input type="text" name="pstock" id="product_stock">
			</div>
			<div>
				<span>선택 박스 이름</span>
				<input type="text" id="selectBoxName">
			
				<span>필수항목 여부</span>
				<input type="checkbox" id="selectBoxCheck">
				<button type="button" id="select1">추가</button>
			</div>
			<div id="newSelect">
			<%--나중에 만약에 여기에 select의 이름이 있다면, 수정할 때 상자를 보여주는 c:if하면 되지않을까?힝--%>
			<%--
				<div class="selectDiv">
					<p>셀렉트박스 이름</p>
					<span>필수선택</span>
					<button type='button' class='deleteSelect'>x</button>
					<select class='newSelectBox'></select>
					<p>항목 입력</p>
					<input type='text' class= 'selectBoxOption'></input>
					<button type='button' class='selectAddButton'>추가</button>
				</div>
				<div class="selectDiv">
					<p>셀렉트박스 이름</p>
					<span>필수선택</span>
					<button type='button' class='deleteSelect'>x</button>
					<select class='newSelectBox'></select>
					<p>항목 입력</p>
					<input type='text' class= 'selectBoxOption'></input>
					<button type='button' class='selectAddButton'>추가</button>
				</div>
			<div class="selectDiv">
					<p>셀렉트박스 이름</p>
					<span>필수선택</span>
					<button type='button' class='deleteSelect'>x</button>
					<select class='newSelectBox'></select>
					<p>항목 입력</p>
					<input type='text' class= 'selectBoxOption'></input>
					<button type='button' class='selectAddButton'>추가</button>
				</div>
			 --%>
			</div>
			<div>
				<span>설명</span>
				<textarea name="ptext" maxlength="300"></textarea>
			</div>
	</div>
	</form>
</div>


</body>
</html>