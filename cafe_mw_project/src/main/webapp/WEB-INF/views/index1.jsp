<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/slick.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/slick-theme.css"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/slick.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/index.js"></script>
</head>
<body>
	<div>
	  	<div class="slider1"  >
		    <a href="#1">
		  		<div class='slick_box1' id='slick_box1_1'>
		  		</div>
		  	</a>
		    <a href="#2">
		 		<div class='slick_box1' id='slick_box1_2'>
		 		</div>
		 	</a>
		    <a href="#3">
		    	<div class='slick_box1' id='slick_box1_3'>
		    	</div>
		    </a>
		    <a href="#4">
		    	<div class='slick_box1' id='slick_box1_4'>
		    	</div>
		    </a>
	  	</div>
	</div>
	<div id='slick_box2'>
	  	<div id="slider2"  >
		    <div class='slide2_title'>
		    	<table>
				    <caption>
				    	&nbsp;나를 위한 
				    </caption>
		    		<tr>
		    			<td>
		    				<div>첫 구매라면?</div>
		    				<br>
		    				<a href='#'>
		    					<img src='<%=request.getContextPath()%>/resources/images/index/slide2_1.jpg'>
		    				</a>
		    			</td>
		    			<td>
		    				<div>두 번째 구매라면,</div>
		    				<br>
		    				<a href='#'>
		    					<img src='<%=request.getContextPath()%>/resources/images/index/slide2_2.jpg'>
		    				</a>
		    			</td>
		    			<td>
		    				<div>세 번째 구매라면,</div>
		    				<br>
		    				<a href='#'>
		    					<img src='<%=request.getContextPath()%>/resources/images/index/slide2_3.jpg'>
		    				</a>
		    			</td>
		    		</tr>
			    </table>
		    </div>
 		    <div class='slide2_title'>
		    	<table>
				    <caption>
				    	&nbsp;너를 위한 
				    </caption>
		    		<tr>
		    			<td>
		    				<div>깜짝 비밀 선물</div>
		    				<br>
		    				<a href='#'>
		    					<img src='<%=request.getContextPath()%>/resources/images/index/slide2_4.jpg'>
		    				</a>
		    			</td>
		    			<td>
		    				<div>고급스러운 선물</div>
		    				<br>
		    				<a href='#'>
		    					<img src='<%=request.getContextPath()%>/resources/images/index/slide2_5.jpg'>
		    				</a>
		    			</td>
		    			<td>
		    				<div>다같이 함께</div>
		    				<br>
		    				<a href='#'>
		    					<img src='<%=request.getContextPath()%>/resources/images/index/slide2_6.jpg'>
		    				</a>
		    			</td>
		    		</tr>
		    	</table>
		    </div>
	  	</div>
	</div>
 	<div>
	  	<div class="slider1">
		    <a href="recipe">
		    	<div class='slick_box3' id='slick_box3_1'>
		    		<div>
		    			<span class='slideBox_title'>Recipe book</span>
		    			<br><br>
		    			우유에만 타먹을 수 없다.<br>
		    			원액 조합, 빵, 파스타, 푸딩.. 다른 달무리는 어떻게 응용해서 먹을까?
		    			<br><br>
		    			<span class='slideBox_link'>구경하러 가기&#8594;</span>
		    		</div>
		    	</div>
		    </a>
		    <a href="About_us">
		    	<div class='slick_box3' id='slick_box3_2'>
		    		<div>
		    			<span class='slideBox_title'>만월회란?</span>
		    			<br><br>
		    			만월회는 어떤 브랜드고,<br>
		    			어떤 비전과 목표를 가지고 있는지 궁금하신가요?
		    			<br><br>
		    			<span class='slideBox_link'>살펴보기&#8594;</span>
		    		</div>
		    	</div>
		    </a>
		    <a href="partners">
		    	<div class='slick_box3' id='slick_box3_3'>
		    		<div>
		    			<span class='slideBox_title'>조각달 카페</span>
		    			<br><br>
		    			만월회 원액을 사용하여 새로운 가치를 만드는 카페들<br>
		    			전국에 700여 개의 조각달이 있다는데..
		    			<br><br>
		    			<span class='slideBox_link'>어딘지 구경하기&#8594;</span>
		    			<br><br>
		    			(사진속 카페: 카토)
		    			
		    		</div>
		    	</div>
		    </a>
		    <a href="recruit">
		    	<div class='slick_box3' id='slick_box3_4'>
		    		<div>
		    			<span class='slideBox_title'>Recruit</span>
		    			<br><br>
		    			보름달 뜨는 날 천재들과 함께<br>
		    			일하고 싶다면 만월회에 지원해보세요.<br>
		    			당신도 몰랐던 천재성을 발견할 수도 있으니!
		    			<br><br>
		    			<span class='slideBox_link'>채용정보 살펴보기&#8594;</span>
		    			
		    		</div>
		    	</div>
		    </a>
	  	</div>
	</div>
</body>
</html>