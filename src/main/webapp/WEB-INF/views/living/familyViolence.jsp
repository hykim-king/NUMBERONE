
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
<title>생활안전행동요령</title>
<link href="/ehr/resources/css/common.css"  rel="stylesheet"/>
<link href="/ehr/resources/css/layout2.css" rel="stylesheet" />
<link href="/ehr/resources/css/content.css" rel="stylesheet" />
<link href="/ehr/resources/css/dp_sub.min.css" rel="stylesheet" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">
<link href="/ehr/resources/css/behavior.css" rel="stylesheet" />

<!-- Header -->
<script src="/ehr/resources/js/jquery-1.11.1.min.js"></script>
<script src="/ehr/resources/js/common.js"></script>
<script src="/ehr/resources/js/idsi_safekorea_common.js"></script>    
<script src="/ehr/resources/js/content.js"></script>



<script>

//이동
function agocontentView_onclick() {
    var pagecd = $("#selMenugo option:selected").val();
    var viewId = $("#selMenugo option:selected").val().replace(".","");

    var cd1 = pagecd.split(".")[1];
    var param = "?cd1="+cd1+"&cd2=99&pagecd="+pagecd+"&menuSeq=128";

        location.href = viewId+".html"+param;
}
//이전화면
function agobeforeView_onclick() {
     window.history.back();
};


</script>
</head>
<body>
<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">사회재난시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <H3 id="tbmainlab" class="level2_title">교통사고</H3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    <div>
    
        <h4 class="title_02">가정 폭력 예방</h4>
        <ul class="contextIndent_oneDepList">
            <li><span class="dot_bulTxt_txtIndent"> - 가정폭력이 발생한 즉시 112로 신고하세요. (가해자와 함께 있어 말을 할 수 없는 경우, 112 신고 후 전화기의 숫자 버튼을 반복적으로 눌러 '보이는 112'서비스를 통해 실시간 영상전달, 위치확인, 채팅이 가능합니다.)</span></li>
            <li><span class="dot_bulTxt_txtIndent"> - 상담은 여성긴급전화1366 또는 가까운 가정폭력상담소로 전화주세요.</span></li>
            <li><span class="dot_bulTxt_txtIndent"> - 신분증, 신용카드, 통장, 갈아입을 옷 등은 미리 준비해 놓고 급히 챙겨올 수 있는 장소에 보관해주세요.</span></li>
            <li><span class="dot_bulTxt_txtIndent"> - 위급한 상황을 대비해 여윳돈을 준비하세요.</span></li>
            <li><span class="dot_bulTxt_txtIndent"> - 위급상황 발생 시 안전하게 머물 곳과 연락할 사람을 사전에 정해놓으세요.</span></li>
            <li><span class="dot_bulTxt_txtIndent"> - 이웃들에게 폭행을 당하는 소리가 나면 경찰에 신고해달라고 사전에 알려주세요.</span></li>
        </ul>
    
    </div>
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 경찰청 여성안전기획과 김지수 경감(02-3150-0893)</strong>
     </div>
</div>

<!-- Footer -->
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>