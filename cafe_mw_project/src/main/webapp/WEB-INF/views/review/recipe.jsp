<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/recipe.css">
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
								<h3>보람달 뜨는 날, 금손들의 모임</h3>
								<p>이렇게라도 활용이 가능하다고👀?</p>
								<p>천재 고객님들이 만월회 원액으로 만든 레시피를 소개합니다.</p>
							</div>
						</td>
					</tr>
						
					<tr>
						<td>
							<div>
								<ul class="category">
									<li class="category_line"><a href="http://localhost:9000/manwol/recipe"><span>ALL</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe1"><span>밀크티</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe2"><span>말차</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe3"><span>악마초코</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe4"><span>단호박</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe5"><span>민트초코</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe6"><span>흑임자</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe7"><span>쑥</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe8"><span>그린티초코</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe9"><span>자몽샤워</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe10"><span>리얼딸기</span></a></li>
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
															<a href="http://localhost:9000/manwol/recipe_detail?rid=${vo.rid }&rpage=${rpage}&rno=${rno}"> 
																<img src="http://localhost:9000/manwol/resources/upload/${vo.rsfile1 }"
																height="400px" width="400px">
															</a>
															<p class="contents_name">
																<a href="http://localhost:9000/manwol/recipe_detail"> <strong>${vo.rcategory }</strong><span>${vo.rtitle }</span></a>
															</p>
															<div class="wish_list">
																<a href="#"> 
																	<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
																	<span style="font-size: 15px; color: #004a98;">${vo.rfavorite }</span>
																</a>
															</div>
															<a href="http://localhost:9000/manwol/recipe_detail">
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
									<td >
										<div style="display: flex;">
											<form action="" class="search_f">
												<input  type="text" placeholder=" Search" class="search_i">
												<button  type="submit" class="search_btn"><img alt="돋보기" src="http://localhost:9000/manwol/resources/images/review/search.png" style="width: 25px;"></button>
											</form>
										</div>
									</td>
									<td align="right">
										<div>		
											<a href='recipe_insert'><button class="write_btn">글쓰기</button></a>
										</div>
									</td>
								</tr>
							</table>
						</td>
					</tr>					
					<tr>
						<td>
							<table>
								<tr>
									<td>
										<div style=" margin-top: 10px; text-align: center; color: #949494;">
											<p>
												<span style="cursor: no-drop;"><</span> 
												<span class="page">&emsp;1&emsp;</span>
												<span class="page">2&emsp;</span>
												<span class="page">3&emsp;</span>
												<span style="cursor: no-drop;">></span>
											</p>
										</div>
									</td>
								</tr>
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