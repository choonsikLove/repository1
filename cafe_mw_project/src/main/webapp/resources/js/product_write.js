/**
 *  일단 셀렉트 박스 만들기 기능부터
 */

$('document').ready(function(){
	
	 
	var newSelect = $('div#newSelect');
	var selectArray = new Array(3);
	var i = 0;
	var string = "";	
		
	$('#select1').click(function(){
	
		var selectBoxName = $('input#selectBoxName');
	
		if(selectBoxName.val() == ""){
			alert("체크박스 이름을 만들어줘!");
			selectBoxName.focus();
		} else{
		
			if(i < 3){
				var selectDiv= document.createElement('div');
				selectArray[i] = selectDiv;
				selectDiv.setAttribute('class','selectDiv');	
				
				string +="<p>" + selectBoxName.val() + "</p>";
				
				if($('input#selectBoxCheck').is(":checked")){
					string += "<span>(필수)</span>";
				} else{
					string += "<span>(선택)</span>";
				}
				
				string +="<button type='button' class='deleteSelect'>x</button>";
				string +="<select class='newSelectBox'></select>";
				string +="<p>항목 입력</p>";
				string +="<input type='text' class= 'selectBoxOption'></input>";
				string +="<button type='button' class='selectAddButton'>추가</button>";
				
				selectDiv.innerHTML = string;
			
				newSelect.append(selectDiv);
				
				i++;
				selectBoxName.val("");
				$('input#selectBoxCheck').prop( "checked", false ); 
				string = "";	
			} else {
				alert("더이상 만들 수 없어");
				selectBoxName.val("");
			}
			
		}
	});
	
	



$(document).on("click", ".selectDiv", function(){
		var selectBox = $(this).children('select');
		var selectBoxOption = $(this).children('input');
		var selectAddButton = $(this).children('button').eq(1);
		
		var j = 0;
		
		$('.selectDiv').css('border','none');
		
		selectAddButton.click(function(){
			if(selectBoxOption.val() == ""){
				return;
			} else {
				selectBox.append($('<option>', {value:j, text:selectBoxOption.val() + j}));
				selectBoxOption.val("");
				j++;
			}
		});
});

$(document).on("focus", ".selectBoxOption", function(){
	$(this).parent().css('border','3px black solid');
});

$(document).on("click",".deleteSelect",function(){
	$(this).parent().remove();
	i--;
});


$("input[name=ptagimages]:checkbox").change(function() { // 체크박스들이 변경됬을때
	if($("input[name=ptagimages]:checkbox:checked").length == 2) {
		$("input[name=ptagimages]:checkbox:not(:checked)").attr("disabled", "disabled");
	} else {
		$("input[name=ptagimages]:checkbox").removeAttr("disabled");
	}
});

$(document).on("click","#product_write_cancel",function(){
	var ask = confirm("정말 작성을 취소하시겠습니까?");
	if(ask){
		location.href = "http://localhost:9000/manwol/admin/product_list";
	}
});

$(document).on("click","#product_write_submit",function(){
	if($("#product_name").val() == ""){
		alert("상품 이름을 입력해주세요.");
		$("#product_name").focus();
		return false;
	}else if($("#product_price").val() == ""){
		alert("패스워드를 입력해주세요");
		$("#product_price").focus();
		return false;
	}else if($("#product_category option:selected").val() ==""){
		alert("카테고리를 선택해 주세요");
		return false;
	}else if($("#product_stock").val() == ""){
		alert("재고량을 입력해주세요");
		$("#product_stock").focus();
		return false;
	}else if($("textarea[name='ptext']").val().length == 0){
		alert("설명을 입력해 주세요");
		$("textarea[name='ptext']").focus();
		return false;
	}else{
		product_write_form.submit();
	}

});

$(document).on("click","#product_update_submit",function(){
	if($("#product_name").val() == ""){
		alert("상품 이름을 입력해주세요.");
		$("#product_name").focus();
		return false;
	}else if($("#product_price").val() == ""){
		alert("패스워드를 입력해주세요");
		$("#product_price").focus();
		return false;
	}else if($("#product_category option:selected").val() ==""){
		alert("카테고리를 선택해 주세요");
		return false;
	}else if($("#product_stock").val() == ""){
		alert("재고량을 입력해주세요");
		$("#product_stock").focus();
		return false;
	}else if($("textarea[name='ptext']").val().length == 0){
		alert("설명을 입력해 주세요");
		$("textarea[name='ptext']").focus();
		return false;
	}else{
		product_update_form.submit();
	}

});

if($("input[name=ptagimages]:checkbox:checked").length == 2) {
		$("input[name=ptagimages]:checkbox:not(:checked)").attr("disabled", "disabled");
}

});


function loadFile3(input) {
	var file = input.files[0];
	var main_image = $('#main_image');
	var url = URL.createObjectURL(file);
	main_image.attr("src", url);
}


