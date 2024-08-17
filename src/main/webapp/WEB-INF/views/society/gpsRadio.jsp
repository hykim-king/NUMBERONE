
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


<!-- 정보통신사고 사고 -->
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
        <h3 id="tbmainlab" class="level2_title">GPS전파혼신재난</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <!-- 텍스트 시작부분  -->
    
    <h4 class="title_02" style="display:none;">GPS전파혼신재난사고 국민행동요령</h4>
    
    <div class="contextIndent_twoDepList">
        <img id="img01" alt="GPS전파혼신재난사고국민행동요령_1" class="img_hand_clean unload_rsc" src=""/>
    </div>
    <div class="text_area">
    
    <div class="contextIndent_oneDepList">
        <strong class="title_03">관련 기관</strong>
    </div>
    <div class="prevent02_img_GridWrap">
        <div class="prevent_text_grid">         
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">· GPS 전파혼신이 발생하여 항공기, 선박, 이동통신 기지국 등 위치 및 시각정보에 영향을 받을 경우</span></li>
                <li><span class="dash_bulTxt_txtIndent">&nbsp;실무·행동매뉴얼에 따라 해당지역에 신속히 상황을 전파하고 대응합니다.</span></li>
            </ul>
        </div>
    </div>  
    
    <strong class="title_03">일반 국민, 안전취약계층 포함</strong>
    <div class="prevent_text_grid"">
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· GPS를 활용한 장비(차량 네비게이션 등)의 오작동 가능성이 있으니 안전운전(자동차)에 주의하고 소형선박 등은</span></li>
            <li><span class="dash_bulTxt_txtIndent">&nbsp;가능한 출항을 자제합니다.</span></li>
        </ul>
    </div>
    
    <div class="contextIndent_oneDepList">
    <strong class="title_03">선박</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 출항 중에 있는 선박은 가능한 빠른 시간 내에 귀항하고 선박의 위치를 레이더 또는 지문항법(지형지물) 등을 활용하며,</span></li>
            <li><span class="dash_bulTxt_txtIndent">&nbsp;필요시 통신장비 또는 휴대폰을 이용하여 해양경찰에 도움을 요청합니다.</span></li>
        </ul>
    </div>
    <div class="contextIndent_oneDepList">
    <strong class="title_03">휴대폰</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· GPS 전파혼신에 의해 특정지역에서 집단적으로 휴대전화 서비스가 안 될 경우 유선전화를 사용하여 상황을 전달합니다.</span></li>
        </ul>
    </div>
    <div class="contextIndent_oneDepList">
    <strong class="title_03">금융거래 등</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 언론 등을 통해 GPS 전파혼신으로 금융·전력 분야에 영향을 받고 있음을 인지한 경우 금융거래(주식, 현금인출) 등을 자제하고 혼신상황이 종료된 후 이용합니다.</span></li>
        </ul>
    </div>
    </div>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 과학기술정보통신부 네트워크안전기획과 문석주(044-202-6439)</strong>
    </div>
</div>
    
    

<!-- Footer -->
<!--  <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>