<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/recipe.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/recipe.js"></script>
<style type="text/css">
	.wish_list{
		display: inline-block;
		color: black;
	}
	.favorite{
		font-size: 18px;
		color: rgb(255, 255, 255);
		text-shadow: -1px 0px rgb(0, 74, 152), 0px 1px rgb(0, 74, 152), 1px 0px rgb(0, 74, 152), 0px -1px rgb(0, 74, 152);
	}
	.favorite_count{
		font-size: 15px;
		color: rgb(0, 74, 152);
	}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<table class="content" style="table-layout: fixed;">
		<tr>
			<td>
				<table>
					<tr>
						<td>
							<div class="recipe_text">
								<h3>보름달 뜨는 날, 금손들의 모임</h3>
								<p>이렇게라도 활용이 가능하다고👀?</p>
								<p>천재 고객님들이 만월회 원액으로 만든 레시피를 소개합니다.</p>
							</div>
						</td>
					</tr>
						
					<tr>
						<td>
							<div>
								<ul class="category">
									<c:choose>
										<c:when test="${empty rc}">
											<li class="category_line">
										</c:when>
										<c:otherwise>
											<li>
										</c:otherwise>
									</c:choose>
												<a href="http://localhost:9000/manwol/recipe"><span>ALL</span></a></li>
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
							</div>
						</td>
					</tr>

					<tr>
						<td>
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
															<a href="http://localhost:9000/manwol/recipe_detail?rid=${vo.rid }"> 
																<img src="http://localhost:9000/manwol/resources/upload/${vo.rsfile1 }"
																height="400px" width="400px">
															</a>
															<p class="contents_name">
																<a href="http://localhost:9000/manwol/recipe_detail?rid=${vo.rid }"> 
																	<strong>${vo.rcategory }</strong>&nbsp; &nbsp; 
																	<span>${vo.rtitle }</span>
																</a>
															</p>
															<div class="wish_list">
																<a class='favorite'>&#10084;</a>
																<a class='favorite_count'>${vo.rfavorite }</a>
															</div>
															<br>
															<a href="http://localhost:9000/manwol/recipe_detail?rid=${vo.rid }">
																<img alt="moon"
																	src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
																	width="38px" class="moon">
															</a>	
														</div>
													</td>
											</c:forEach>
										</c:otherwise>
									</c:choose>											
								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<table class="search">
								<tr>
									<td>
										<div style="display: flex; margin-left: 150px;">
											<form class="search_f" method="post">
												<input  type="text" placeholder=" Search" class="search_i" name='option'>
												<button  type="submit" class="search_btn">
													<img alt="돋보기" src="http://localhost:9000/manwol/resources/images/review/search.png" style="width: 25px;">
												</button>
											</form>
										</div>
									</td>
									<td align="right">
										<div>	
											<c:choose>
	               								<c:when test="${sessionScope.memail != null }">
	               									<a href='recipe_insert'><button class="write_btn">글쓰기</button></a>
												</c:when>
	               								<c:otherwise>
													<a><button class="write_btn" id="login_write_btn">글쓰기</button></a>
							               		</c:otherwise>
							            	</c:choose>
										</div>
									</td>
								</tr>
							</table>
						</td>
					</tr>					
					<tr>
						<td>
							<table>
								<jsp:include page="recipe_page.jsp"></jsp:include>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table>
									
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>