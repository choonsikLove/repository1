<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(관리자 접속 중)카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/am-pagination.css"/>
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/am-pagination.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var pager = jQuery('#ampaginationsm').pagination({
		
		    maxSize: 3,	    		// max page size
		    totals: '${dbCount}',	// total pages	
		    page: '${reqPage}',		// initial page		
		    pageSize: '${pageSize}',			// max number items per page
		
		    // custom labels		
		    lastText: '&raquo;&raquo;', 		
		    firstText: '&laquo;&laquo;',		
		    prevText: '&laquo;',		
		    nextText: '&raquo;',
				     
		    btnSize:'sm'	// 'sm'  or 'lg'		
		});
		
		jQuery('#ampaginationsm').on('am.pagination.change',function(e){
			   jQuery('.showlabelsm').text('The selected page no: '+e.page);
	           $(location).attr('href', "http://localhost:9000/manwol/admin/order?rpage="+e.page);         
	    });
		
	});
</script>
</head>
<body>

<div id="ampaginationsm"></div>

</body>
</html>