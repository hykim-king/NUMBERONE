
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
        <h3 class="level2_title">가뭄</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <!-- 행동요령 본문내용 -->
            <div class="section01">
                    <h3 class="title_01">진행별 행동요령</h3>
                    <ul class="tablist">
                        <li class="on">
                            <a class="tabindexBtn"  onclick="return false" title="선택됨">가뭄 시 생활 행동요령</a>
                        </li>
                        <li>
                            <a class="tabindexBtn" onclick="return false">가뭄 시 농촌 행동요령</a>
                        </li>
                        <li>
                            <a class="tabindexBtn" onclick="return false">가뭄과 관련된 정보</a>
                        </li>
                    </ul>
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     평사시 생활 속에서 가족 모두가 함께 작지만 소중한 물 절약 운동에 참여해 가뭄을 슬기롭게 극복합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">일상 생활에서는</h3> 
                              <p>
                                  <strong class="level4_title">1. 주방이나 세탁할 때에는 물을 절약할 수 있도록 가족 모두가 함께 동참합니다.</strong>
                                    ∙ 식기류 세척 시에는 물을 틀어 놓지 말고 받아서 사용합니다.
                                    <br>
                                    ∙ 세탁할 때는 한꺼번에 모아서 합니다.
                                    <br>
                                    ∙ 채소나 과일을 씻을 때에는 물을 틀어 놓지 말고 받아서 사용합니다.
                                    <br>
                                    ∙ 수도꼭지나 관의 누수를 철저히 점검합니다.
                              </p>
                           
                              <p>
                                  <strong class="level4_title">2. 화장실이나 욕실에서는 물을 절약할 수 있도록 가족 모두가 함께 동참합니다.</strong>
                                    ∙ 세수 할 때는 물을 틀어 놓지 말고 받아서 사용합니다.
                                    <br>
                                    ∙ 목욕 할 때는 물을 틀지 말고 샤워기로 적당량만 사용합니다.
                                    <br>
                                    ∙ 머리를 감는 동안 물은 잠그고, 샴푸, 린스 사용량을 줄입니다.
                                    <br>
                                    ∙ 양치질을 할 때는 반드시 컵을 사용합니다.
                                    <br>
                                    ∙ 면도 할 때는 틀어놓지 말고, 세면기에 약간만 받아놓고 면도기를 씻습니다.
                                    <br>
                                    ∙ 절약형 샤워 꼭지나 수량 조절기가 부착되어 있는 것을 사용합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">3. 실외에서는 물을 절약할 수 있도록 가족 모두가 함께 동참합니다.</strong>
                                    ∙ 정원이나 꽃밭에는 한 번 사용한 허드렛물을 재사용합니다.
                                    <br>
                                    ∙ 나무나 큰 식물에는 윗덮개를 하여 수분의 증발과 잡초의 번식을 막습니다.
                                    <br>
                                    ∙ 건물 앞 인도나 도로변 청소는 빗자루를 사용하고 물청소는 가급적 자제합니다.
                                    <br>
                                    ∙ 세차할 때는 자동잠금장치가 있는 호스를 이용하고, 적당량의 물을 받아서 비누칠한 후 세차합니다.
                                    <br>
                                    ∙ 호스관, 꼭지, 연결부 등의 누수를 방지합니다.
                              </p>
                           </div>
                        </div>
                        <div class="tabmenu02">
                            <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     관정 개발, 논물 가두기 등 농업용수를 확보하고, 논두렁 바르기, 비닐 깔기 등 농업용수 손실을 방지하여 지역 주민들과 함께 가뭄을 슬기롭게 극복합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">농촌에서는</h3> 
                              <p>
                                  <strong class="level4_title">1. 논농사 시에는 물을 사전에 확보하기 위해 지역 주민들과 함께 물 절약에 동참합니다.</strong>
                                    ∙ 물을 끌어올 수 있는 시설(수로)이나 물을 퍼 올릴 수 있는 장비(양수기), 파종기, 전기시설, 송수호스는 수시 점검합니다.
                                    <br>
                                    ∙ 논에 물 가두기 등을 실시합니다.
                                    <br>
                                    ∙ 물 손실 방지를 위하여 수로, 논두렁 등을 정비합니다.
                                    <br>
                                    ∙ 못자리 급수 조절 등을 통한 모(벼) 노화 방지를 합니다.
                                    <br>
                                    ∙ 집단못자리, 논물 걸러대기(간단관개), 건답직파 등을 통해 물 절약을 합니다.
                                    <br>
                                    ∙ 모내는 시기가 늦어 모를 못낸 논은 다른 작물을 파종합니다.
                                    <br>
                                    ∙ 모 활착 기간 중에는 최소한 습기를 유지합니다.
                                    <br>
                                    ∙ 물이 가장 필요한 활착기(5~6월), 유수형성기(6~7월), 수잉기(7~8월)에 중점급수를 실시합니다.
                                    <br>
                                    ∙ 관정 등 이용 가능한 용수원을 사전에 개발합니다.
                                    <br>
                                    ∙ 대파용 종자 및 대체작물재배 계획을 미리 세워둡니다.
                              </p>
                              
                              <p>
                                  <strong class="level4_title">2. 밭작물 재배 시에는 물 부족으로 인한 피해를 줄이기 위해 지역 주민들과 함께 동참합니다.</strong>
                                    ∙ 밭작물 재배지역 비닐 피복하기 및 절수 재배를 합니다.
                                    <br>
                                    ∙ 이동식 스프링클러 등을 이용하여 농작물이 시들지 않도록 관리합니다.
                                    <br>
                                    ∙ 밭작물 토양 수분이 알맞을 때 파종, 해충방제 등 육묘 관리를 합니다.
                                    <br>
                                    ∙ 토양 피복이 가능한 곳에서는 볏짚ㆍ비닐을 깔아 토양 수분 증발을 최소화합니다.
                                    <br>
                                    ∙ 밭작물 파종·정식 지연 지역은 늦게 심을 수 있는 대체작물을 재배합니다.
                              </p>
                              
                              
                              <h3 class="title_02">가뭄 단계별 국민 행동요령</h3> 
                                  <p>
                                  <strong class="level4_title">■ 농업용수</strong>
                                  <strong class="level4_title">1. 관심</strong>
                                    ∘논 물걸러대기, 비닐피복 등의 절수재배
                                    <br>
                                    ∘용배수로 청소나 수초제거 등 수로관리
                                    <br>
                                    ∘절수영농계획 수립
                                    <br>
                                   <strong class="level4_title">2. 주의</strong>
                                    ∘물을 끌어올 수 있는 시설(수로)이나 물을 퍼 올릴 수 있는 장비(양수기), 호스 등 점검·정비
                                    <br>
                                    ∘배수로･하천의 퇴수 양수
                                    <br>
                                    ∘용수 절약
                                    <br>
                                    ∘절수영농계획 실천
                                    <br>
                                    <strong class="level4_title">3. 경계</strong>
                                    ∘물을 끌어올 수 있는 시설(수로)이나 물을 퍼 올릴 수 있는 장비(양수기), 호스 등 점검·정비
                                    <br>
                                    ∘배수로･하천의 퇴수 양수
                                    <br>
                                    ∘용수 절약
                                    <br>
                                    ∘절수영농계획 실천
                                    <br>
                                    ∘농업용수 확보가 원활하지 않아 가뭄이 우려되는 지역에서는 관정·우물 등 용수원 개발
                                    <br>
                                    ∘배수로에 흘러나가는 물이 없도록 물꼬 관리
                                    <strong class="level4_title">4. 심각</strong>
                                    ∘물을 끌어올 수 있는 시설(수로)이나 물을 퍼 올릴 수 있는 장비(양수기), 호스 등 점검·정비
                                    <br>
                                    ∘배수로･하천의 퇴수 양수
                                    <br>
                                    ∘용수 절약
                                    <br>
                                    ∘절수영농계획 실천
                                    <br>
                                    ∘지하수, 주변 하천수 등 이용 가능한 물을 끌어와 급수하기
                                    <br>
                                    ∘모내기 불가 및 파종지연 지역 타작물 재배
                                    
                                    <strong class="level4_title">■ 생활 및 공업용수</strong>
                                    <strong class="level4_title">1. 관심</strong>
                                    ∘낭비되는 물이 없는지 점검하기
                                    <strong class="level4_title">2. 주의</strong>
                                    ∘낭비되는 물이 없는지 점검하기
                                    <br>
                                    ∘가정, 학교 등에서 물 절약 실천하기(양치컵 및 설거지 통 사용, 샤워시간 줄이기 등)
                                    <strong class="level4_title">3. 경계</strong>
                                    ∘낭비되는 물이 없는지 점검하기
                                    <br>
                                    ∘가정, 학교 등에서 물 절약 실천하기(양치컵 및 설거지 통 사용, 샤워시간 줄이기 등)
                                    <br>
                                    ∘절수용품 설치․사용하기
                                    <br>
                                    ∘빗물 및 재활용수 이용하기
                                    <strong class="level4_title">4. 심각</strong>
                                    ∘낭비되는 물이 없는지 점검하기
                                    <br>
                                    ∘가정, 학교 등에서 물 절약 실천하기(양치컵 및 설거지 통 사용, 샤워시간 줄이기 등)
                                    <br>
                                    ∘절수용품 설치․사용하기
                                    <br>
                                    ∘빗물 및 재활용수 이용하기
                                    <br>
                                    ∘국가 가뭄대응 단계별 대응요령에 적극 동참하기(제한급수 등)
                                  </p>
                           
                           </div>
                        </div>
                        <div class="tabmenu03">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     가뭄에 대한 기관별 가뭄 정보를 통합한 가뭄 예ㆍ경보를 통해 농업, 생활 가뭄 등에 대비합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">가뭄 예ㆍ경보</h3> 
                              <p>
                                  ∙ 가뭄 관련 정보를 기관별* 목적과 업무 특성에 따라 별도로 생산ㆍ가공하고, 부처 간 연계성이 부족하여 선제적 대응 및 실질적인 정보 제공에 한계가 있습니다. 이에 가뭄에 대한 사전 예측ㆍ예방 능력 강화를 위해 기관별 가뭄 정보를 통합한 가뭄 예ㆍ경보제를 17. 1월부터 본격적으로 실시하고 있습니다.<br>
                                  　* 행정안전부(총괄), 농림축산식품부(농업적 가뭄), 환경부(수문학적 가뭄), 기상청 (기상학적 가뭄)
                              </p>
                            <div class="description_box" style="text-align: inherit;">
                                    <p class="description_fcBlack_txt" style="text-align: center;margin-bottom: 20px;"><b style="font-size: 20px;padding: 10px;">가뭄 예ㆍ경보 발표방법</b></p>
                                    <p class="description_fcBlack_txt">∙ (발표주체) 행정안전부(관계부처* 공동명의)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* 행안부, 농식품부, 환경부, 기상청
                                        <br/>∙ (발표시기) 매월 10일 발표, 필요시(수시)
                                        <br/>∙ (발표지역) 특별ㆍ광역ㆍ자치시도 및 시ㆍ군별로 실시
                                        <br/>∙ (발표내용) 현재, 1개월 전망, 3개월 전망으로 구분
                                        <br/>∙ (표기방법) 기상, 생활ㆍ공업, 농업 용수별로 구분, 지도에 색깔로 표시하고 지역 명시
                                    </p>
                            </div>
                           
                           </div> 
                        </div>
                    </div>
                </div>
    
    
                <div class="section02">
                    <h3 class="title_01">주요기관 연락처</h3>
                    <ul class="tablewrap">
                        <li>
                            <p>1. 위기상황, 긴급상황 시 신고전화</p>
                            <p>
                                ∙ 재난신고 119, 범죄신고 112, 민원 상담 110<br>
                                ∙ 행정안전부 중앙재난안전상황실 044)205-1541~3
                            </p>
                        </li>
                        <li>
                            <p>2. 행정안전부 국민행동요령, 임시주거실 등 안내</p>
                            <p>
                                ∙ 행정안전부 홈페이지 <a href="http://www.mois.go.kr" target="_blank"  title="새창열기">http://www.mois.go.kr</a><br>
                                ∙ 행정안전부 국민재난안전포털 <a href="http://www.safekorea.go.kr" target="_blank"  title="새창열기">http://www.safekorea.go.kr</a><br>
                                ∙ 스마트폰 어플리케이션 ‘안전디딤돌’
                            </p>
                        </li>
                        <li>
                            <p>3. 유관기관 연락처 및 홈페이지</p>
                            <p>
                                ∙ 기상청 수문기상정보시스템 : <a href="http://hydro.kma.go.kr" target="_blank"  title="새창열기">http://hydro.kma.go.kr</a><br> 
                                ∙ 농림축산식품부 044)201-1857, <a href="http://www.mafra.go.kr" target="_blank"  title="새창열기">http://www.mafra.go.kr</a><br> 
                                ∙ 환경부 044)201-7126, <a href="http://www.me.go.kr/" target="_blank"  title="새창열기">http://www.me.go.kr</a><br> 
                                ∙ 산업통상자원부 044)203-5587, <a href="http://www.motie.go.kr" target="_blank"  title="새창열기">http://www.motie.go.kr</a><br> 
                            </p>
                        </li>
                    </ul>
                </div>
    
    
    <h4 class="level2_title">국민행동요령</h4> 
    <h3 class="title_02">가뭄</h3> 
    <div>
    <ul class="contextIndent_twoDepList">
        <li style="">
            <img id="img12" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="행정안전부 로고"/>
        </li>
    </ul>
    </div>
    <br>
    <br>
    <h4 class="level3_title" style="">∙ 가정에서는</h4>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img06" src="" class="unload_rsc" alt="제한급수 예고 시 식수를 확보하고 용수 공급 일정을 확인합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 제한급수 예고 시 식수를 확보하고 용수 공급 일정을 확인합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img07" src="" class="unload_rsc" alt="세탁할 때는 한꺼번에 빨래를 모아서 합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 세탁할 때는 한꺼번에 빨래를 모아서 합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img08" src="" class="unload_rsc" alt="설거지를 할 때는 물을 틀어 놓지 말고 받아서 사용합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 설거지를 할 때는 물을 틀어 놓지 말고 받아서 사용합니다.</strong>
    <br>
    <h4 class="level3_title" style="">∙ 농촌에서는</h4>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img09" src="" class="unload_rsc" alt="물을 끌어올 수 있는 시설(수로)이나 물을 퍼올릴 수 있는 장비(양수기) 등을 점검합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 물을 끌어올 수 있는 시설(수로)이나 물을 퍼올릴 수 있는 장비(양수기) 등을 점검합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img10" src="" class="unload_rsc" alt="물 손실 방지를 위해 논두렁 등을 정비합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 물 손실 방지를 위해 논두렁 등을 정비합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img11" src="" class="unload_rsc" alt="토양 수분 증발을 최소화하기 위해 볏짚·비닐 등을 덮습니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 토양 수분 증발을 최소화하기 위해 볏짚·비닐 등을 덮습니다.</strong>
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 기후재난대응과 이태웅(044-205-6361)</strong>
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