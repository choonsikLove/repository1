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
  		alert("test2");
  		
  		$('.slider1').slick({
			slide: 'div',		//슬라이드 되어야 할 태그 ex) div, li 
			infinite : true, 	//무한 반복 옵션	 
			slidesToShow : 1,		// 한 화면에 보여질 컨텐츠 개수
			slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
			speed : 100,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
			arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
			dots : true, 		// 스크롤바 아래 점으로 페이지네이션 여부
			autoplay : true,			// 자동 스크롤 사용 여부
			autoplaySpeed : 10000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
			pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
			vertical : false,		// 세로 방향 슬라이드 옵션
			prevArrow : "<button type='button' class='slick-prev'>Previous</button>",		// 이전 화살표 모양 설정
			nextArrow : "<button type='button' class='slick-next'>Next</button>",		// 다음 화살표 모양 설정
			dotsClass : "slick-dots", 	//아래 나오는 페이지네이션(점) css class 지정
			draggable : true, 	//드래그 가능 여부 
			
			responsive: [ // 반응형 웹 구현 옵션
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
			]

		});	
	
	
	
	
	
  		$('#slider2').slick({
			slide: 'div',		//슬라이드 되어야 할 태그 ex) div, li 
			infinite : true, 	//무한 반복 옵션	 
			slidesToShow : 3,		// 한 화면에 보여질 컨텐츠 개수
			slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
			speed : 100,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
			arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
			dots : true, 		// 스크롤바 아래 점으로 페이지네이션 여부
			autoplay : true,			// 자동 스크롤 사용 여부
			autoplaySpeed : 10000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
			pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
			vertical : false,		// 세로 방향 슬라이드 옵션
			prevArrow : "<button type='button' class='slick-prev'>Previous</button>",		// 이전 화살표 모양 설정
			nextArrow : "<button type='button' class='slick-next'>Next</button>",		// 다음 화살표 모양 설정
			dotsClass : "slick-dots", 	//아래 나오는 페이지네이션(점) css class 지정
			draggable : true, 	//드래그 가능 여부 
			
			responsive: [ // 반응형 웹 구현 옵션
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
			]

		});	
  			
  			
  			
  			
  	});
</script>
<style type="text/css">
	#slick_box1{
	}
	#slick_box2{
		background: blue;
		padding: 300px 100px;
	}
	#slick_box3{
		background: red;
		padding: 300px 100px;
	}
	#box1_1{
		background-image: url("<%=request.getContextPath()%>/resources/images/index/slide1_1.jpg");
		background-size: 100% auto;
		width: 100%;
		height: 900px;
		background-repeat: no-repeat;
		margin: 0 auto;
		top: 40px;
	}
</style>
</head>
<body>
	<div id='slick_box1'>
	  	<div class="slider1"  >
		    <div id='box1_1'></div>
		    <div>2</div>
		    <div>3</div>
		    <div>4</div>
	  	</div>
	</div>
	<div id='slick_box2'>
	  	<div id="slider2"  >
		    <div>1</div>
		    <div>2</div>
		    <div>3</div>
		    <div>4</div>
		    <div>5</div>
		    <div>6</div>
	  	</div>
	</div>
	<div id='slick_box3'>
	  	<div class="slider1"  >
		    <div>1</div>
		    <div>2</div>
		    <div>3</div>
		    <div>4</div>
	  	</div>
	</div>	  	
</body>
</html>