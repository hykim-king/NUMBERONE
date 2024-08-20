

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

<!-- 낙뢰 -->
<script>

//이전화면
function agobeforeView_onclick() {
     window.history.back();
};


function prBtn_1_onclick() {
    location.href = "/idsiSFK/neo/sfk/cs/csc/bbs_conf.jsp?menuSeq=593&bbs_no=9&viewtype=read&bbs_ordr=2623";
}
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
        <h3 class="level2_title">낙뢰</h3>

        <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>

        <!-- 본문 내용 -->
            <div class="section01">
                    <h3 class="title_01">진행별 행동요령</h3>
                    <ul class="tablist">
                        <li class="on" style="width:30%">
                            <a class="tabindexBtn" onclick="return false" title="선택됨">낙뢰 예상 시</a>
                        </li>
                        <li style="width:30%">
                            <a class="tabindexBtn" onclick="return false">낙뢰가 발생할 때</a>
                        </li>
                        <li style="width:30%">
                            <a class="tabindexBtn" onclick="return false">응급처치 행동요령</a>
                        </li>
                       <!--  <li style="width:23%">
                            <a onclick="return false">낙뢰 관련 정보</a>
                        </li> -->
                    </ul>
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3>
                              <div class="box">
                                 <p>
                                     TV, 라디오, 인터넷 등에서 태풍·호우가 예보된 때에는 낙뢰를 동반하는 경우가 많으므로 사전에 거주 지역에 영향을<br>
                                     주는 시기를 파악하고, 낙뢰가 발생되기 전에 피해를 예방하기 위한 조치를 취하도록 합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">상세 행동요령</h3>
                              <p>
                                  <strong class="level4_title">1. TV, 라디오, 인터넷 등에서 천둥·번개를 동반한 호우 발표 시 주변인들과 함께 피해에 대비합니다.</strong>
                                  ∙ 산 위 암벽이나 키 큰 나무 밑은 위험하므로 낮은 자세로 안전한 곳으로 빨리 대피합니다.<br>
                                  ∙ 등산용 스틱이나 우산 같이 긴 물건은 몸에서 멀리합니다.<br>
                                  ∙ 평지에서는 몸을 낮게하고 물기가 없는 움푹 파인 곳으로 대피합니다.<br>
                                  ∙ 골프, 낚시 등 야외활동 중일 때 장비를 몸에서 떨어뜨리고, 안전한 곳으로 대피합니다.
                              </p>
                            <div>
                                <ul class="contextIndent_twoDepList">
                                    <li class="prevent_img">
                                        <img id="img01" src="" class="unload_rsc" alt="낙뢰 사전준비"/>
                                    </li>
                                </ul>
                            </div>
                           </div>
                        </div>
                        <div class="tabmenu02">
                            <div class="point">
                              <h3 class="title_02">낙뢰중</h3>
                              <div class="box">
                                 <p>
                                     ∙ 번개를 보면 신속히 안전한 곳으로 대피하고, 집안에서는 외출을 자제합니다. 더불어 30-30낙뢰 안전규칙을 지켜야 합니다.<br/>∙ 30-30 안전규칙을 지킵니다. <br/>번개가 친 이후 30초 이내에 천둥이 울리면, 즉시 안전한 장소로 대피합니다.<br/>마지막 천둥소리가 난 후 30분 정도 더 기다린 후에 움직입니다.

                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">핵심 행동요령</h3>
                              <p>
                                  <strong class="level4_title">1. 가정에서는 가족들과 함께 피해에 대비합니다.</strong>
                                  ∙ 가옥 내에서는 전화기나 전기제품 등의 플러그를 빼어 두고, 전등이나 전기제품으로부터 1m 이상의 거리를 유지합니다.<br>
                                  ∙ 창문을 닫고, 감전 우려가 있으므로 샤워나 설거지 등을 하지 않습니다.<br/>
                                <img id="img02" class="unload_rsc" alt="낙뢰 중">
                              </p>
                              <p>
                                  <strong class="level4_title">2. 야외에서는 주변인들과 함께 위험지역을 신속히 벗어납니다.</strong>
                                  ∙ 갑자기 하늘에 먹구름이 끼면서 돌풍이 몰아칠 때, 특히 바람이 많은 산골짜기 위의 정상 등지에서는 낙뢰 위험이 크므로 신속히 하산합니다.
                                 <br/>∙ 높은 곳은 위험하므로 정상부에서는 낙뢰 발생 시 신속히 낮은 지대로 이동합니다.
                                 <br/>∙ 번개를 본 후 30초 이내에 천둥소리를 들었다면 신속히 안전한 장소로 대피하여 즉시 몸을 낮추고 물이 없는 움푹 파인 곳이나 동굴 안으로 대피합니다.
                                 <br/>∙ 정상부 암벽 위나 키 큰 나무 밑은 위험하므로 즉시 안전한 장소로 이동한다.
                                 <br/>∙ 등산용 스틱이나 우산같이 긴 물건은 땅에 뉘어 놓고, 몸에서 떨어뜨립니다.
                                 <br/>∙ 대피 때에는 지면에서 10cm 정도 이상 높은 절연체 위에 있는 것이 좋습니다.
                              </p>
                              <p>
                              <img id="img03" class="unload_rsc" alt="낙뢰 중">
                              </p>

                              

                           </div>
                        </div>
                        <div class="tabmenu03">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3>
                              <div class="box">
                                 <p>
                                     낙뢰에 의한 감전 및 화재 사고 시 가능한 한 빠른 응급구조를 위해<br>
                                     구조서비스(119)에 연락하고 최대한 빨리 응급처치를 합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">낙뢰에 맞은 때</h3>
                              <p>
                                  ∙ 낙뢰로부터 안전한 장소로 주변인들과 함께 피해자를 옮기고 의식 여부를 살핍니다.
                                  <br/>∙ 의식이 없으면 즉시 호흡과 맥박의 여부를 확인하고 호흡이 멎어 있을 때에는 인공호흡을, 맥박도 멎어 있으면 인공호흡과 함께 심장 마사지를 합니다. 또한 119 또는 인근 병원에 긴급 연락하고, 구조요원이 올 때까지 주변인들과 함께 피해자를 응급조치 하고 피해자의 체온을 유지시킵니다.
                                  <br/>∙ 피해자가 맥박이 뛰고 숨을 쉬고 있다면, 주변인들과 함께 피해자의 다른 상처를 가능한 빨리 찾습니다. 몸에서 낙뢰가 들어가고 빠져 나온 부위의 화상을 체크하며,신경계 피해, 골절, 청각과 시각의 손상을 체크합니다.
                                  <br/>∙ 의식이 있는 경우에는 주변인들과 함께 피해자 자신이 가장 편한 자세로 안정케 합니다. 감전 후 대부분 환자가 전신 피로감을 호소하기 마련입니다. 환자가 흥분하거나 떠는 경우에는 말을 거는 등의 방법으로 환자가 침착해지도록 합니다.
                                  <br/>∙ 등산 등 즉시 의사의 치료를 받을 수 없는 장소에서 사고가 일어나더라도 절대로 단념하지 말고 필요하다면 인공호흡, 심장 마사지, 지혈 등의 처치를 계속 합니다.
                                  <br/>∙ 환자의 의식이 분명하고 건강해 보여도, 감전은 몸의 안쪽 깊숙이까지 화상을 입히는 경우가 있으므로 빨리 병원에서 응급 진찰을 받을 필요가 있습니다.
                              </p>
                           </div>
                        </div>
                        <div class="tabmenu04">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3>
                              <div class="box">
                                 <p>
                                     낙뢰에 대한 기상정보을 알아두고 태풍·호우 시에 즉시 대처할 수 있도록 합니다.
                                 </p>
                              </div>
                           </div>
                           
                        </div>
                    </div>
                </div>


               <div class="section02">
                    <h3 class="title_01">주요기관 연락처</h3>
                    <ul class="tablewrap">
                        <li style="height:200px;">
                            <p>1. 위기상황, 긴급상황 시 신고전화</p>
                            <p>
                                ∙ 재난신고 119, 범죄신고 112, 민원 상담 110<br>
                                ∙ 행정안전부 중앙재난안전상황실 044)205-1542~3
                            </p>
                        </li>
                        <li style="height:200px;">
                            <p>2. 행정안전부 국민행동요령, 임시피난시설 등 안내</p>
                            <p>
                                ∙ 행정안전부 홈페이지 <a href="http://www.mois.go.kr" target="_blank" title="새창열기">http://www.mois.go.kr</a><br>
                                ∙ <e>행정안전부 국민재난안전포털</e> <a href="http://www.safekorea.go.kr" target="_blank">http://www.safekorea.go.kr</a><br>
                                ∙ 스마트폰 어플리케이션 ‘안전디딤돌’
                            </p>
                        </li>
                        <li style="height:200px;">
                            <p>3. 유관기관 연락처 및 홈페이지</p>
                            <p>
                                ∙ 기상청 02)2181-0503, <a href="http://www.kma.go.kr" target="_blank" title="새창열기">http://www.kma.go.kr</a><br>
                            </p>
                        </li>
                    </ul>
                </div>

    <h4 class="level2_title">국민행동요령</h4>
    <h4 class="title_02" style="font-weight: bold;">낙뢰</h4>
    <div>
    <ul class="contextIndent_twoDepList">
        <li style="">
            <img id="img14" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="행정안전부 로고"/>
        </li>
    </ul>
    </div>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img08" src="" class="unload_rsc" alt="낙뢰 예보시 외출을 삼가고 외부에 있을 땐 자동차 안, 건물 안, 지하 등 안전한 곳으로 대피합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 낙뢰 예보시 외출을 삼가고 외부에 있을 땐 자동차 안, 건물 안, 지하 등 안전한 곳으로 대피합니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img09" src="" class="unload_rsc" alt="전기제품의 플러그를 빼고, 1m이상 거리를 유지합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 전기제품의 플러그를 빼고, 1m이상 거리를 유지합니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img10" src="" class="unload_rsc" alt="산 위 암벽이나 키 큰 나무 밑은 위험하므로 낮은 자세로 안전한 곳으로 빨리 대피합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 산 위 암벽이나 키 큰 나무 밑은 위험하므로 낮은 자세로 안전한 곳으로 빨리 대피합니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img11" src="" class="unload_rsc" alt="등산용 스틱이나 우산 같이 긴 물건은 몸에서 멀리합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 등산용 스틱이나 우산 같이 긴 물건은 몸에서 멀리합니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img12" src="" class="unload_rsc" alt="평지에서는 몸을 낮게하고 물기가 없는 움푹 파인 곳으로 대피합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 평지에서는 몸을 낮게하고 물기가 없는 움푹 파인 곳으로 대피합니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img13" src="" class="unload_rsc" alt="골프, 낚시 등 야외활동 중일 때 장비를 몸에서 떨어뜨리고, 안전한 곳으로 대피합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 골프, 낚시 등 야외활동 중일 때 장비를 몸에서 떨어뜨리고, 안전한 곳으로 대피합니다.</strong>
    <br>
    <h4 class="level3_title" style="float:left;">∙30-30 안전규칙을 지킵니다.</h4><br><br>
    <h4 class="level4_title" style="float:left;">번개가 친 이후 30초 이내에 천둥이 울리면, 즉시 안전한 장소로 대피합니다.</h4><br><br>
    <h4 class="level4_title" style="float:left;">마지막 천둥소리가 난 후 30분 정도 더 기다린 후에 움직입니다.</h4>
    
    <br>
    <br>
    <div style="border-top: solid 1.5px #dadada;">
        <strong class="level4_title">소관부서 : 기후재난대응과 김환기(044-205-6369)</strong>
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