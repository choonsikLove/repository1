<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index.css"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/index.js"></script>
<style type="text/css">


</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="index1.jsp"></jsp:include>
	
	<article id='show_review'>
		<br><br><br>
		<div id='review_img'></div>
		<div>누적 후기 1.3만개 &nbsp; &nbsp; [평균 별점 &#10030; &#10030; &#10030; &#10030; &#10030; 4.8]</div>
		<div id='review_content'></div>
		<div>더 많은 리뷰를 확인해보세요!</div>
		<a href='recipe'><div id='moreBox'>상품평 더보기</div></a>
		<br><br><br><br>
	</article>
	
	<article id='instagram_prom'>
		<br><br><br><br>
		<div id='instagram_img'>
			<br><br>
			<a href='https://www.instagram.com/_manwol/' id='instagram_link'>@_manwol</a>
		</div>
		<table>
			<tr>
				<td><div><a href='https://www.instagram.com/p/CYDCwElhTMK/?utm_source=ig_web_copy_link'><img class='insta_table1' src='http://localhost:9000/manwol/resources/images/index/instagram_1.jpg'><img class='insta_table2' src='http://localhost:9000/manwol/resources/images/index/instagram_1on.jpg'></a></div></td>
				<td><div><a href='https://www.instagram.com/p/CZq2Lknv4y4/?utm_source=ig_web_copy_link'><img class='insta_table1' src='http://localhost:9000/manwol/resources/images/index/instagram_2.jpg'><img class='insta_table2' src='http://localhost:9000/manwol/resources/images/index/instagram_2on.jpg'></a></div></td>
				<td><div><a href='https://www.instagram.com/p/CZ8BdViP2J-/?utm_source=ig_web_copy_link'><img class='insta_table1' src='http://localhost:9000/manwol/resources/images/index/instagram_3.jpg'><img class='insta_table2' src='http://localhost:9000/manwol/resources/images/index/instagram_3on.jpg'></a></div></td>
				<td><div><a href='https://www.instagram.com/p/CaWmOGKvJIh/?utm_source=ig_web_copy_link'><img class='insta_table1' src='http://localhost:9000/manwol/resources/images/index/instagram_4.jpg'><img class='insta_table2' src='http://localhost:9000/manwol/resources/images/index/instagram_4on.jpg'></a></div></td>
			</tr>
		</table>
	
	</article>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>