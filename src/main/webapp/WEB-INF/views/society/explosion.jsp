
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
        <h3 class="level2_title">폭발</h3>

        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <!-- 행동요령 본문 -->
    
            <div class="section01">
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="detail">
                              <h3 class="title_02">가스폭발사고 발생시 행동요령</h3> 
                              <p>
                              <strong class="level4_title">1. 폭발사고 예방은</strong>
                                - 가스가 누출되었을 때에는 체류가스를 밖으로 내 보내는 등 즉시 환기를 하고, 전기스위치나 화기 사용을 금지해야 합니다.
                                <br>
                                - 먼지가 많이 발생하는 밀폐공간 등에서는 집진설비를 설치해야 하며, 화기사용을 억제해야 합니다.
                                <br>
                                - 과열이 되기 쉬운 가전제품, 보일러 등은 무리해서 사용하지 말고, 항상 안전밸브 등을 확인 점검해야 합니다.
                                <br>
                                - 휴대전화, 노트북 등의 축전지는 장시간 또는 고온의 장소에서 사용을 억제하고, 금속물질과 함께 보관하거나 무리한 압력을 가하지 맙시다.
                                <br>
                                - 휴대용 부탄가스, 헤어스프레이 등 폭발성 용기는 반드시 구멍을 뚫어 잔류가스를 배출한 후 버립시다.
                                <br>
                                - 여름철에 가스라이터 등 폭발성 위험물질을 자동차에 두고 내리지 맙시다.
                                <br>
                                - 의심이 되는 폭발물을 발견 시에는 마음대로 분해하지 말고 가까운 경찰서나 군부대에 신고합시다.
                              </p>
                              <p>
                              <strong class="level4_title">2. 폭발사고가 발생했을 때는</strong>
                                - 건물 안에서는 2차 폭발에 대비하여, 신속히 밖으로 대피하여야 합니다.
                                <br>
                                - 폭발사고 때는 굉음으로 청각 장애를 당할 수 있으므로, 귀를 막고 대피합시다.
                                <br>
                                - 폭발사고 시에는 멀리 떨어진 장소, 차폐 벽이 있는 장소 등 안전한 곳으로 신속히 대피하여야 합니다.
                                <br>
                                - 연기와 가스에 의한 질식 등에 대비 바람이 불어오는 방향으로 파편이나 낙하물에 주의하면서 대피하여야 합니다.
                                <br>
                                - 부상자는 즉시 안전한 장소로 먼저 옮긴 후에 응급조치를 하여야 합니다.
                                <br>
                                - 추가 폭발에 대비 전기 스위치와 화기사용 등을 금하고, 가스 중간밸브를 잠근 후 창문을 열어 자연환기를 시켜야 합니다.
                              </p>
                  
                              <h3 class="title_02">Q & A</h3> 
                              <p>
                                    Q. 가스폭발사고 예방 및 대응법은 ?
                                    <br>
                                    A. 
                                    <br>
                                    - 예방으로 가스가 누출되었을 때에는 즉시 환기, 화기 사용을 금지.
                                    <br>
                                    - 휴대전화와 노트북의 배터리는 장시간 사용을 자제하고 금속과 함께 보관하거나 무리한 압력을 가하지 않는다.
                                    <br>
                                    - 대응법으로는 2차 폭발에 대비한 신속히 밖으로 대피한다.
                                    <br>
                                    - 폭발사고때는 굉음으로 청각을 다칠수 있으니 귀를 막고 대피
                                    <br>
                                    - 질식에 대비해 바람이 불어오는 방향으로 파편에 주의해 대피
                              </p>
                              <h3 class="title_02">알아두면 좋은 재난정보</h3> 
                              <p>
                              · 폭발사고 주의<br>
                                2020년~2022년 동안 발생한 가스누출(폭발) 사고 통계를 살펴보면 공동주택·단독주택에서 37% 발생하였고 자동차에서 14% 발생한 것으로 나타나며,<br> 
                                이 기간 중 폭발사고로 323명이 재해를 입었고 이 중 19명이 사망한 것으로 나타난다.
                              </p>
                            
                            <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
                            <strong class="level4_title"> 소관부서 : 소방청 생활안전과 김미진(044-205-7666)<br> 소관부서 : 산업교통재난대응과(044-205-6334)</strong>
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