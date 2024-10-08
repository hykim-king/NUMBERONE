
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
<!-- -------------------------------------------------------- -->
<!-- 컨텐츠 시작                                              -->
<!-- -------------------------------------------------------- -->

<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">사회재난시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">자연우주물체추락</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>


    <h4 class="level2_title">자연우주물체추락시 국민행동요령</h4> 
    <div>
        <div class="ir">
        </div>
            <h4 class="title_02" style="">실내에 있을 경우</h4>
            
            <h4 class="title_03" style="">건물 내, 지하대피소가 있을 경우</h4>
            <br>• 우주물체 잔해물이 지상까지 추락가능성이 있을 경우, 신속하게 대피장소로 이동한다.(국민재난안전포털 등 참조)
            
            <h4 class="title_03" style="">건물 내, 지하대피소가 없을 경우</h4>
            <br>• 창문이나 출입문을 정면으로 보지말고 튼튼한 벽 또는 기둥 뒤로 대피한다.
            <br>• 책상이나 탁자 밑 등 머리를 보호할 수 있는 곳으로 대피한다.
            
            <h4 class="title_03" style="">대피 후 행동 요령</h4>
            <br>• 강한 폭발력에 대비하여 신체를 보호할 수 있도록 창문이나 출입구와 반대방향으로 엎드리고, 양손으로 눈과 귀를 막고 입을 벌린다.
            <br>• 재난방송을 청취하고, 지시에 따라 행동한다.
            
            <h4 class="title_03" style="">추락 완료 후 행동 요령</h4>
            <br>• 지진, 해일, 화재 등 2차 피해에 대비한다.
            <br>• 우주물체 추락 잔해물로 의심되는 물체를 발견할 경우 즉시 가까운 소방서나 경찰서에  신고한다.
            
            <h4 class="title_02" style="">실외에 있을 경우</h4>
            
            <h4 class="title_03" style="">근처에, 대피 가능한 장소가 있을 경우</h4>            
            <br>• 우주물체 잔해물이 지상까지 추락가능성이 있을 경우, 신속하게 가까운 대피 가능한 장소(지하대피소 등)로 이동하되, 주변에 화재가 발생하거나 무너질 가능성이 적은 곳으로 대피한다.

            <h4 class="title_03" style="">근처에, 대피 가능한 장소가  없는 경우</h4>           
            <br>• 소지하고 있는 물건 등을 이용하여 최대한 머리를 보호한다.

            <h4 class="title_03" style="">대피 후 행동 요령</h4>
            <br>• 강한 폭발력에 대비하여 신체를 보호할 수 있도록 추락하는 우주물체와 반대방향으로 엎드리고, 양손으로 눈과 귀를 막고 입을 벌린다.
            <br>• 재난방송을 청취하고, 지시에 따라 행동한다.

            <h4 class="title_03" style="">추락 완료 후 행동 요령</h4> 
            <br>• 지진, 해일, 화재 등 2차 피해에 대비한다. 
            <br>• 우주물체 추락 잔해물로 의심되는 물체를 발견할 경우 즉시 가까운 소방서나 경찰서에  신고한다.
            
        <img alt="자연우주물체추락시행동요령" id="img01" class="unload_rsc" margin="auto;" src="" style="margin-top:5px;width:100%"/>    
    </div>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 :과학기술정보통신부 거대공공연구정책과 이호일(044-202-4672)</strong>
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