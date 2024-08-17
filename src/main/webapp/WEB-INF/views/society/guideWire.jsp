
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

<!-- font css -->
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
<div class="content">

    <div class="level1_titleWrap">
        <h2 class="level1_title">사회재난시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 id="tbmainlab" class="level2_title">유·도선 사고</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <h4 class="level2_title">국민행동요령</h4> 
    <h4 class="title_02" style="float:left;">선박사고</h4>
    <br>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li style="">
                <img id="img33" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="국토교통부 로고"/>
            </li>
        </ul>
    </div>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img24" src="" class="unload_rsc" alt="사고 위험을 감지하면 큰소리로 외치거나 비상벨을 눌러 사고 발생 사실을 알리고, 119에 신고합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 사고 위험을 감지하면 큰소리로 외치거나 비상벨을 눌러 사고 발생 사실을 알리고, 119에 신고합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img25" src="" class="unload_rsc" alt="비상상황에서는 당황하지 말고 승무원의 안내에 따릅니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 비상상황에서는 당황하지 말고 승무원의 안내에 따릅니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img26" src="" class="unload_rsc" alt="배가 급격히 기울 경우 캐비닛, 탁자 등이 미끄러져 부상을 당할 수 있으므로 조심합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 배가 급격히 기울 경우 캐비닛, 탁자 등이 미끄러져 부상을 당할 수 있으므로 조심합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img27" src="" class="unload_rsc" alt="폐쇄된 장소에 갇혔을 때에는 119에 신고합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 폐쇄된 장소에 갇혔을 때에는 119에 신고합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img28" src="" class="unload_rsc" alt="화재 발생 시 119에 신고하고, 소화기로 즉시 불을 끕니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 화재 발생 시 119에 신고하고, 소화기로 즉시 불을 끕니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img29" src="" class="unload_rsc" alt="문이 열리지 않으면, 비상도끼로 창문 가장자리를 깨고 탈출합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 문이 열리지 않으면, 비상도끼로 창문 가장자리를 깨고 탈출합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img30" src="" class="unload_rsc" alt="바다로 탈출 할 때에는, 구명조끼를 착용하고 휴대전화를 소지하여 갑판으로 빨리 나옵니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 바다로 탈출 할 때에는, 구명조끼를 착용하고 휴대전화를 소지하여 갑판으로 빨리 나옵니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img31" src="" class="unload_rsc" alt="구명뗏목으로 탈출하는 경우 질서있게 탑승한 후 구조를 기다립니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 구명뗏목으로 탈출하는 경우 질서있게 탑승한 후 구조를 기다립니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img32" src="" class="unload_rsc" alt="구명조끼를 입고 물속에 뛰어드는 경우 팔을 서로 끼고 다리를 올려당기고 머리는 물 밖으로 세워 최대한 체온을 유지합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 구명조끼를 입고 물속에 뛰어드는 경우 팔을 서로 끼고 다리를 올려당기고 머리는 물 밖으로 세워 최대한 체온을 유지합니다.</strong>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 산업교통재난대응과 (044-205-6343)<br>소관부서 : 안전점검과 강한빛 (044-205-4268)<br>소관부서 : 해양경찰청 해양안전과 (032-835-2549)</strong>
    </div>

</div>

<!-- Footer -->
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div>  -->
</body>
</html>
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>