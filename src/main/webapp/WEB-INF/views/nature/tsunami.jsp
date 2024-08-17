
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
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
        <h3 class="level2_title">해일</h3>
        <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>

    <div class="section01">
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="detail">
                              <h3 class="title_02">해일 특보시 국민행동요령</h3>
                              <p>
                                · TV나 라디오를 통한 기상상황이나 해일경보 등을 주의 깊게 들읍시다.
                                <br>
                                · 해안 저지대 주민은 비상상황 발생 시를 대비하여 대피장소 및 대피방법을 미리 알아둡시다.
                                <br>
                                · 가까운 행정기관의 전화번호는 온 가족이 알 수 있는 곳에 두고 이웃 간의 연락방법을 알아둡시다.
                                <br>
                                · 공사 중인 현장에서는 작업을 중지하고 떠내려가거나 파손될 우려가 있는 기자재들은 안전한 곳으로 이동시킵시다.
                                <br>
                                · 기상청의 해일경보, 시·군·구청 또는 소방서의 대피명령이 있을 때 즉시 대피합시다.
                                <br>
                                · 해일이 밀려들 때 대피합시다.
                                <br>
                                · 1층보다는 2층, 2층보다는 3층, 때에 따라서는 지붕이 안전하니 높은 곳으로 이동합시다.
                                <br>
                                · 목조 주택은 떠내려갈 가능성이 있으니 벽돌이나 철근콘크리트 건물로 이동합시다.
                                <br>
                                · 해안에 가까울수록 위험하므로 해일이 발생하면 해안에서 멀리 떨어진 급경사가 없고 지형이 높은 안전한 곳으로 이동합시다.
                                <br>
                                · 해안에서 멀리 떨어진 곳은 직접적인 파도의 영향이 없으므로 바닥에서 높이가 2~3m만 높아도 비교적 안전합니다.
                              </p>
                              <img id="img02" class="prevent_img01 unload_rsc" alt="무리하게 건너지 말고 119에 구조요청을 해야겠어" src=""/>
                              <h3 class="title_02">특보기준</h3>
                              <p>
                                · 명칭 : 폭풍해일
                                <br>
                                · 주의보 : 천문조, 폭풍·저기압 등 복합영향으로 해수면이 상승하여 발효 기준값 이상(별도 지정)
                                <br>
                                · 경보 : 천문조, 폭풍·저기압 등 복합영향으로 해수면이 상승하여 발효 기준값 이상(별도 지정)
                              </p>
                              <h3 class="title_02">Q & A</h3>
                              <p>
                                Q. 폭풍해일 피해방지 행동요령은?
                                A. - 평소 대피장소 및 대피방법을 미리 알아두고, TV나 라디오를 통해 기상정보나 해일경보 등 수시로 확인하여 폭풍해일이 예상될 경우 신속히 높은 곳으로 대피하여야 합니다.
                              </p>
                            
                            
                            <br>
                            <br>
                            <div style="border-top: solid 1.5px #dadada;">
                                <strong class="level4_title">소관부서 : 자연재난대응과 신지윤(044-205-5233)</strong>
                            </div>
                            
                           </div>
                        </div>
                    </div>
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