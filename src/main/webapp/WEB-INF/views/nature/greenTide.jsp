
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
<title>자연재난행동요령</title>
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
        <h2 class="level1_title">자연재난행동요령</h2>

    </div>
    <div class="level2_border_titleWrap">
        <h3 id="tbmainlab" class="level2_title">조류대발생(녹조)</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <!-- 텍스트 시작부분  -->
    
    <div class="text_area">
    <h4 class="title_02">조류 대발생(녹조)시 국민행동요령(안전취약계층 포함)</h4>
        <div class="prevent02_img_GridWrap">
            <div class="prevent_text_grid">         
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">가. 낚시․수상스키․수영 등 친수활동을 하지 말아야 합니다. </span></li>
                    <li><span class="dash_bulTxt_txtIndent">나. 어패류 어획 및 먹는 행위를 행위를 중단해야 합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">다. 식수의 냄새 등이 평소와 다를 때는 사용을 중단하고 지역 행정관서에 신고합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">라. 피부접촉 후 신체에 이상 증상 발생시에는 즉시 병원에 가서 의사의 진찰을 받아야 합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">마. 인근 지역 주민들은 TV, 라디오 등을 청취하고 지자체 등의 안내에 따라야 합니다.</span></li>
                </ul>
            </div>
        </div>  
    </div>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 환경부 물환경정책과 이혜원(044-201-6999)</strong>
    </div>
</div>

<!-- Footer -->
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>