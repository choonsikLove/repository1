<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/recipe_insert.css">
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
				<textarea name='rcontent'>
					완성본 사진첨부 필수!
					레시피와 제작방법을 적어주세요.
				</textarea>
				<input type='file' name='files'>
				<input type='file' name='files'>
				<input type='file' name='files'>
				<input type='file' name='files'>
				<input type='file' name='files'>
			</div>
		</div>
	</form>

</body>
</html>					