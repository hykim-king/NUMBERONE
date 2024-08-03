
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<title>생활안전행동요령</title>
<link href="/ehr/resources/css/common.css"  rel="stylesheet"/>
<link href="/ehr/resources/css/layout.css" rel="stylesheet" />
<link href="/ehr/resources/css/content.css" rel="stylesheet" />
<link href="/ehr/resources/css/dp_sub.min.css" rel="stylesheet" />

<!-- Header -->
<script src="/ehr/resources/js/jquery-1.11.1.min.js"></script>
<script src="/ehr/resources/js/common.js"></script>
<script src="/ehr/resources/js/idsi_safekorea_common.js"></script>    
<script src="/ehr/resources/js/content.js"></script>
</head>
<body>

<script type="text/javascript">
   function fn_goform(page) {
       window.location.href = page;
    }
</script>

<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">생활안전 행동요령</h2>
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
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('28','999','SDIJK139','SDIJK13928')"><span class="ellipsis_fcBlack" >여름철물놀이</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('29','999','SDIJK140','SDIJK14029')"><span class="ellipsis_fcBlack" >산행안전사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('33','999','SDIJK144','SDIJK14433')"><span class="ellipsis_fcBlack" >응급처치</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('38','999','SDIJK146','SDIJK14638')"><span class="ellipsis_fcBlack" >해파리피해</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('39','999','SDIJK147','SDIJK14739')"><span class="ellipsis_fcBlack" >심폐소생술</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('41','999','SDIJK149','SDIJK14941')"><span class="ellipsis_fcBlack" >붉은불개미</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('43','999','SDIJK150','SDIJK15043')"><span class="ellipsis_fcBlack" >승강기 안전사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('44','999','SDIJK151','SDIJK15144')"><span class="ellipsis_fcBlack" >어린이 놀이시설 안전사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('46','999','SDIJK153','SDIJK15346')"><span class="ellipsis_fcBlack" >식중독</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('47','999','SDIJK154','SDIJK15447')"><span class="ellipsis_fcBlack" >실종유괴예방</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('49','999','SDIJK156','SDIJK15649')"><span class="ellipsis_fcBlack" >학교폭력예방</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('50','999','SDIJK157','SDIJK15750')"><span class="ellipsis_fcBlack" >가정폭력예방</span><i class="arrowGray_imgSet_icon"></i></a></li>
            <li class="links_listCell"><a class="fireGuide_link" onclick="fn_goform('52','999','SDIJK159','SDIJK15952')"><span class="ellipsis_fcBlack" >석유제품 사고</span><i class="arrowGray_imgSet_icon"></i></a></li>
        </ul>
    </div>
</div>

<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>