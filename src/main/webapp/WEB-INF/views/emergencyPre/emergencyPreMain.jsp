<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비상대비행동요령</title>
<link href="/ehr/resources/css/content.css" rel="stylesheet" />
<link href="/ehr/resources/css/dp_sub.min.css" rel="stylesheet" />

<!-- Header -->
<script src="/ehr/resources/js/jquery-1.11.1.min.js"></script>
<script src="/ehr/resources/js/common.js"></script>
<script src="/ehr/resources/js/idsi_safekorea_common.js"></script>    
<script src="/ehr/resources/js/content.js"></script>
<style>
 *{
    font-family: "Hahmlet", serif;
     font-optical-sizing: auto;
        
 
 }

#contentWrap{
    background-color: #FAFAFA;
    width :1082px;
    border : 2px solid #EEEEEE;
    margin : 0 auto;
    padding : 20px;
    border-radius: 10px;
 
 }
 .level1_title{
    color : #134b70;
 }


.links_list_w span{
    color : #134b70;
    font-weight: 600;
}
</style>
</head>
<body>

<script type="text/javascript">
   function fn_goform(page) {
       window.location.href = page;
    }
</script>

    <%@ include file="/WEB-INF/views/main/header.jsp" %>


<div id="contentWrap">

	    <div class="content">
	    <div class="level1_titleWrap">
	        <h2 class="level1_title">비상대비 행동요령</h2>
	    </div>
	    <p class="infoListTop_boxWrap"></p>
	    <div class="star_bulTxt_w" style="margin-top:15px;">
	        <span class="star_bulTxt">*</span>
	        <span> 아래의 재난을 클릭하시면 행동요령을 보실 수 있습니다.</span>
	    </div>
	    <div class="links_listBox">
	        <i class="make_line"></i>
	        <i class="make_lineBox"></i>
	        <ul class="links_list_w">
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('28','999','SDIJK139','SDIJK13928')"><span class="ellipsis_fcBlack" >테러</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('29','999','SDIJK140','SDIJK14029')"><span class="ellipsis_fcBlack" >비상사태</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('33','999','SDIJK144','SDIJK14433')"><span class="ellipsis_fcBlack" >민방공 경보</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('38','999','SDIJK146','SDIJK14638')"><span class="ellipsis_fcBlack" >비상대비물자준비</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            
	        </ul>
	    </div>
	</div>
</div>
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
    <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>