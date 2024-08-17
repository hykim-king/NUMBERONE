
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
        <h3 class="level2_title">황사</h3>
        <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>

    
    <!-- 행동요령 본문내용 -->
    
    <div class="section01">
                    <h3 class="title_01">진행별 행동요령</h3>
                    <ul class="tablist" >
                        <li class="on" style="width:30%">
                            <a class="tabindexBtn"  onclick="return false" title="선택됨">황사발생 전 행동요령<br><span>(황사 위기경보「관심」단계 발령 시) </span></a>
                        </li>
                        <li style="width:30%">
                            <a class="tabindexBtn" onclick="return false">황사발생 중 행동요령<br><span>(황사 위기경보「주의」,「경계」,「심각」단계 발령 시) </span></a>
                        </li>
                        <li style="width:30%">
                            <a class="tabindexBtn" onclick="return false">황사발생 후 행동요령<br><span>(황사 위기경보 해제 시) </span></a>
                        </li>
                        
                    </ul>
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                     TV, 라디오, 인터넷 등에서 미세먼지 예 · 경보 상황을 수시로 확인하고,<br>
                                     황사 피해 예방을 위해 시설물을 점검합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">황사발생 전 행동요령 (황사 위기경보「관심」단계 발령 시)</h3> 
                              <p>
                                  <strong class="level4_title">1. 가정에서</strong>
                                        ∙ 미세먼지 예 · 경보 상황을 수시로 확인합니다.
                                    <br>∙ 황사가 실내로 들어오지 못하도록 창문 등을 점검합니다.
                                    <br>∙ 외출 시, 필요한 보호안경, 마스크, 긴소매 의복 등을 준비합니다.
                                    <br>∙ 노약자, 호흡기질환자 등은 실외활동을 자제합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">2. 교육기관에서</strong>
                                          ∙ 미세먼지 예 · 경보 상황을 수시로 확인합니다.
                                     <br/>∙ 등 · 하교시간 조정이나 단축수업, 실내수업 대체 등을 검토합니다.
                                     <br/>∙ 학생들의 비상연락망을 사전에 점검하고, 연락체계를 유지해 둡니다.
                                     <br/>∙ 교육기관에 마스크, 상비약 등이 구비되었는지 확인하고, 공기정화장치 등 시설물을 점검합니다.
                                     <br/>∙ 학부모에게 황사 행동요령을 알리고, 학생들을 대상으로 행동요령을 지도합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">3. 농가에서</strong>
                                          ∙ 미세먼지 예 · 경보 상황을 수시로 확인합니다.
                                     <br/>∙ 실외에 있는 가축은 축사 안으로 대피 준비를 합니다.
                                     <br/>∙ 노지에 방치 · 야적된 사료용 볏집 등에 비닐 등 피복물품을 준비합니다.
                                     <br/>∙ 동력분무기 등 황사 세척용 장비를 점검합니다.
                                     <br/>∙ 비닐하우스, 온실 등 시설물의 출입문과 환기창을 점검합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">4. 어르신보호시설에서</strong>
                                          ∙ 미세먼지 예 · 경보 상황을 수시로 확인합니다.
                                     <br/>∙ 어르신 건강상태를 확인하고, 황사발생을 대비해 위생점검을 합니다.
                                     <br/>∙ 보호시설에 마스크, 상비약 등이 구비되었는지 확인하고, 공기정화장치 등 시설물을 점검합니다.
                                     <br/>∙ 보호자에게 황사 행동요령을 알리고, 어르신을 대상으로 행동요령을 지도합니다.
                              </p>

                              <br>
                              <img id="img12" src="" class="unload_rsc" style="padding-left: 0%;width:40%;" alt=""/>
                              <img id="img13" src="" class="unload_rsc" style="padding-left: 0%;width:40%;" alt=""/>
                              
                              </div>
                          </div>
                        <div class="tabmenu02">
                            <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                        황사가 발생된 때에는 최대한 야외활동을 자제하고, 외출 시 꼭 마스크를 착용합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">황사발생 중 행동요령 (황사 위기경보「주의」,「경계」,「심각」단계 발령 시)</h3> 
                               <p>
                                  <strong class="level4_title">1. 가정에서</strong>                                  
                                        ∙ 미세먼지 예 · 경보 상황을 수시로 확인합니다.
                                    <br>∙ 창문을 닫고, 가급적 외출은 자제합니다. ※ 황사 위기경보 경계 · 심각단계가 발령된 경우는 실외활동을 금지합니다.
                                    <br>∙ 외출 시, 보호안경, 마스크를 착용하고, 귀가 후 손과 발 등을 깨끗이 씻어 줍니다.
                                    <br>∙ 황사에 노출된 채소, 과일 등 농수산물은 충분히 세척 후 섭취합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">2. 교육기관에서</strong>
                                          ∙ 미세먼지 예 · 경보 상황을 수시로 확인합니다.
                                     <br/>∙ 체육활동, 현장학습 등 실외 및 야외활동은 제한합니다. ※ 황사 위기경보 경계 · 심각단계가 발령된 경우는 실외활동을 금지합니다.
                                     <br/>∙ 등 · 하교시간 조정 및 단축수업 등을 검토합니다. ※ 황사 위기경보 경계 · 심각단계가 발령된 경우는 등 · 하교시간 조정 및 임시 휴업 등을 검토합니다.
                                     <br/>∙ 학생들은 등 · 하교 시, 마스크 등 보호장비를 착용합니다.
                                     <br/>∙ 창문을 닫고, 공기정화장치를 가동합니다.
                                     <br/>∙ 황사에 노출된 학생들의 건강상태를 수시로 점검합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">3. 농가에서</strong>
                                          ∙ 미세먼지 예 · 경보 상황을 수시로 확인합니다.
                                     <br/>∙ 실외에 있는 가축은 축사 안으로 신속히 대피시킵니다.
                                     <br/>∙ 비닐하우스, 온실 및 축사의 출입문과 창문을 닫아 바깥 공기가 들어오지 않게 합니다.
                                     <br/>∙ 노지에 방치 · 야적된 사료용 건초, 볏집 등을 비닐이나 천막으로 덮습니다.
                              </p>
                              <p>
                                  <strong class="level4_title">4. 어르신보호시설에서</strong>
                                          ∙ 미세먼지 예 · 경보 상황을 수시로 확인합니다.
                                     <br/>∙ 실외 및 야외활동은 제한합니다. ※ 황사 위기경보 경계 · 심각단계가 발령된 경우는 실외활동을 금지합니다.
                                     <br/>∙ 창문을 닫고, 공기정화장치를 가동합니다.
                                     <br/>∙ 호흡기 질환자 등은 진료를 받는 등 특별히 관리합니다.
                              </p>

                              <br>
                              <img id="img14" src="" class="unload_rsc" style="padding-left: 0%;width:40%;" alt=""/>
                              <img id="img15" src="" class="unload_rsc" style="padding-left: 0%;width:40%;" alt=""/>
                           </div>
                        </div>
                        <div class="tabmenu03">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                        황사가 지나간 후 실내 · 외 방역 및 환기 · 청소를 실시하고, 민감자(어린이·노인 등)의 건강상태를 살피도록 합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">황사발생 후 행동요령 (황사 위기경보 해제 시) </h3> 
                                 <p>
                                  <strong class="level4_title">1. 가정에서는</strong>                                     
                                          ∙ 실내공기를 환기해 주고, 황사에 노출되어 오염된 물품은 충분히 세척 후 사용합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">2. 교육기관에서는</strong>
                                          ∙ 학교 실내 · 외 방역 및 청소를 실시하고, 학생들의 건강을 살펴서 감기 · 안질환자 등은 쉬게 하거나 일찍 귀가시킵니다.
                              </p>
                              <p>
                                  <strong class="level4_title">3. 농가에서는</strong>
                                          ∙ 축사, 방목자 사료조 및 가축과 접촉되는 기구류 등은 세척하거나 소독을 실시합니다.
                                     <br/>∙ 황사에 노출된 가축은 몸에 묻은 황사를 털어낸 후 구연산 소독제 등으로 소독해 줍니다.
                                     <br/>∙ 가축 질병의 발생 유무를 관찰하고, 병든 가축이 발견되면 즉시 신고합니다.
                                     <br/>∙ 비닐하우스, 온실 등에 쌓인 황사를 제거해줍니다.
                              </p>
                              <p>
                                  <strong class="level4_title">4. 어르신보호시설에서는</strong>
                                          ∙ 보호시설 실내 · 외 방역 및 청소를 실시하고, 어르신들의 건강을 살펴서 쉬게 하거나 병원 진료를 받도록 합니다.
                              </p>

                              <br>
                              <img id="img16" src="" class="unload_rsc" style="padding-left: 0%;width:40%;" alt=""/>
                              <img id="img17" src="" class="unload_rsc" style="padding-left: 0%;width:40%;" alt=""/>
                           </div>
                        </div>
                        
                    </div>
                </div>
    
                   <div class="section02">
                    <h3 class="title_01">주요기관 연락처</h3>
                    <ul class="tablewrap">
                        <li style="height:220px;">
                            <p>1. 위기상황, 긴급상황 시 신고전화</p>
                            <p>
                                ∙ 재난신고 119, 범죄신고 112, 민원 상담 110<br>
                                ∙ 행정안전부 중앙재난안전상황실 044)205-1541~3
                            </p>
                        </li>
                        <li style="height:220px;">
                            <p>2. 행정안전부 국민행동요령, 대처사항 등 안내</p>
                            <p>
                                ∙ 행정안전부 홈페이지 <a href="http://www.mois.go.kr" target="_blank" title="새창열기" >http://www.mois.go.kr</a><br>
                                ∙ <e>행정안전부 국민재난안전포털</e> <a href="http://www.safekorea.go.kr" target="_blank" title="새창열기">http://www.safekorea.go.kr</a><br>
                                ∙ 스마트폰 어플리케이션 ‘안전디딤돌’
                            </p>
                        </li>
                        <li style="height:220px;">
                            <p>3. 유관기관 연락처 및 홈페이지</p>
                            <p>
                                ∙ 기상청 02)2181-0503, <a href="http://www.kma.go.kr" target="_blank" title="새창열기">http://www.kma.go.kr</a><br> 
                                ∙ 국립수의과학검역원 : <a href="http://www.qia.go.kr/" target="_blank" title="새창열기">http://www.qia.go.kr/</a><br> 
                                ∙ 농림축산식품부 044)201-1474 <a href="http://www.mafra.go.kr" target="_blank" title="새창열기">http://www.mafra.go.kr</a><br> 
                                ∙ 한국환경공단 : <a href="http://www.airkorea.or.kr" target="_blank" title="새창열기">http://www.airkorea.or.kr</a><br> 
                                ∙ 교육부 044)203-6355, <a href="http://www.moe.go.kr" target="_blank" title="새창열기">http://www.moe.go.kr</a><br> 
                            </p>
                        </li>
                    </ul>
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