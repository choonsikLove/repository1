<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/recipe.css">
<style type="text/css">
.material-symbols-outlined {
  font-variation-settings:
  'FILL' 0,
  'wght' 100,
  'GRAD' 0,
  'opsz' 48
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
									<li><a href="http://localhost:9000/manwol/recipe"><span>ALL</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe1"><span>밀크티</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe2"><span>말차</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe3"><span>악마초코</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe4"><span>단호박</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe5"><span>민트초코</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe6"><span>흑임자</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe7"><span>쑥</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe8"><span>그린티초코</span></a></li>
									<li class="category_line"><a href="http://localhost:9000/manwol/recipe9"><span>자몽샤워</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe10"><span>리얼딸기</span></a></li>
								</ul>
							</div>
						</td>
					</tr>

					<tr>
						<td>
							<div class="contents2_1">
								<table>
									<tr>
										<td>
											<div class="contents2_1_1">
												<p><span class="material-symbols-outlined" style="cursor: context-menu; padding:30px; font-size: 100px; color: #BDBDBD">inbox</span></p>
												<p style="color: #BDBDBD;">게시물이 없습니다.</p>
											</div>
										</td>
									</tr>
								</table>
							</div>
						</td>							
					</tr>
					<tr>
						<td>
							<table class="search2">
								<tr>
									<td align="center">
										<div>		
											<button class="write_btn2">글쓰기</button>
										</div>
									</td>
								</tr>
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