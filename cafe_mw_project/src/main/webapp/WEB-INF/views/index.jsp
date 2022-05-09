<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<style type="text/css">

	#show_review{
		background: #E2E2E2;
		padding-top: 20px 
	}
	#review_img{
		background-image: url("http://localhost:9000/manwol/resources/images/index/Review.png");
		background-repeat: no-repeat;
		background-size: 250px auto;
		width: 250px;
		height: 35px;
		margin: 0 auto;
	}
	#review_img+div{
		text-align: center;
		font-weight: bold;
		font-size: 20px;
		color: #0042A9;
		margin: 10px 0;
	}
	#review_content{
		background-image: url("http://localhost:9000/manwol/resources/images/index/index_review.png");
		background-repeat: no-repeat;
		background-size: 1200px auto;
		width: 1150px;
		height: 1000px;
		margin: 0 auto;
	}
	#review_content+div{
		font-size: 18px;
		font-weight: bold;
		text-align: center;
	}
	#moreBox{
		width: 250px;
		height: 34px;
		color: #0B2F7F;
		border: 1px solid #011E41;
		margin: 0 auto;
		font-size: 17px;
		font-weight: bold;
		text-align: center;
		padding-top: 15px;
		margin-top: 20px;
	}
	#moreBox:hover{
		animation-name: boxColorAnimation;
		animation-duration: 0.5s;
		color: white;
		background: #0B2F7F;
	}
	
	@keyframes boxColorAnimation{
		0% {color: #0B2F7F; background: #E2E2E2;}
		100% {color: white; background: #0B2F7F;}
	}

	#instagram_prom{
		background: #011E41;
		width: 100%;
		height: 460px;		
	}
	#instagram_img{
		background-image: url("http://localhost:9000/manwol/resources/images/index/instagram_promotion.png");
		background-size: 250px auto;
		width: 250px;
		height: 40px;
		background-repeat: no-repeat;
		margin: 0 auto;
		top: 40px;
	}
	#instagram_link{
		display: block;
		text-align: center;
		text-decoration: underline;
		color: white;
	}
	article table{
		table-layout: fixed;
		margin: 10px auto;
		border-spacing: 30px;	
	}
	.insta_table1{
		width: 300px;
		height: 300px;
	}
	td>div{
		position: relative;
		margin: 0px auto;
		overflow: hidden;
	}
	.insta_table2{
		width: 300px;
		height: 300px;
		display: none;
		top: 0px;
		left: 0px;
		position: absolute;
	}
	td div:hover .insta_table2{
		animation-name: imgScaleAnimation;
		animation-duration: 0.7s;
		display: block;
		transform: scale(1.1,1.1);
	}
	
	@keyframes imgScaleAnimation{
		0% {transform: scale(1,1)}
		100% {transform: scale(1.1,1.1)}
	}

</style>
<script type="text/javascript">
	$(document).ready(function(){
		alert("변경1");
	});

</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	
	<article id='show_review'>
		<br><br><br>
		<div id='review_img'></div>
		<div>누적 후기 1.3만개 &nbsp; &nbsp; [평균 별점 &#10030; &#10030; &#10030; &#10030; &#10030; 4.8]</div>
		<div id='review_content'></div>
		<div>더 많은 리뷰를 확인해보세요!</div>
		<a href='#'><div id='moreBox'>상품평 더보기</div></a>
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
				<td><div><a href='#'><img class='insta_table1' src='http://localhost:9000/manwol/resources/images/index/instagram_1.jpg'><img class='insta_table2' src='http://localhost:9000/manwol/resources/images/index/instagram_1on.jpg'></a></div></td>
				<td><div><a href='#'><img class='insta_table1' src='http://localhost:9000/manwol/resources/images/index/instagram_2.jpg'><img class='insta_table2' src='http://localhost:9000/manwol/resources/images/index/instagram_2on.jpg'></a></div></td>
				<td><div><a href='#'><img class='insta_table1' src='http://localhost:9000/manwol/resources/images/index/instagram_3.jpg'><img class='insta_table2' src='http://localhost:9000/manwol/resources/images/index/instagram_3on.jpg'></a></div></td>
				<td><div><a href='#'><img class='insta_table1' src='http://localhost:9000/manwol/resources/images/index/instagram_4.jpg'><img class='insta_table2' src='http://localhost:9000/manwol/resources/images/index/instagram_4on.jpg'></a></div></td>
			</tr>
		</table>
	
	</article>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>