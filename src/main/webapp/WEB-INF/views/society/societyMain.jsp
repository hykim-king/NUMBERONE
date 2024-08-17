
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
<title>사회재난행동요령</title>

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
    width: 1082px;
    border: 2px solid #EEEEEE;
    margin: 0 auto;
    padding: 20px;
    border-radius: 10px;
}
.level1_title{
    color: #134b70;
}

.links_list_w span{
    color: #134b70;
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
	        <h2 class="level1_title">사회재난시 행동요령</h2>
	    </div>
	    <div class="description_box">
	        <p class="description_fcBlack_txt"><span class='description_fcBlue_txt'>화재·붕괴·폭발·교통사고·화생방사고·환경오염사고</span> 등으로 인하여 발생하는 대통령령으로 정하는 규모 <br/>이상의 피해와 <span class='description_fcBlue_txt'>에너지·통신·교통·금융·의료·수도</span> 등 국가기반체계의 마비, 「감염병의 예방 및 관리에 관한 <br/>법률」에 따른 <span class='description_fcBlue_txt'>감염병</span> 또는 「가축전염병예방법」에 따른 <span class='description_fcBlue_txt'>가축전염병</span>의 확산 등으로 인한 피해</p>
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
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/1.do')"><span class="ellipsis_fcBlack" >화재</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/2.do')"><span class="ellipsis_fcBlack" >산불</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/3.do')"><span class="ellipsis_fcBlack" >건축물붕괴</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/4.do')"><span class="ellipsis_fcBlack" >폭발</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/5.do')"><span class="ellipsis_fcBlack" >교통사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/6.do')"><span class="ellipsis_fcBlack" >전기ㆍ가스사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/7.do')"><span class="ellipsis_fcBlack" >철도, 지하철 사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/8.do')"><span class="ellipsis_fcBlack" >유·도선 사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/9.do')"><span class="ellipsis_fcBlack" >해양 선박사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/10.do')"><span class="ellipsis_fcBlack" >식용수</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/11.do')"><span class="ellipsis_fcBlack" >원전사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/12.do')"><span class="ellipsis_fcBlack" >공동구재난</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/13.do')"><span class="ellipsis_fcBlack" >대규모수질오염</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/14.do')"><span class="ellipsis_fcBlack" >가축질병</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/15.do')"><span class="ellipsis_fcBlack" >댐붕괴</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/16.do')"><span class="ellipsis_fcBlack" >정전 및 전력부족</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/17.do')"><span class="ellipsis_fcBlack" >감염병예방</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/18.do')"><span class="ellipsis_fcBlack" >해양오염사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/19.do')"><span class="ellipsis_fcBlack" >화학물질사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/20.do')"><span class="ellipsis_fcBlack" >항공기사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/21.do')"><span class="ellipsis_fcBlack" >인공우주물체추락</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/22.do')"><span class="ellipsis_fcBlack" >미세먼지</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/23.do')"><span class="ellipsis_fcBlack" >정보통신사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/24.do')"><span class="ellipsis_fcBlack" >GPS전파혼신재난</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/25.do')"><span class="ellipsis_fcBlack" >보건의료재난</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/26.do')"><span class="ellipsis_fcBlack" >사업장대규모인적사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/27.do')"><span class="ellipsis_fcBlack" >공연장 안전</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/28.do')"><span class="ellipsis_fcBlack" >도로터널사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/29.do')"><span class="ellipsis_fcBlack" >경기장 안전</span><i class="arrowGray_imgSet_icon"></i></a></li>
	            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/society/30.do')"><span class="ellipsis_fcBlack" >원유수급 위기</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        </ul>
	    </div>
	</div>
</div>
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
  <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>