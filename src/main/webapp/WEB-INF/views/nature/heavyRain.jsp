
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
$(function(){
    var idx = 0;
    var tabBtn = $(".tablist > li a");
    var tabBtnParent = $(".tablist > li");
    var content = $(".tabarea > div");

    tabBtn.click(function(){
        $('.tabindexBtn').attr('title','');
        idx=$(this).parent().index();
        $(this).parent().addClass("on")
        $(this).attr('title','선택됨');
        $(this).parent().siblings().removeClass("on");
        content.eq(idx).addClass("on");
        content.eq(idx).siblings().removeClass("on");
        $('li.on').attr('title', '');
    });
    //enter 이벤트 추가
    tabBtn.keydown(function(event) {
        if (event.keyCode == 13) {
            $('.tabindexBtn').attr('title','');
            idx=$(this).parent().index();
            $(this).parent().addClass("on")
            $(this).attr('title','선택됨');
            $(this).parent().siblings().removeClass("on");
            content.eq(idx).addClass("on");
            content.eq(idx).siblings().removeClass("on");
            $('li.on').attr('title', '');
        }
    });
});
</script>


<!-- 호우 -->
<script>

//이전화면
function agobeforeView_onclick() {
     window.history.back();
};



function prBtn_1_onclick() {
    location.href = "/idsiSFK/neo/sfk/cs/csc/bbs_conf.jsp?menuSeq=593&bbs_no=9&viewtype=read&bbs_ordr=2621";
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
        <h3 class="level2_title">호우</h3>
        <div class="infoTop_btn_w">
            <label for="selMenugo" class="ir">자연재난종류선택</label>
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i> </a>
        </div>
    </div>
    
    <!-- 본문 내용 -->
                <div class="section01">
                    <h3 class="title_01">진행별 행동요령</h3>
                    <ul class="tablist" >
                        <li class="on" style="width:23%" title="">
                            <a class="tabindexBtn"  onclick="return false" title="선택됨">사전준비</a>
                        </li>
                        <li style="width:23%">
                            <a class="tabindexBtn" onclick="return false">호우특보 예보시</a>
                        </li>
                        <li style="width:23%">
                            <a class="tabindexBtn"  onclick="return false">호우특보 중</a>
                        </li>
                        <li style="width:23%">
                            <a class="tabindexBtn"  onclick="return false">호우 이후</a>
                        </li>
                    </ul>
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                        <h2 class="ir">사전준비</h2>
                           <div class="point">
                           
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     호우는 하천 범람, 산사태, 침수 등을 통해 인명피해와 재산피해를 발생시킬 수 있기 때문에<br>
                                     가족이나 이웃과 함께 대비합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">상세 행동요령</h3> 
                              <p>
                                  <strong class="level4_title">∙ 재난정보를 수신할 수 있도록 준비하고, 거주지역의 재해위험 요인(과거 피해 이력 등)을 미리 확인합니다.</strong>
                                  - 재난정보는 TV, 라디오, 인터넷, 스마트폰 안전디딤돌 앱에서 수신합니다.<br>
                              </p>
                              <p>
                                  <strong class="level4_title">∙ 가족이나, 이웃과 함께 대피계획을 세웁니다.</strong>
                                   - 지역의 대피 장소(행정복지센터, 학교 등)와 안전한 이동 방법, 대피요령을 미리 숙지하고, 어린이들에게 알려주어야 합니다.<br>
                                   <span style="margin-right: 10px;"></span>※대피경로는 하천변, 산길, 전신주나 변압기 주변, 침수된 지역 등은 피하도록 합니다. <br>
                                   - 가족이 각각 이동할 때를 대비하여 다시 만날 장소를 미리 정합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">∙ 주변의 시설물을 점검합니다. </strong>
                                    - 주변의 배수로, 빗물받이는 수시로 청소를 실시하고 비가 새거나 막힌 곳이 있는지 확인합니다. <br>
                                    - 비탈면, 옹벽, 축대 등에 균열이 있는지 점검하고, 위험할 경우 정비하거나 시·군·구청에 신고합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">∙ 재난 발생에 대비하여 비상용품을 미리 준비합니다. </strong>
                                  - 전기와 가스, 수도 등이 멈추는 경우를 대비하여 최소 3일간 버틸 수 있는 식량ㆍ식수ㆍ생필품 등을 미리 비축해둡니다.<br>
                                  - 응급약품, 손전등, 식수, 비상식량, 라디오, 핸드폰 충전기, 휴대용 버너, 담요 등 비상용품을 미리 한 곳에 준비해 둡니다.<br>
                                  - 차량이 있는 경우에는 연료를 미리 채워 두고, 차량이 없을 경우에는 차량이 있는 가까운 이웃과 같이 이동할 수 있도록 미리 약속해 둡니다.
                              </p>
                              </div>
                          </div>
                        <div class="tabmenu02">
                        <h2 class="ir">호우특보 예보시</h2>
                            <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     TV, 라디오, 인터넷 등에서 호우특보가 예보된 때에는 거주 지역에 영향을 주는 시기를 미리 파악하고,<br> 
                                     호우가 발생하기 전에 가족이나 지역주민과 함께 피해를 예방하기 위해 필요한 조치를 합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">상세 행동요령</h3> 
                              <p>
                                  <strong class="level4_title">∙ 외출을 자제하고 수시로 기상상황 및 거주지역 주변 위험상황, 재난정보를 파악합니다.</strong>
                              </p>
                              <p>
                                  <strong class="level4_title">∙ 산간·계곡, 하천, 방파제 등 위험지역에서는 주변에 있는 사람들과 함께 안전한 곳으로 이동합니다.</strong>
                                    - 등산, 야영, 물놀이, 낚시 등을 멈추고 즉시 안전한 곳으로 이동합니다.<br> 
                                    - 저지대나 상습침수지역, 산사태 위험지역, 지하공간이나 붕괴 우려가 있는 노후주택·건물 등에서는 안전한 곳으로 이동합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">∙ 차량이나 시설물 등의 보호 조치를 합니다. </strong>
                                 - (가정) 하수구나 집 주변의 배수구를 미리 점검하고 막힌 곳은 뚫어야 합니다.<br> 
                                 - (지하주차장, 지하 공간) 침수가 예상되는 아파트 지하주차장, 건물 등에서는 모래주머니, 물막이 판 등을 이용하여 피해를 예방합니다.<br> 
                                 - (하천이나 해변, 저지대) 주차된 차량은 안전한 곳으로 이동합니다.<br> 
                                   <span style="margin-right: 10px;"></span> ※ 대피를 권고하거나 명령하는 경우 둔치 주차장에 주차한 차량을 이동시켜야 하며, 대피 안내 수신을 위해 차량에 연락처를 남겨두어야 합니다. <br> 
                                 - (농촌) 농경지 용ㆍ배수로와 논둑을 정비하여 피해를 예방하고, 물꼬를 조정합니다.<br> 
                                    <span style="margin-right: 10px;"></span>※ 단, 비가 오기 전(예비특보 단계)에만 조치합니다.<br> 
                                 - (어촌) 선박은 단단히 결박하거나 육지로 인양하고, 어망ㆍ어구 등을 안전한 곳으로 이동시킵니다.
                              </p>
                              <p>
                                  <strong class="level4_title">∙ 가족과 함께 비상용품을 준비하여 재난 발생에 대비합니다.</strong>
                                 - 비상시 신속히 응급용품을 가지고 대피할 수 있도록 사전에 배낭 등에 모아둡니다.<br> 
                                 - 상수도 공급이 중단될 수 있으므로, 욕조 등에 미리 물을 받아둡니다.
                              </p>
                              <p>
                                  <strong class="level4_title">∙ 어르신, 어린이, 장애인 등 주변의 대피약자 안부를 수시로 확인하고, 비상시 대피방법을 미리 전달합니다.</strong>                                
                              </p>
                           </div>
                        </div>
                        <div class="tabmenu03">
                        <h2 class="ir">호우특보 중</h2>
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     호우가 시작된 때에는 신속히 안전한 곳으로 대피하고,<br> 
                                    외출을 삼가며 이웃이나 가족과의 연락을 통해 안전 여부를 확인합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">상세 행동요령</h3> 
                              <p>
                                  <strong class="level4_title">∙ 외출을 자제하고 수시로 기상상황 및 거주지역 주변 위험상황, 재난정보를 파악합니다.</strong>
                                 - 외부에 있는 가족, 지인, 이웃과 연락하여 안전을 확인하고 위험정보 등을 공유합니다.<br> 
                                 - 차량은 속도를 줄여 운행하고, 개울가, 하천변, 해안가 등 급류에 휩쓸릴 수 있는 지역이나 침수 위험지역에는 접근하지 말고 주변에 있는 사람들에게 알려 줍니다.

                              </p>
                              <p>
                                  <strong class="level4_title">∙ 위험지역에 절대 접근하지 않습니다.</strong>                                  
                                 - 침수된 도로, 지하차도, 교량 등은 사람과 차량의 통행을 엄격히 금지하고 주변에 있는 사람들에게 알려 진입하지 않도록 합니다.<br> 
                                 - 산간·계곡, 하천, 해안가 등 급류에 휩쓸릴 수 있는 지역에서 빠르게 벗어납니다.<br> 
                                 - 공사장, 가로등, 신호등, 전신주, 지하공간 등 위험지역에는 접근하지 않도록 합니다.<br> 
                                 - (농촌) 논둑이나 물꼬를 보러 나가지 않습니다.<br> 
                                 - (이동식 가옥ㆍ임시 시설) 이동식 가옥이나 임시 시설에 거주할 경우에는 견고한 건물로 즉시 이동하고 주변에 있는 사람들에게 위험지역을 알려줍니다.<br> 
                                 - (산사태 위험지역) 산사태 위험지역에 있는 경우 산사태 경보 발령이 이루어지지 않더라도 산사태 징후를 파악한 경우 스스로 대피합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">∙ 건물, 집안에서는 안전수칙을 지킵니다.</strong>
                                 - 가스 누출로 2차 피해가 발생할 수 있으므로 사전에 차단하고, 감전 위험이 있는 집 안팎의 전기시설은 만지지 않도록 합니다.<br> 
                                   <span style="margin-right: 10px;"></span> ※ 물에 젖은 손으로 절대 전기 시설을 만지지 않습니다.<br> 
                                 - 정전이 발생한 경우 양초를 사용하지 말고 손전등, 휴대폰 등을 사용합니다.<br> 
                                 - 건물 안에 물이 조금이라도 차오를 경우 즉시 높은 곳 혹은 주변 대피장소로 이동합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">∙ 침수, 붕괴 우려, 산사태 위험 등으로 대피가 필요할 시 주변에 대피에 어려움이 있는 약자(어르신, 어린이, 장애인 등)와 함께 대피합니다.</strong>                               
                              </p>
                           </div> 
                        </div>
                        <div class="tabmenu04">
                        <h2 class="ir">호우 이후</h2>
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     호우가 지나간 후에는 이웃 등 주변의 피해 상황을 확인하고,<br> 
                                     가까운 행정복지센터 등에 피해를 신고하여 보수·보강을 하도록 합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">상세 행동요령</h3> 
                              <p>
                                  <strong class="level4_title">∙ 가족과 지인의 안전 여부를 확인하고, 피해지역에 접근하지 않습니다. </strong>
                                     - 가족과 지인에게 연락하여 안전 여부를 확인하고, 연락이 되지 않고 실종이 의심될 경우에는 가까운 경찰서에 신고합니다.<br> 
                                     - 침수된 도로나 교량은 파손되었을 수 있으므로 건너지 않습니다.<br> 
                                     - 하천 제방 근처, 지반이 약해진 비탈면은 무너질 수 있으니 가까이 가지 않습니다.<br> 
                                     - 고립된 지역에서는 무리하게 물을 건너지 말고, 119나 행정복지센터(주민센터) 등에 신고하거나 주변에 도움을 요청합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">∙ 집으로 복귀 후 피해여부를 확인하고 신고합니다.</strong>
                                     - 대피 후 집으로 돌아온 경우 반드시 주택 등의 안전 여부를 확인하고 출입합니다.<br> 
                                     - 파손된 시설물(주택, 상하수도, 축대, 도로 등)은 가까운 시·군·구청이나 행정복지센터(주민센터)에 신고합니다.<br> 
                                     - 파손된 사유시설을 보수 또는 복구할 때에는 반드시 사진을 찍어 둡니다.
                              </p>
                              <p>
                                  <strong class="level4_title">∙ 주변에 있는 사람들과 함께 호우로 인한 2차 피해를 방지합니다.</strong>
                                     - 물이 빠져나가고 있을 때에는 기름이나 동물 사체 등 오염된 경우가 많으므로 물에서 멀리 떨어져 있도록 합니다.<br> 
                                     - 수돗물이나 저장되었던 식수는 오염 여부를 확인한 후에 사용하고, 침수된 음식이나 재료는 식중독의 위험이 있으므로 사용하지 않습니다.<br> 
                                     - 침수된 주택은 가스와 전기차단기가 내려가 있는지 확인하고, 한국가스안전공사(1544-4500)와 한국전기안전공사(1588-7500) 또는 전문가의 안전점검 후에 사용합니다.<br> 
                                     - 호우로 피해를 입은 주택 등은 가스가 누출될 수 있으므로 창문을 열어 충분히 환기하고, 성냥불이나 라이터는 환기 전까지 사용하지 않습니다.<br> 
                                     - 쓰러진 농작물은 일으켜 세우고, 침수된 논과 밭을 배수할 때에는 작물에 묻은 흙, 오물 등을 씻어내고 긴급 병해충 방제를 실시합니다.
                              </p>
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
                                ∙ 행정안전부 중앙재난안전상황실 044)205-1542~3
                            </p>
                        </li>
                        <li>
                            <p>2. 행정안전부 국민행동요령, 임시주거시설 등 안내</p>
                            <p>
                                ∙ 행정안전부 홈페이지 <a href="http://www.mois.go.kr" target="_blank"  title="새창열기">http://www.mois.go.kr</a><br>
                                ∙ <e>행정안전부 국민재난안전포털</e> <a href="http://www.safekorea.go.kr" target="_blank"  title="새창열기">http://www.safekorea.go.kr</a><br>
                                ∙ 스마트폰 어플리케이션 ‘안전디딤돌’
                            </p>
                        </li>
                        <li>
                            <p>3. 유관기관 연락처 및 홈페이지</p>
                            <p>
                                ∙ 행정안전부 044)205-5237, <a href="http://www.mois.go.kr" target="_blank"  title="새창열기">http://www.mois.go.kr</a><br> 
                                ∙ 기상청 02)2181-0503, <a href="http://www.kma.go.kr" target="_blank"  title="새창열기">http://www.kma.go.kr</a><br> 
                                ∙ 고용노동부 044)202-7746, <a href="http://www.moel.go.kr" target="_blank"  title="새창열기">http://www.moel.go.kr</a><br> 
                                ∙ 보건복지부 044)202-2652, <a href="http://www.moe.go.kr" target="_blank"  title="새창열기">http://www.moe.go.kr</a><br> 
                                　(질병관리본부 043)719-7265, <a href="http://www.cdc.go.kr)" target="_blank"  title="새창열기">http://www.cdc.go.kr)</a><br> 
                                ∙ 농림축산식품부 044)201-1474, <a href="http://www.mafra.go.kr" target="_blank"  title="새창열기">http://www.mafra.go.kr</a><br> 
                                ∙ 농촌진흥청 1544-8572, <a href="http://www.rda.go.kr" target="_blank"  title="새창열기">http://www.rda.go.kr</a><br> 
                                ∙ 해양수산부 044)200-5617, <a href="http://www.mof.go.kr" target="_blank"  title="새창열기">http://www.mof.go.kr</a><br> 
                                ∙ 교육부 044)203-6355, <a href="http://www.moe.go.kr" target="_blank"  title="새창열기">http://www.moe.go.kr</a><br>
                            </p>
                        </li>
                    </ul>
                </div>
    
    <h4 class="level2_title">국민행동요령</h4> 
    <h4 class="title_02" style="font-weight: bold;">호우</h4>
    <br>
    
<div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img10" src="" class="unload_rsc" alt="(포스터1) 태풍·호우 국민행동요령" style="width: 80%;"/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">
        - 자주 물에 잠기는 지역, 산사태 위험지역 등의 위험한 곳은 피하고, 안전한 곳으로 대피합니다.<br> 

        - 실내에서는 문과 창문을 닫고, 외출을 하지 않으며, TV, 라디오, 인터넷 등을 통해 기상 상황을 확인합니다.<br> 
        
        - 개울가, 하천변, 해안가 등 침수 위험지역은 급류에 휩쓸릴 수 있으니 가까이 가지 않습니다. <br>
        
        - 산과 계곡의 등산객은 계곡이나 비탈면 가까이 가지 않고, 안전한 곳으로 대피합니다. <br>
        
        - 공사자재가 넘어질 수 있으니 공사장 근처에 가까이 가지 않습니다.<br>
        
        - 농촌에서는 논둑이나 물꼬의 점검을 위해 나가지 않습니다.<br><br>
    </strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img11" src="" class="unload_rsc" alt="(포스터2) 6대 위험유형 행동요령 포스터" style="width: 80%;"/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">
        하천 급류<br>
        - 호우·태풍 등으로 하천 수위가 높아지는 경우 하천 주변에 접근하지 않습니다.<br> 
        
        차량 침수<br>
        - 조금이라도 침수된 지하차도와 도로는 절대 지나가지 않습니다.<br> 
        
        강풍에 의한 낙하물<br>
        - 유리창 및 건물 간판 근처는 강풍에 의한 낙하물로 피해를 입을 수 있으니 가급적 공터나 건물 안으로 대피합니다.<br> 
        
        낙뢰<br>
        - 번개를 본 후 30초 이내에 천둥소리를 들었다면 신속히 안전한 장소로 대피하여 즉시 몸을 낮추고 물이 없는 움푹 파인 곳이나 동굴 안으로 대피합니다.<br> 
        
        세월교·교량 횡단<br>
        - 세월교나 소규모 교량이 물에 잠긴 경우 절대 건너지 않습니다.<br>
        
        물꼬<br>
        - 호우·태풍 특보가 발효된 경우 물꼬를 보러 나가지 않도록 합니다. <br><br>
    </strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img12" src="" class="unload_rsc" alt="(포스터3) 어린이·노약자 국민행동요령" style="width: 80%;"/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">
        어린이 <br>
        부모님이나 선생님과 떨어지지 않도록 가까이 이동하고 말씀에 귀 기울여 듣도록 합니다.<br> 
        부모님과 선생님의 말씀에 따라 강한 바람이나 비를 피해 안전한 장소로 질서를 유지하며 이동합니다.<br> 
        ※ 보호자 행동요령<br>
        - 어린이가 길을 잃고 무리에서 멀어지지 않도록 항상 체크합니다.<br> 
        - 재난 상황에 당황하지 않고 침착한 자세로 어린이를 안전한 장소로 안내합니다.<br> 
        
        노약자<br>
        호우·태풍 등 특보가 발효된 경우 밖으로 나가지 않습니다.<br> 
        부득이 하게 야외에 나가야 하는 경우 만일에 사태에 대비해 사전에 자녀·친척·이웃에게 알립니다.<br> 
        ※ 보호자 행동요령<br>
        - 호우·태풍 특보 시 부모님 등 노약자에게 외출하지 않도록 안부 전화를 합니다.<br>
        - 부모님 등 노약자와 연락체계를 항상 유지하며, 연락 두절 시 경찰서, 관공서 등에 신속하게 신고합니다.<br> 
    </strong>
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 자연재난대응과 신지윤(044-205-5233)</strong>
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