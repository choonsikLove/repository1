<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">
	*{
		padding: 0px;
		margin: 0;
	}
	
	#insert_title{
		height: 35px;
		border-bottom: #D6D6D6 1px solid;
		padding: 30px;
		font-size: 18px;
	}
	
	.insert_btn {
		display: inline-block;
		width: 50px;
		border: 1px solid #D6D6D6;
		padding: 5px 0;
		cursor: pointer;
		font-weight: bold;
		border-radius: 5px;
	}
	
	#cancel {
		float: right;
		background: #fff;
		margin-right: 10px;
	}
	
	#submit {
		float: right;
		background: rgb(11, 47, 127);
		color: white;
	}
	
	#cancel:after {
		content: "";
		display: block;
		clear: both;
	}
	
	#submit:hover {
		animation-name: submitBoxColorAnimation;
		animation-duration: 0.3s;
		background: rgb(33,104,177);
	}
	
	@keyframes submitBoxColorAnimation{
		0% {background: #0B2F7F;}
		100% {background: #2168B1;}
	}
	
	#insert_thumbnail{
		width: 18%;
		height: 500px;
		float: left;
		border-right: #D6D6D6 1px solid;
		padding: 30px 30px;
		background: #FAFAFA;
		font-size: 13px;
		font-weight: bold;
	}
	
	#insert_content{
		width: 75%;
		float:right;
		padding-top: 40px;
	}
	
	#insert_content:after {
		content: "";
		display: block;
		clear: both;
	}
	
	div>img{
		width: 50px;
		height: 50px;
		border-radius: 100%;
	}
	
	img+span{
		margin-left: 10px;
		vertical-align: top;
		font-size: 12px;
	}
	
	#category{
		border: none;
		border-bottom: #D6D6D6 1px solid;
		width: 18%;
		height: 30px;
		font-size: 20px;
		margin-left: 30px;
	}
	
	select+input{
		width: 74%;
		height: 30px;
		font-size: 20px;
		border: none;
		border-bottom: #D6D6D6 1px solid;
	}
	
	textarea{
		width: 93%;
		height: 350px;
		overflow: scroll;
		border: none;
		margin-left: 30px;
		line-height: 30px;
		resize: none;
	}
	
	img.dalDongHee{
		position: fixed;
		bottom: 20px; right: 20px;
		width: 17em;
	}
	
</style>
</head>
<body>
	<form action="recipe_insert" method="post" enctype="multipart/form-data">
		<div id='insert_title'>
			<span>레시피북</span>
			<button type="submit" class='insert_btn' id='submit'>작성</button>
			<button type="button" class='insert_btn' id='cancel' onclick="location.href='/manwol/recipe'">취소</button>
		</div>
		
		<div id='insert_thumbnail'>
			<span>대표 이미지 설정</span><br>
			<input type='file' name='files'>
		</div>
		
		
		<div id='insert_content'>
			<div>
				<img src='http://localhost:9000/manwol/resources/images/default_profile.png'><span>사용자</span>
			</div>
			<br><br>
			<select id='category' name='rcategory'>
				<option selected>카테고리</option>
				<option value='밀크티'>밀크티</option>
				<option value='말차'>말차</option>
				<option value='악마초코'>악마초코</option>
				<option value='단호박'>단호박</option>
				<option value='민트초코'>민트초코</option>
				<option value='흑임자'>흑임자</option>
				<option value='쑥'>쑥</option>
				<option value='그린티초코'>그린티초코</option>
				<option value='자몽샤워'>자몽샤워</option>
				<option value='리얼딸기'>리얼딸기</option>
			</select>
			<input type="text" placeholder="제목" name='rtitle'>
			<br><br>
			<div>
				<textarea name='rcontent'>완성본 사진첨부 필수!
레시피와 제작방법을 적어주세요.</textarea>
				<input type='file' name='files'>
				<input type='file' name='files'>
				<input type='file' name='files'>
				<input type='file' name='files'>
				<input type='file' name='files'>
			</div>
		</div>
	</form>
	<img class="dalDongHee" src="http://localhost:9000/manwol/resources/images/cs-_.png" alt="상담해주는 달동희(대표 캐릭터)">

</body>
</html>					