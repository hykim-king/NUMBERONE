
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<title>사회재난행동요령</title>
<link href="/ehr/resources/css/common.css"  rel="stylesheet"/>
<link href="/ehr/resources/css/layout2.css" rel="stylesheet" />
<link href="/ehr/resources/css/content.css" rel="stylesheet" />
<link href="/ehr/resources/css/dp_sub.min.css" rel="stylesheet" />

<!-- Header -->
<script src="/ehr/resources/js/jquery-1.11.1.min.js"></script>
<script src="/ehr/resources/js/common.js"></script>
<script src="/ehr/resources/js/idsi_safekorea_common.js"></script>    
<script src="/ehr/resources/js/content.js"></script>


<script>
//이동
function agocontentView_onclick() {
    var selectedView = $("#selMenugo option:selected").val().replace("jsp", "html");
    location.href = "/idsiSFK/neo/sfk/cs/contents/prevent/"+selectedView+"?menuSeq=127";
}
//이전화면
function agobeforeView_onclick() {
     window.history.back();
};
</script>
</head>
<body>
<!-- -------------------------------------------------------- -->
<!-- 컨텐츠 시작                                              -->
<!-- -------------------------------------------------------- -->

<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">사회재난시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">항공기사고</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
        <h4 class="title_02">항공기 사고 시 행동요령</h4>
        <ul class="contextIndent_oneDepList">
            <li><span class="level4_title">항공기 사고 시 행동요령</span></li>
            <li><span class="dot_bulTxt_txtIndent">ㆍ 비행 전 승무원의 브리핑(또는 안전 비디오)에 집중하고, 비상시 승무원 지시에 따른다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">ㆍ 어린이나 노약자를 위한 별도의 비상장비가 있는지 승무원에게 문의한다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">ㆍ 비상용 산소마스크가 내려오면 보호자가 먼저 마스크를 착용하고 어린이나 노약자를 도와준다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">ㆍ 충돌 전 좌석등받이를 앞으로 세우고 안전벨트를 착용한 후 상체를 앞쪽으로 내밀고 머리를 무릎에 붙이는 자세를 취해 충격을 최소화해야 한다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">ㆍ 굽이 높은 구두나 모서리가 날카로운 장신구와 소지품을 제거하고, 짐을 찾는다는 생각은 버리고, 비상탈출 슬라이드를 이용하여 빠르게 탈출한다.</span></li>
        </ul>
        <ul class="contextIndent_oneDepList">
            <li><span class="level4_title">항공기 여행 시 주의사항</span></li>
            <li><span class="dot_bulTxt_txtIndent">ㆍ 기내 수화물은 비상 탈출에 방해되지 않도록 지정된 크기와 무게를 준수한다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">ㆍ 기내 반입(휴대, 부치는 짐) 금지 품목은 여행 준비할 때 확인하고, 가져가지 않는다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">ㆍ 난기류에 의한 심한 흔들림에 대비, 좌석에 앉아 있을 때는 항상 안전벨트를 착용한다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">ㆍ 어린이나 노약자에게 비행 중 발생 가능한 신체·의학적 문제는 항공사 직원이나 승무원에게 탑승 전에 반드시 알린다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">ㆍ 배정된 좌석에 앉고, 좌석을 마음대로 변경하지 않는다.</span></li>
        </ul>
        <br>
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 산업교통재난대응과 (044-205-6333) <br>소관부서 : 국토교통부 항공안전정책과 이재석 (044-201-4247)</strong>
        </div>
        
</div>
    
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>