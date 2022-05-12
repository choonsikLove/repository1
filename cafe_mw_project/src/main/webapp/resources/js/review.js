$(document).ready(function(){
		/*		review 전체		*/
		$('.open_modal').click(function(){
			$('.modal2').fadeIn();
			$('.modal').fadeIn();
		});
		$('.close_modal').click(function(){
			$('.modal').fadeOut();
		});	
		$('.close_modal2').click(function(){
			$('.modal2').fadeOut();
		});		
	});
	
