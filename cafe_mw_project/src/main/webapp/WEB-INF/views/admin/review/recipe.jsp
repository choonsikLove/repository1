<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(관리자 접속 중)카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/admin.css">
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/admin.js"></script>
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
		<div class="recipeDiv">
			<h2>레시피북 관리</h2>
			
			<ul class="category" id="recipeTypes">
				<c:choose>
					<c:when test="${empty rc}">
						<li class="category_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
							<a href="http://localhost:9000/manwol/admin/recipe"><span>ALL</span></a></li>
				<c:choose>
					<c:when test="${rc eq '밀크티'}">
						<li class="category_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
							<a href="?rcategory=밀크티"><span>밀크티</span></a></li>
				<c:choose>
					<c:when test="${rc eq '말차'}">
						<li class="category_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
							<a href="?rcategory=말차"><span>말차</span></a></li>
				<c:choose>
					<c:when test="${rc eq '악마초코'}">
						<li class="category_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
							<a href="?rcategory=악마초코"><span>악마초코</span></a></li>
				<c:choose>
					<c:when test="${rc eq '단호박'}">
						<li class="category_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
							<a href="?rcategory=단호박"><span>단호박</span></a></li>
				<c:choose>
					<c:when test="${rc eq '민트초코'}">
						<li class="category_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
							<a href="?rcategory=민트초코"><span>민트초코</span></a></li>
				<c:choose>
					<c:when test="${rc eq '흑임자'}">
						<li class="category_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
							<a href="?rcategory=흑임자"><span>흑임자</span></a></li>
				<c:choose>
					<c:when test="${rc eq '쑥'}">
						<li class="category_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
							<a href="?rcategory=쑥"><span>쑥</span></a></li>
				<c:choose>
					<c:when test="${rc eq '그린티초코'}">
						<li class="category_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
							<a href="?rcategory=그린티초코"><span>그린티초코</span></a></li>
				<c:choose>
					<c:when test="${rc eq '자몽샤워'}">
						<li class="category_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
							<a href="?rcategory=자몽샤워"><span>자몽샤워</span></a></li>
				<c:choose>
					<c:when test="${rc eq '리얼딸기'}">
						<li class="category_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
							<a href="?rcategory=리얼딸기"><span>리얼딸기</span></a></li>
			</ul>
			
			<div class="contents">
					<table>
						<tr>
						<c:choose>
							<c:when test="${empty list}">
								<td colspan="3">검색결과가 없습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="vo" items="${list}" varStatus="status">
									<c:if test="${status.index%3==0}">
										</tr><tr>
									</c:if>
										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/admin/recipe_detail?rid=${vo.rid }"> 
													<img src="http://localhost:9000/manwol/resources/upload/${vo.rsfile1 }"
													height="400px" width="400px">
												</a>
												<p class="contents_name">
													<a href="http://localhost:9000/manwol/admin/recipe_detail?rid=${vo.rid }"> <strong>${vo.rcategory }</strong>&nbsp; &nbsp; <span>${vo.rtitle }</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">${vo.rfavorite }</span>
													</a>
												</div>
												<a href="http://localhost:9000/manwol/admin/recipe_detail?rid=${vo.rid }">
													<img alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>
												<button class='deleteRecipe'>삭제</button>
												<input value="${vo.rid }" type="hidden">
											</div>
										</td>
								</c:forEach>
							</c:otherwise>
						</c:choose>											
					</table>
				</div>
				
			
				<div style="display: flex;">
					<form class="search_f" method="post">
						<input  type="text" placeholder=" Search" class="search_i" name='option'>
						<button  type="submit" class="search_btn">
							<img alt="돋보기" src="http://localhost:9000/manwol/resources/images/review/search.png" style="width: 25px;">
						</button>
					</form>
				</div>
			</div>
		
		</div>	
	</div>
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>