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

<script type="text/javascript">
	$(document).ready(function(){
  		
  		
  		$('.slider1').slick({
			slide: 'div',		//슬라이드 되어야 할 태그 ex) div, li 
			infinite : true, 	//무한 반복 옵션	 
			slidesToShow : 1,		// 한 화면에 보여질 컨텐츠 개수
			slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
			speed : 1000,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
			arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
			dots : true, 		// 스크롤바 아래 점으로 페이지네이션 여부
			autoplay : true,			// 자동 스크롤 사용 여부
			autoplaySpeed : 10000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
			pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
			vertical : false,		// 세로 방향 슬라이드 옵션
			fade: true,
			prevArrow : "<button type='button' class='slick-prev'>Previous</button>",		// 이전 화살표 모양 설정
			nextArrow : "<button type='button' class='slick-next'>Next</button>",		// 다음 화살표 모양 설정
			dotsClass : "slick-dots", 	//아래 나오는 페이지네이션(점) css class 지정
			draggable : true, 	//드래그 가능 여부 
			
			/* responsive: [ // 반응형 웹 구현 옵션
				{  
					breakpoint: 960, //화면 사이즈 960px
					settings: {
						//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
						slidesToShow:3 
					} 
				},
				{ 
					breakpoint: 768, //화면 사이즈 768px
					settings: {	
						//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
						slidesToShow:2 
					} 
				}
			] */

		});	
	
	
	
	
	
  		$('#slider2').slick({
			slide: 'div',		//슬라이드 되어야 할 태그 ex) div, li 
			infinite : true, 	//무한 반복 옵션	 
			slidesToShow : 1,		// 한 화면에 보여질 컨텐츠 개수
			slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
			speed : 1000,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
			arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
			dots : true, 		// 스크롤바 아래 점으로 페이지네이션 여부
			autoplay : true,			// 자동 스크롤 사용 여부
			autoplaySpeed : 5000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
			pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
			vertical : false,		// 세로 방향 슬라이드 옵션
			fade: true,
			prevArrow : "<button type='button' class='slick-prev'>Previous</button>",		// 이전 화살표 모양 설정
			nextArrow : "<button type='button' class='slick-next'>Next</button>",		// 다음 화살표 모양 설정
			dotsClass : "slick-dots", 	//아래 나오는 페이지네이션(점) css class 지정
			draggable : true, 	//드래그 가능 여부 
			
			/* responsive: [ // 반응형 웹 구현 옵션
				{  
					breakpoint: 960, //화면 사이즈 960px
					settings: {
						//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
						slidesToShow:3 
					} 
				},
				{ 
					breakpoint: 768, //화면 사이즈 768px
					settings: {	
						//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
						slidesToShow:2 
					} 
				}
			] */

		});	
  			
  			
  			
  		alert("test3");
  	});
</script>
<style type="text/css">
	body{
	background: #DDDDDD;
	}
	.slick_box1{
		background-position: 20%;
		background-size: 100% auto;
		width: 100%;
		height: 750px;
		background-repeat: no-repeat;
		margin: 0 auto;
		top: 40px;
		vertical-align: bottom;
		overflow: hidden;
		padding: 0;
	}
	.slick_box3{
		background-position: 20%;
		background-size: 100% 100%;
		background-repeat: no-repeat;
		background-color: rgba(0, 0, 0, 0.25);
		background-blend-mode: multiply;
		z-index: 999;
		width: 100%;
		height: 750px;
		margin: 0 auto;
		top: 40px;
		vertical-align: bottom;
		overflow: hidden;
		padding: 0;
		color: white;
		font-size: 18px;
	}
	
	
	#slick_box1_1{
		background-image: url("<%=request.getContextPath()%>/resources/images/index/slide1_1.jpg");
	}
	#slick_box1_2{
		background-image: url("<%=request.getContextPath()%>/resources/images/index/slide1_2.jpg");
	}
	#slick_box1_3{
		background-image: url("<%=request.getContextPath()%>/resources/images/index/slide1_3.jpg");
	}
	#slick_box1_4{
		background-image: url("<%=request.getContextPath()%>/resources/images/index/slide1_4.jpg");
	}
	
	#slick_box3_1{
		background-image: url("<%=request.getContextPath()%>/resources/images/index/slide3_1.png");
	}
	#slick_box3_2{
		background-image: url("<%=request.getContextPath()%>/resources/images/index/slide3_2.png");
	}
	#slick_box3_3{
		background-image: url("<%=request.getContextPath()%>/resources/images/index/slide3_3.png");
	}
	#slick_box3_4{
		background-image: url("<%=request.getContextPath()%>/resources/images/index/slide3_4.png");
	}
	.slideBox_title{
		font-weight: bold;
		font-size: 22px;
	}
	.slideBox_link{
		text-decoration: underline;
	}
	a>div>div{
		padding-left: 25%;
		margin-top: 290px;
	}
	
	.slide2_title{
		font-size: 25px;
		height: 700px;
		margin: 0px auto;
		display: inline-block;
	}
	.slide2_title>table{
		margin: 0px auto;
		margin-top: 4%;
		border-spacing: 80px 20px;
	}
	slide2_title tr td{
		padding-left: 5%;
	}
	.slide2_title td div{
		font-size: 18px;
		margin-left: -50px;
	}
	table>caption{
		text-align: left;
	}
	#slick_box2 img{
		width: 400px;
		height: 480px;
	}
</style>
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