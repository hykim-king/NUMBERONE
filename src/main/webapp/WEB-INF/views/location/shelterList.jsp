
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
<title>대피소</title>

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
            <h2 class="level1_title">대피소</h2>
        </div>
        <div class="description_box">
        </div>
        <p class="infoListTop_boxWrap"></p>
        <div class="star_bulTxt_w" style="margin-top:15px; color:#757575; font-size:16px;">
            <span class="star_bulTxt">*</span>
            <span>아래의 대피소를 클릭하시면 해당 대피소 페이지로 넘어갑니다.</span>
        </div>
        <div class="links_listBox">
            <i class="make_line"></i>
            <i class="make_lineBox"></i>
    
    
        <ul class="links_list_w">
            <li class="links_listCell"><a class="fireGuide_link" href="/ehr/location/location/1"><span class="ellipsis_fcBlack">민방위 대피소</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" href="/ehr/location/location/2"><span class="ellipsis_fcBlack">민방위 급수시설</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" href="/ehr/location/location/3"><span class="ellipsis_fcBlack">지진옥외 대피장소</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" href="/ehr/location/location/4"><span class="ellipsis_fcBlack">지진해일 긴급대피장소</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" href="/ehr/location/location/5"><span class="ellipsis_fcBlack">지진겸용 임시주거시설</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" href="/ehr/location/location/6"><span class="ellipsis_fcBlack">이재민 임시주거시설</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" href="/ehr/location/location/7"><span class="ellipsis_fcBlack">화학사고 대피장소</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" href="/ehr/location/location/8"><span class="ellipsis_fcBlack">무더위 쉼터</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" href="/ehr/location/location/9"><span class="ellipsis_fcBlack">미세먼지 쉼터</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" href="/ehr/location/location/10"><span class="ellipsis_fcBlack">한파쉼터</span><i class="arrowGray_imgSet_icon"></i></a></li>
        </ul>
        </div>
    </div>
</div>
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
    <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>