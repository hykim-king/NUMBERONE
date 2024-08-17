
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
<!-- -------------------------------------------------------- -->
<!-- 컨텐츠 시작                                              -->
<!-- -------------------------------------------------------- -->

<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">사회재난시 행동요령</h2>

    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">화학물질사고</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    

    <h4 class="title_02">화학물질 사고 발생시 국민행동요령</h4>
    <div class="prevent02_img_GridWrap">
        <div class="prevent_text_grid">
            <strong class="title_03">화학물질 유출시 대피요령</strong>
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">- 안내방송(방송시설, 앰프 등)을 경청하고, 지정된 대피장소로 신속히 대피합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 긴급재난문자(CBS) 발송 시 안내사항을 숙지합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 방독면이 있으면 착용하고, 방독면이 없다면 가능한 우의나 비닐로 직접 피부가 노출되지 않도록 하고, 수건, 마스크 등을 이용하여 코, 입을 감싸고 최대한 멀리 대피해야 합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 화학사고로 발생한 독성 가스는 대부분 공기보다 무겁기 때문에 실외에 있는 경우 높은 곳으로 대피해야 하며, 관계기관이 제공하는 정보에 따라 움직이는 것이 안전합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 내 위치를 중심으로 사고발생 지역쪽으로 바람이 불 때는 바람이 불어오는 방향으로 대피합니다. <br/>사고발생 지역에서 내 위치쪽으로 바람이 불 때는 직각방향으로 대피합니다.</span></li>
            </ul>
        </div>
        <div class="prevent_img_grid">
            <img id="img01" class="unload_rsc" alt="우선 이곳을 빨리 벗어나자!" src=""/>
        </div>
    </div>
    <ul class="contextIndent_twoDepList">
        <li><span class="dash_bulTxt_txtIndent">- 실내로 대피한 경우에는 창문 등을 닫아 젖은 수건이나 테이프를 이용하여 밀봉하고, 외부공기와 통하는 설비(에어컨, 환풍기 등)의 작동은 중단해야 합니다.</span></li>
        <li><span class="dash_bulTxt_txtIndent">- 만약 자동차를 타고 사고지역 주변을 지나게 된다면 창문을 닫고, 에어컨 등을 반드시 꺼 외부 공기가 차량 내부로 들어오는 것을 방지해야 합니다.</span></li>
        <li><span class="dash_bulTxt_txtIndent">- 안전한 곳으로 대피한 후에는 비눗물로 샤워를 철저히 한 후 깨끗한 옷으로 갈아입어야 합니다.</span></li>
        <li><span class="dash_bulTxt_txtIndent">- 화학물질에 노출되었다면, 즉시 병원에 가서 의사의 진찰을 받아야 합니다.</span></li>
        <li><span class="dash_bulTxt_txtIndent">- 대피소로 대피하라는 안내가 없는 한 실내에 머물면서 스마트폰, 방송 등을 통해 외부상황을 파악하도록 합니다.</span></li>
    </ul>
    <h4 class="title_02">Q & A</h4>
    <div class="qna_wrap">
        <strong class="level4_title">Q. 화학사고 발생시 대피하는 경우 어떻게 하면 노출을 최소화 할 수 있습니까 ?</strong>
        <div class="qna_anser">
            <span class="txt_q">A</span>
            <div class="contextIndent_twoDepList">
                <span class="dash_bulTxt_txtIndent">- 화학물질이 흡수되는 경로는 입, 호흡기, 피부입니다. 따라서 화학사고가 발생한 경우 제일 좋은 조치는 화학사고 발생지역으로부터 멀리 떨어져 있는 것입니다. 직접 피부가 노출되지 않도록 우의나 비닐을 착용하고, 수건, 마스크, 장갑 등을 이용하여 코, 입 등을 감싸고 대피한 후 안전한 곳에 와서는 새 옷으로 갈아 입으셔야 합니다. 옷에도 소량의 독성물질이 묻어 있어 건강을 해칠 수 있습니다.</span>
            </div>
        </div>
        <strong class="level4_title">Q. 평시 화학물질에 대한 응급조치 정보 등은 어디에서 찾아 볼 수 있을까요?</strong>
        <div class="qna_anser">
            <span class="txt_q">A</span>
            <div class="contextIndent_twoDepList">
                <span class="dash_bulTxt_txtIndent">- 화학물질종합정보시스템(<a href="https://icis.me.go.kr" target="_blank">https://icis.me.go.kr</a>) 에서 “화학안전정보” 내 화학물질 검색을 통해서 응급 조치요령에 대한 정보를 확인하실 수 있습니다.</span>
            </div>
        </div>
        <div class="footnote_border">
            <div class="star_bulTxt_w">
                <span class="star_bulTxt">*</span>
                <span>자료제공 : 환경부 화학물질 안전 TF 044-201-6839</span>
            </div>
        </div>
    </div>
    
    <h4 class="title_01">국민행동요령</h4> 
    <h4 class="title_02" style="float:left;">화학물질 사고</h4>
    <br>
    <br>
    <div>
    <ul class="contextIndent_twoDepList">
        <li style="">
            <img id="img08" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="행정안전부 로고"/>
        </li>
    </ul>
    </div>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img02" src="" class="unload_rsc" alt="화학물질의 냄새, 색깔 등을 구체적으로 119에 신고합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 화학물질의 냄새, 색깔 등을 구체적으로 119에 신고합니다.<br>방독면을 착용하고 입과 코를 젖은 천으로 막고 비옷을 입어 피부를 보호합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img03" src="" class="unload_rsc" alt="대피 시 바람을 안고 이동합니다. 민약 대피하려고 하는 방향에서 가스가 날아오는 경우에는 바람이 불어오는 방향의 직각방향으로 대피합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 대피 시 바람을 안고 이동합니다. 민약 대피하려고 하는 방향에서 가스가 날아오는 경우에는 바람이 불어오는 방향의 직각방향으로 대피합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img04" src="" class="unload_rsc" alt="대부분의 독성 물질은 바닥에 깔리기 때문에 높은 곳으로 대피합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 대부분의 독성 물질은 바닥에 깔리기 때문에 높은 곳으로 대피합니다.<br>※불화수소, 암모니아와 같이 위로 퍼지는 특성을 가진 가벼운 물질은 제외</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img05" src="" class="unload_rsc" alt="사고지역을 지날 때에는 창문을 닫고 에어컨이나 히터를 끕니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 사고지역을 지날 때에는 창문을 닫고 에어컨이나 히터를 끕니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img06" src="" class="unload_rsc" alt="창문과 문을 젖은 수건이나 테이프로 막고, 외부공기와 통하는 에어컨·히터·환풍기를 끕니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 창문과 문을 젖은 수건이나 테이프로 막고, 외부공기와 통하는 에어컨·히터·환풍기를 끕니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img07" src="" class="unload_rsc" alt="아무 증상이 나타나지 않아도, 온 몸을 깨끗이 씻고, 노출된 옷과 신발은 밀봉하여 버립니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 아무 증상이 나타나지 않아도, 온 몸을 깨끗이 씻고, 노출된 옷과 신발은 밀봉하여 버립니다.</strong>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 환경재난대응과 이승환(044-205-6183)<br> 소관부서 : 환경부 화학안전과 김선아(044-201-6834)</strong>
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