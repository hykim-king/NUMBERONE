
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
<title>생활안전행동요령</title>

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
    margin-top : 80px;
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
		        <h2 class="level1_title">생활안전 행동요령</h2>
		    </div>
		    <p class="infoListTop_boxWrap"></p>
		    <div class="star_bulTxt_w" style="margin-top:15px; color:#757575; font-size:16px;">
		        <span class="star_bulTxt">*</span>
		        <span> 아래의 재난을 클릭하시면 행동요령을 보실 수 있습니다.</span>
		    </div>
		    <div class="links_listBox">
		        <i class="make_line"></i>
		        <i class="make_lineBox"></i>
		        <ul class="links_list_w">
		            
		            
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/1.do')"><span class="ellipsis_fcBlack">여름철물놀이</span><i class="arrowGray_imgSet_icon"></i></a></li>
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/2.do')"><span class="ellipsis_fcBlack">산행안전사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/3.do')"><span class="ellipsis_fcBlack">응급처치</span><i class="arrowGray_imgSet_icon"></i></a></li>
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/4.do')"><span class="ellipsis_fcBlack">해파리피해</span><i class="arrowGray_imgSet_icon"></i></a></li>
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/5.do')"><span class="ellipsis_fcBlack">심폐소생술</span><i class="arrowGray_imgSet_icon"></i></a></li>
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/6.do')"><span class="ellipsis_fcBlack">붉은불개미</span><i class="arrowGray_imgSet_icon"></i></a></li>
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/7.do')"><span class="ellipsis_fcBlack">승강기 안전사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/8.do')"><span class="ellipsis_fcBlack">어린이 놀이시설 안전사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/9.do')"><span class="ellipsis_fcBlack">식중독</span><i class="arrowGray_imgSet_icon"></i></a></li>
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/10.do')"><span class="ellipsis_fcBlack">실종유괴예방</span><i class="arrowGray_imgSet_icon"></i></a></li>
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/11.do')"><span class="ellipsis_fcBlack">학교폭력예방</span><i class="arrowGray_imgSet_icon"></i></a></li>
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/12.do')"><span class="ellipsis_fcBlack">가정폭력예방</span><i class="arrowGray_imgSet_icon"></i></a></li>
		            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/living/13.do')"><span class="ellipsis_fcBlack">석유제품 사고</span><i class="arrowGray_imgSet_icon"></i></a></li>		            
		        </ul>
		    </div>
		</div>
</div>
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
  <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>