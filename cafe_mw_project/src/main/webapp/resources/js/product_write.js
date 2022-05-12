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


$("input[name=tagImage]:checkbox").change(function() { // 체크박스들이 변경됬을때
	if($("input[name=tagImage]:checkbox:checked").length == 2) {
		$("input[name=tagImage]:checkbox:not(:checked)").attr("disabled", "disabled");
	} else {
		$("input[name=tagImage]:checkbox").removeAttr("disabled");
	}
});

});
