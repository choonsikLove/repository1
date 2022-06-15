<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(관리자 접속 중)카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/product_write.css">
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/product_write.js"></script>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
</head>
<body>

<header> 
	<div>
		<div>
			상품 수정
		</div>
		
		<div>
			<button type="button" id="product_write_cancel">취소</button>
			<button type="button" id="product_update_submit">작성</button>
		</div>
	</div>
</header>
<hr>

<div><%--헤더 아래 전체 --%>
	<form name="product_update_form" action="product_update" method="post" enctype="multipart/form-data">
	<input type="hidden" name="pnum" value="${vo.pnum }">
	<input type="hidden" name="pmainsfile" value="${vo.pmainsfile }">
	<input type="hidden" name="psfile1" value="${vo.psfile1 }">
	<input type="hidden" name="psfile2" value="${vo.psfile2 }">
	<input type="hidden" name="psfile3" value="${vo.psfile3 }">
	<input type="hidden" name="psfile4" value="${vo.psfile4 }">
	<input type="hidden" name="psfile5" value="${vo.psfile5 }">
	<div><%--중앙 --%>
			<div>
				<img alt="프로필 사진"
					src="http://localhost:9000/manwol/resources/images/default_profile.png">
				<span>상품 이름</span>
				<input type="text" name="pname" value="${vo.pname }">
			</div>
			<div>
				<span>가격</span> <input type="text" name="pprice" value="${vo.pprice }">
				<span>할인가</span> <input type="text" name="psaleprice" value="${vo.psaleprice }">
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
							<c:choose>
								<c:when test="${tagimage1  == '새상품' || tagimage2 == '새상품'}">
									<input type="checkbox" name="ptagimages" value="새상품" checked="checked">
								</c:when>
								<c:otherwise>
									<input type="checkbox" name="ptagimages" value="새상품">
								</c:otherwise>
							</c:choose>
						</td>
						<td>
							<p>주문 폭주 상품</p><br>
							<c:choose>
								<c:when test="${tagimage1  == '주문폭주상품' || tagimage2 == '주문폭주상품'}">
									<input type="checkbox" name="ptagimages" value="주문폭주상품" checked="checked">
								</c:when>
								<c:otherwise>
									<input type="checkbox" name="ptagimages" value="주문폭주상품">
								</c:otherwise>
							</c:choose>
						</td>
						<td>
							<p>세일 상품</p><br>
							<c:choose>
								<c:when test="${tagimage1  == '세일상품' || tagimage2 == '세일상품'}">
									<input type="checkbox" name="ptagimages" value="세일상품" checked="checked">
								</c:when>
								<c:otherwise>
									<input type="checkbox" name="ptagimages" value="세일상품">
								</c:otherwise>
							</c:choose>
						</td>
						<td>
							<p>선물 추천 상품</p><br>
							<c:choose>
								<c:when test="${tagimage1  == '선물추천상품' || tagimage2 == '선물추천상품'}">
									<input type="checkbox" name="ptagimages" value="선물추천상품" checked="checked">
								</c:when>
								<c:otherwise>
									<input type="checkbox" name="ptagimages" value="선물추천상품">
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</table>
			</div>
			<div>
				<span>카테고리</span>
				<select name="pcategory" id="product_category">
					<option value="">카테고리를 선택해 주세요</option>
					<c:choose>
						<c:when test="${vo.pcategory == 'base' }">
						    <option value="base" selected="selected">만월 원액</option>
						</c:when>
						<c:otherwise>
						    <option value="base">만월 원액</option>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${vo.pcategory == 'goods' }">
						    <option value="goods" selected="selected">만월 굿즈</option>
						</c:when>
						<c:otherwise>
						    <option value="goods">만월 굿즈</option>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${vo.pcategory == 'gift' }">
						    <option value="gift" selected="selected">선물하기</option>
						</c:when>
						<c:otherwise>
						    <option value="gift">선물하기</option>
						</c:otherwise>
					</c:choose>
				</select>
			</div>
			<div>
				<span>대표 이미지</span>
				<input type="file" id="mainProductImage" name="pmainimage" style="visibility: hidden;" onchange="loadFile3(this)">
				<label for="mainProductImage"><div>+</div></label>
				<div>
					<c:choose>
						<c:when test="${ vo.pmainsfile != null}">
							<img id="main_image" src="http://localhost:9000/manwol/resources/upload/${vo.pmainsfile }">
						</c:when>
						<c:otherwise>
							<img id="main_image">
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div>
				<span>기타 이미지</span>
				<input type="file" id="productImages" name="files" style="visibility: hidden;" multiple="multiple">
				<label for="productImages"><div>+</div></label>
				<div>
				<%--
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
				 --%>
				</div>
			</div>
			<div>
				<span>재고</span>
				<input type="text" name="pstock" id="product_stock" value="${vo.pstock }">
			</div>
			<div>
				<span>선택 박스 이름</span>
				<input type="text" id="selectBoxName">
			
				<span>필수항목 여부</span>
				<input type="checkbox" id="selectBoxCheck">
				<button type="button" id="select1">추가</button>
			</div>
			<div id="newSelect">
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
				<textarea name="ptext" maxlength="300">${vo.ptext }</textarea>
			</div>
	</div>
	</form>
</div>


</body>
</html>