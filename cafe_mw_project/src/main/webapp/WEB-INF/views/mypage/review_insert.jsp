<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		width: 400px;
	}
	#p_info, #submit_btn td{
		text-align: center;
	}
	#img_td{
		width: 100px
	}
	textarea{
		width: 388px;
		height: 250px;
		overflow-y: scroll;
		resize: none;
	}
	input+div{
		border: 1px solid black;
		padding: 10px;
		display: inline-block;
	}
	#submit_btn input{
		width: 150px;
		height: 50px;
		font-size: 18px;
	}
	#cancel{
		background: white;
	}
	#submit{
		background: blue;
	}

</style>
<script type="text/javascript">
	function review_Submit() {
	    document.reviewInsert.target="_selft"; // 타켓을 부모창으로 설정
	    document.reviewInsert.action = "/manwol/shop_mypage/review_insert";
	    document.reviewInsert.submit();
	    self.close();
	}
</script>
</head>
<body>
	<form name="reviewInsert" method="POST" enctype="multipart/form-data">
		<input type="hidden" name = "vpum" value='${vo.pnum }'> 
		<input type="hidden" name = "vmemail" value='${memail }'> 
		<div>
			<table id='p_info'>
				<tr>
					<td id='img_td'><img src="http://localhost:9000/manwol/resources/upload/${vo.pmainsfile }" height="100px" width="100px"></td>
					<td><div>제품명<br><br>${vo.pname }제품명입니다.</div></td>
				</tr>
			</table>
			<br>
			<table>
				<tr>
					<td><textarea name='vcontent' placeholder="내용을 작성해주세요."></textarea></td>				
				</tr>
				<tr>
					<td><input type="file" name="file" id="review_img"></td>
				</tr>
			</table>
			<br>
			<table id='submit_btn'>
				<tr>
					<td><input id='cancel' type='button' onclick="self.close()" value='취소'></td>
					<td><input id='submit' type="submit" onclick="review_Submit()" onclick="self.close()" value='등록'></td>
				</tr>
			</table>
		</div>	
	</form>
</body>
</html>