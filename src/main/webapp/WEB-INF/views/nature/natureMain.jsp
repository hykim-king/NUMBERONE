
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
<title>자연재난행동요령</title>

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
	        <h2 class="level1_title">자연재난 시 행동요령</h2>
	    </div>
	    <div class="description_box">
	        <p class="description_fcBlack_txt">자연재난이란  태풍, 홍수, 호우(豪雨), 강풍, 풍랑, 해일(海溢), 대설, 낙뢰, 가뭄, 지진, 황사(黃砂), <br>조류(藻類) 대발생, 조수(潮水), 화산활동, 그 밖에 이에 준하는 <span class='description_fcBlue_txt'>자연현상으로 인하여 발생</span>하는 재해</p>
	    </div>
	    <p class="infoListTop_boxWrap"></p>
	    <div class="star_bulTxt_w" style="margin-top:15px; color:#757575; font-size:16px;">
	        <span class="star_bulTxt">*</span>
	        <span>아래의 재난을 클릭하시면 행동요령을 보실 수 있습니다.</span>
	    </div>
	    <div class="links_listBox">
	        <i class="make_line"></i>
	        <i class="make_lineBox"></i>
	
	
	    <ul class="links_list_w">
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/1.do')"><span class="ellipsis_fcBlack">침수</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/2.do')"><span class="ellipsis_fcBlack">태풍</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/3.do')"><span class="ellipsis_fcBlack">호우</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/4.do')"><span class="ellipsis_fcBlack">낙뢰</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/5.do')"><span class="ellipsis_fcBlack">강풍</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/6.do')"><span class="ellipsis_fcBlack">풍랑</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/7.do')"><span class="ellipsis_fcBlack">대설</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/8.do')"><span class="ellipsis_fcBlack">한파</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/9.do')"><span class="ellipsis_fcBlack">폭염</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/10.do')"><span class="ellipsis_fcBlack">황사</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/11.do')"><span class="ellipsis_fcBlack">지진</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/12.do')"><span class="ellipsis_fcBlack">해일</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/13.do')"><span class="ellipsis_fcBlack">지진해일</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/14.do')"><span class="ellipsis_fcBlack">화산폭발</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/15.do')"><span class="ellipsis_fcBlack">가뭄</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/16.do')"><span class="ellipsis_fcBlack">홍수</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/17.do')"><span class="ellipsis_fcBlack">조수</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/18.do')"><span class="ellipsis_fcBlack">산사태</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/19.do')"><span class="ellipsis_fcBlack">자연우주물체추락</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/20.do')"><span class="ellipsis_fcBlack">우주전파재난</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/21.do')"><span class="ellipsis_fcBlack">조류대발생(녹조)</span><i class="arrowGray_imgSet_icon"></i></a></li>
	        <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('${pageContext.request.contextPath}/nature/22.do')"><span class="ellipsis_fcBlack">적조</span><i class="arrowGray_imgSet_icon"></i></a></li>
	    </ul>
	    </div>
	</div>
</div>
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
    <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>