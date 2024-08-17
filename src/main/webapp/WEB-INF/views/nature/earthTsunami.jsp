
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
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




<script>
// 이동
function agocontentView_onclick() {
    var selectedView = $("#selMenugo option:selected").val().replace("jsp", "html");
    location.href = "/idsiSFK/neo/sfk/cs/contents/prevent/"+selectedView+"?menuSeq=126";
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
        <h2 class="level1_title">자연재난 시 행동요령</h2>
        <div class="sns_bt">
            <a href="#" data-toggle="sns_share"  data-service="facebook" data-title="페이스북 SNS공유" class = "facebook"></a>
            <a href="#" data-toggle="sns_share"  data-service="twitter" data-title="트위터 SNS공유" class = "twitter"></a>
            <a href="#" data-toggle="sns_share"  data-service="kakaostory" data-title="카카오스토리 SNS공유" class = "kakaostory"></a>
        </div>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">지진해일</h3>
        <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    
    <div class="preventTop_boxWrap">
        <h3 class="title_02">지진해일이 발생하면 이렇게 대피합니다.</h3>
            <div class="preventTop_boxWrap">
                <p style="margin-top:0px;">❍ 내가 있는 지역이 지진해일의 위험이 있는 지역인지 미리 확인해 둡니다.</p>
                <p style="margin-top:0px;">❍ 해안가에 있을 때 지진을 느꼈다면 곧 지진해일이 올 수도 있으니 도로혼잡 등을 고려하여 최대한 빨리 해안이나 하천을 벗어나, 높은 곳으로 대피합니다.</p>
                <p style="margin-top:0px;">❍ 해안에서 지진을 느끼거나 지진해일 특보가 발령되면 지진해일 긴급대피장소나 높은 곳으로 대피합니다. 피할 시간이 없다면 주변에 있는 철근콘크리트로 된 튼튼한 건물의 3층 이상인 곳 또는 해발 고도 10m이상인 곳(언덕, 야산 등)으로 대피합니다.</p>
                <p style="margin-top:0px;">❍ 지진해일이 오기 전에는 해안의 바닷물이 갑자기 빠져나가거나, 기차와 같은 큰 소리를 내면서 다가오기도 합니다. 이러한 경우에는 높은 곳으로 대피합니다.</p>
                <p style="margin-top:0px;">❍ 지진해일은 한 번의 큰 파도로 끝나지 않고 수 시간 동안 여러 번 반복될 수 있습니다. 지진해일 특보가 해제될 때까지 낮은 곳으로 가지 않습니다.</p>
            </div>
            
            <h3 class="title_02">지진해일 내습 시 선박 위에 있다면 이렇게 대비합니다.</h3>
            <div class="preventTop_boxWrap">
                <p style="margin-top:0px;">❍ 해안가에서 조업 중인 선박은 지진해일 발생여부를 인지한 후, 시간적 여유가 있다면 선박을 수심이 깊은 지역으로 이동시킵니다.</p>
                <p style="margin-top:0px;">❍ 지진해일이 내습하면 항만 등에서 그 파고는 거대해지고 유속이 급격하게 증가하므로 선박의 안전에 특히 주의해야 합니다.</p>
                <p style="margin-top:0px;">❍ 선박에 대한 조치가 끝난 후에 자신이 육지에 있다면 동료들과 함께 신속히 고지대로 대피합니다.</p>
            </div>
            
            <div style="text-align: inherit; background-color: #f8f9fb; padding: 10px; margin-top: 12px; border: 0px solid;">               
                <p style="margin-top:0px; font-weight: bold;">❍ 지진해일의 특성 및 주의사항</p>
                <p style="margin-top:0px;">∙ 지진해일은 파도의 주기가 아주 긴 파장입니다.</p>
                <p style="margin-top:0px;">∙ 지진해일이 해안가에 도달하게 되면 5분에서 10분 간격으로 높은 파도가 계속적으로 밀려옵니다.</p>
                <p style="margin-top:0px;">∙ 지진해일은 수 시간동안 해안에 영향을 미치기 때문에 지진해일 특보가 해제될 때까지 안전한 대피장소에 머무는 것이 중요합니다.</p>
            </div>
        
        <div class="know_how_w">
            <div class="footnote_border">
                <div class="star_bulTxt_w">
                    <span class="star_bulTxt">*</span>
                    <span>자료제공 : 행정안전부 지진방재관리과 044-205-5193</span>
                </div>
            </div>
        </div>
    </div>
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 지진방재관리과 한구진(044-205-5192)</strong>
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