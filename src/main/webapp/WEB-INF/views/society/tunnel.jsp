
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
<title>사회재난행동요령</title>
<link href="/ehr/resources/css/common.css"  rel="stylesheet"/>
<link href="/ehr/resources/css/layout2.css" rel="stylesheet" />
<link href="/ehr/resources/css/layout.css" rel="stylesheet"/>
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
<style type="text/css">
#textarea_Size{
    width : 75%;
}
</style>


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
        <h2 class="level1_title">사회재난행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 id="tbmainlab" class="level2_title">도로 터널사고</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <!-- 텍스트 시작부분  -->

    <h4 class="title_02" style="display:none;">도로 터널사고 발생 시 국민행동요령</h4>
    <div class="contextIndent_twoDepList">
        <img id="img01" alt="도로터널사고국민행동요령_1" class="img_hand_clean unload_rsc" src=""/>
    </div>
    
    <div class="text_area">
        <div class="contextIndent_oneDepList">
            <strong class="title_03"> 터널 내 차량사고나 고장 발생 시</strong>
        </div>
        <div class="prevent02_img_GridWrap">
            <div id = "textarea_Size">          
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">· 차량을 갓길이나 비상주차대 쪽으로 주차하고 엔진을 끄고 키를 꽂아둔 채 하차합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">· 휴대전화나 터널 안 긴급전화를 이용하여 신고한 후 안전한 곳으로 대피합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">· 화재가 발생하면 즉시 차량 내 소화기 또는 인근 소화기, 소화전을 사용하여 화재를 진압합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">· 화재가 커진 경우에는 재빨리 연기 반대방향으로 터널 내 유도표시등을 따라 밖이나 피난연결통로를 통해 옆 터널로 대피합니다.</span></li>
                </ul>
            </div>
        </div>  
    
        <strong class="title_03"> 터널 내 차량사고나 고장 목격 시</strong>
        <div class="prevent02_img_GridWrap">
            <div class="prevent_text_grid"">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">· 차량 소통이 가능하면 터널 밖으로 탈출합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">· 화재사고로 시야 미확보 혹은 통행이 불가할 경우에는 비상주차대나 갓길에 주차합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">· 이때 엔진은 끄고 키를 꽂아둔 채 하차하며 신속히 경찰서나 소방서로 신고한 후 안전한 곳으로 대피합니다.</span></li>
                </ul>
            </div>
        </div>  
    </div>
    <div>
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">
                소관부서 : 산업교통재난대응과 (044-205-6335)<br>
                소관부서 : 국토교통부 도로시설안전과 김재영 (044-201-4136)
            </strong>
        </div>
    </div>
</div>
    
    

<!-- Footer -->
<!--  <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>