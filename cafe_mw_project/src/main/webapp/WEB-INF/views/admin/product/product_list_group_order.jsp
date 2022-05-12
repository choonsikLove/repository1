<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<li><a href="#">주문 관리</a></li>
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
				<p>상품 관리 페이지입니다.</p>
			</div>
		</div>
	</div>
	
	<div>
		<ul class="category">
			<li><a href="http://localhost:9000/manwol/admin/product_list"><span>ALL</span></a></li>
			<li><a href="http://localhost:9000/manwol/admin/product_list_base"><span>만월 원액</span></a></li>
			<li><a href="http://localhost:9000/manwol/admin/product_list_goods"><span>만월 굿즈</span></a></li>
			<li><a href="http://localhost:9000/manwol/admin/product_list_gift"><span>선물하기</span></a></li>
			<li class="category_line"><a href="http://localhost:9000/manwol/product_list_group_order"><span>단체주문</span></a></li>
		</ul>
	</div>
	
	<a href="http://localhost:9000/manwol/admin/product_write"><button class="productButton">+ 상품 추가</button></a>
	<div class="contents">
			<table>
				<tr>
					<th colspan="3"><p class="contents_line"></p></th>
				</tr>
		
				<tr>
					<td>
					 <div class="contents2">
						  <a href="http://localhost:9000/manwol/admin/product_group_order"><img class="re" alt="단체주문" src="http://localhost:9000/manwol/resources/images/product/만월회 단체주문.jpg" height="400px" width="400px" ></a> 
		                  <p><a href="http://localhost:9000/manwol/product_group_order"><strong>만월회 단체주문</strong></a></p>                 
		                  <p class="pay_no-margin">가격문의(상세정보 참조)</p>
	                  </div>
					</td>
					<td>
						<div class="contents1">
							<img height="400px" width="400px" style="visibility: hidden;">
						</div>
					</td> 
					<td>
						<div class="contents2">
							<img height="400px" width="400px" style="visibility: hidden;">
						</div>
					</td>
				</tr>
			</table>
		</div>       
</div>
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>