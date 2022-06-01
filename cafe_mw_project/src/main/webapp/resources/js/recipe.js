$(document).ready(function(){
	var comment = $('.comment');
	var reply_ul = $('ul.reply_ul');
	var reply_count = $('span#reply_count').text();
	
	$('button.w_btn').click(function(){
		if(comment.val() == ""){
			alert("댓글 내용을 입력해 주세요");
		} else {
			var form = $('#fform')[0];
    		var formData = new FormData(form);
		
			$.ajax({
		        type: "POST",
		        enctype: 'multipart/form-data',
		        url: "recipe_reply",
		        data: formData,
		        processData: false,
		        contentType: false,
		        cache: false,
		        timeout: 600000,
		        success: function (data) {
		            
					var text = "<li class='reply_li'><p>" + comment.val() + "</p>";
					if(data != ""){
						text += "<img src='http://localhost:9000/manwol/resources/upload/"+data+"' width='100px' height='100px'>";
					}
					text += "</li>";
					reply_ul.append(text);
					reply_count++;
					$('span#reply_count').text(reply_count);
					
					comment.val("");
					form.reset();
		            

		        },
		        error: function () {
		            alert("이미지 넣기실패");
		        }
		    });
		}
	});
	
	var recipe_img = $('img.recipe_detail_img');
	
	if(recipe_img.width() > 800){
		recipe_img.width('790px');
	}
	
});