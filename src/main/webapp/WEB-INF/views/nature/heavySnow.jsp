

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

<!-- 대설 -->
<script>

//이동
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
        <h3 class="level2_title">대설</h3>

        <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    <!-- 행동요령 본문내용 -->
        <div class="section01">
                    <h3 class="title_01">진행별 행동요령</h3>
                    <ul class="tablist" >
                        <li class="on" style="width:23%">
                            <a class="tabindexBtn"  onclick="return false" title="선택됨">평상시 대설대비</a>
                        </li>
                        <li style="width:23%">
                            <a class="tabindexBtn" onclick="return false">대설 예보 시 행동요령</a>
                        </li>
                        <li style="width:23%">
                            <a class="tabindexBtn" onclick="return false">대설 특보 중 행동요령</a>
                        </li>
                        <li style="width:23%">
                            <a class="tabindexBtn" onclick="return false">대설 후 행동요령</a>
                        </li>
                    </ul>
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3>
                              <div class="box">
                                 <p>
                                     대설은 짧은 시간에 급격히 눈이 쌓이게 되므로 눈사태, 교통 혼잡, 쌓인 눈으로 인한 시설물 붕괴 등의 피해가 발생될 수 있습니다.<br>
                                     사전에 다음과 같이 가족이나 이웃과 함께 준비합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">상세 행동요령</h3>
                              <p>
                                  <strong class="level4_title">• 재난 정보를 수신할 수 있도록 준비하고. 거주 지역의 재해위험 요인을 미리 확인합니다.</strong>
                                  - 재난정보는 TV, 라디오, 인터넷, 스마트폰 안전디딤돌 앱에서 수신합니다. <br>
                                  &nbsp;※ 스마트폰 안전디딤돌 앱 설치를 통해 대설, 풍랑 등 기상특보나 눈사태, 시설물 붕괴 등 재난예ㆍ경보를 수신할 수 있습니다. <br>
                                  - 거주지역의 재해위험 요인(눈사태, 붕괴위험시설물 등)은 과거 피해 자료를 통해 확인합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">• 가족, 이웃과 함께 대피계획을 세웁니다.</strong>
                                  - 지역 대피장소와 안전한 이동 방법, 대피요령을 미리 숙지하고 어린이 등 재해약자에게 알려 줍니다.<br> 
                                  &nbsp;※  지역의 대피장소는 국민재난안전포털이나 지자체 홈페이지의 임시대피소, 이재민 임시주거시설 등에서 확인할 수 있습니다.<br>
                                  - 가족이 각각 이동할 때를 대비하여 다시 만날 장소를 미리 정합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">• 재난 발생에 대비하여 비상용품을 미리 준비합니다.</strong>
                                  - 응급약품, 손전등, 식수, 비상식량, 라디오, 핸드폰 충전기, 휴대용 버너, 연료, 담요 등 비상용품을 미리 한 곳에 준비해 둡니다.<br>
                                  - 차량이 있는 경우에는 연료를 미리 채워 두고, 차량이 없을 경우 차량이 있는 가까운 이웃과 같이 이동할 수 있도록 미리 약속해 둡니다.
                              </p>

                                <!-- 행동요령 이미지1 -->
                                <img id="img01" class="unload_rsc" alt="사전준비">
                              </div>
                          </div>
                        <div class="tabmenu02">
                            <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3>
                              <div class="box">
                                 <p>
                                        TV, 라디오, 인터넷 등에서 대설이 예보된 때에는 사전에 거주 지역에 영향을 주는 시기를 파악하고,<br>
                                        대설이 발생되기 전에 피해를 예방하기 위한 조치를 가족이나 이웃과 함께 취하도록 합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">상세 행동요령</h3>
                              <p>
                                  <strong class="level4_title">• 대설지역 및 지속시간 등을 파악해서 언제, 어떻게, 누구와 대피할지를 생각합니다.</strong>
                                  - 재난정보는 TV, 라디오, 인터넷, 스마트폰 안전디딤돌 앱에서 수신합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">• 산간 고립지역ㆍ붕괴 위험시설물(노후주택 등), 눈사태 위험지역 등 위험지역에서는 주변 사람들에게 알리고 함께 안전한 곳으로 이동합니다.</strong>
                                  - 자가용 이용을 자제하고 대중교통(지하철, 버스 등)을 이용하며, 자동차 월동용품(스노체인(스프레이 체인), 모래주머니, 염화칼슘, 삽 등)을 휴대합니다.<br>
                              </p>
                              <p>
                                  <strong class="level4_title">• 시설물 보호 조치를 합니다.</strong>
                                - (어촌) 선박이나 어망·어구 등은 사전에 결박하여 피해를 최소화하며, 수산 증ㆍ양식 시설은 어류 등이 동사하지 않도록 보온조치를 합니다.<br>
                                - (농촌) 붕괴 위험이 있는 비닐하우스, 축사 등은 붕괴에 대비하여 보수ㆍ보강 등의 조치를 합니다.<br>
                                &nbsp;※ 노후화된 시설은 사전점검을 하고 보강지주(보조지지대)를 설치합니다.<br>
                                &nbsp;※ 느슨한 하우스 밴드는 팽팽하게 당겨줍니다.<br>
                                &nbsp;※ 비닐하우스, 축사, 인삼재배사의 보온덮개와 차광막 및 과수원의 방조망 등은 미리 걷어냅니다.<br>
                                - 공사장, 비탈면이 있는 위험지역은 안전 상태를 미리 확인합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">• 가족과 함께 비상용품을 준비하여 재난 발생에 대비합니다.</strong>
                                - 비상시 신속히 응급용품을 가지고 이동 대피할 수 있도록 사전에 배낭 등에 모아둡니다.
                                <br>
                                - 상수도 공급이 중단될 수 있으므로, 욕조 등에 미리 물을 받아둡니다.
                                <br>
                                - 정전에 대비하여 손전등, 배터리 등을 미리 준비해 둡니다.
                                <br>
                                - 긴급 상황 정보 수신을 위해 긴급 연락체계를 유지합니다.

                              </p>
                              <p>
                                  <strong class="level4_title">• 약속, 일정 등을 조정하여 대설이 예보된 날은 외출을 자제합니다.</strong>
                                - 부득이 외출 시에는 몸을 따뜻이 유지하기 위해 옷을 여러 겹 겹쳐 입습니다.
                                <br>
                                - 눈길 및 빙판길 운전을 피하고, 이동이 필요할 시에는 자동차 월동용품, 연료, 식음료 등을 챙깁니다.
                              </p>
                              <img id="img02" class="unload_rsc" alt="대설 예보 시 행동요령">
                           </div>
                        </div>
                        <div class="tabmenu03">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3>
                              <div class="box">
                                 <p>
                                        자제하고, 외출을 할 경우에는 대중교통을 이용하거나 자동차의 월동 장비를 반드시 구비해야 합니다.<br>
                                     보온 유지를 위해 외투, 장갑, 모자 등을 착용합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">상세 행동요령</h3>
                              <p>
                                  <strong class="level4_title">＜ 일반 가정 ＞</strong>
                                ∙ 눈이 많이 올 때에는 외출을 자제하여 피해를 사전 방지합니다.
                                <br>
                                ∙ 내 집 앞, 내 점포 앞 보행로와 지붕 및 옥상에 내린 눈은 가족이나 이웃과 함께 치워 사고를 예방합니다.
                                <br>
                                &nbsp;※ 근처의 제설함을 활용할 수 있으며, 가까운 제설함은 공공데이터포털 ＜행정안전부_제설함＞ 검색을 통해 확인할 수 있습니다.
                                <br>
                                ∙ 노후가옥은 쌓인 눈의 무게로 무너지지 않도록 안전점검과 보강을 하고, 고립이 우려되는 지역은 경찰서, 관공서와 비상연락체계를 유지하도록 합니다.
                                <br>
                                ∙ 외출 시에는 바닥면이 넓은 운동화나 등산화를 착용하고, 주머니에 손을 넣지 말고 보온 장갑 등을 착용하여 체온을 유지합니다.
                                <br>
                                &nbsp;- 걸을 때는 미끄러지지 않도록 천천히 걸으며, 처마 끝에서 떨어지는 눈이나 눈에 가려진 맨홀, 배수구 등을 주의하며 걷습니다.
                                <br>
                                ∙ 출·퇴근을 평소보다 조금 일찍 하고, 자가용 대신 지하철, 버스 등 대중교통을 이용합니다.
                                <br>
                                &nbsp;- 넘어질 우려가 있으므로 자전거나 오토바이 등 이륜차를 운전하지 않습니다.
                              </p>
                              <p>
                                  <strong class="level4_title">＜ 차량 이용자 ＞ </strong>
                                ◇ 운전 시
                                <br>
                                ∙ 부득이 차량을 이용할 경우에는 반드시 자동차 월동용품(스노체인(스프레이 체인), 모래주머니, 염화칼슘, 삽 등)을 휴대합니다.
                                <br>
                                ∙ 차량으로 장거리 이동 시에는 자동차 월동용품, 연료, 식음료 등을 사전에 준비하고 기상상황을 미리 확인토록 합니다.
                                <br>
                                ∙ 자동차 주행 전 차량에 얼음이나 눈이 없는지 확인 후 주행합니다.
                                <br>
                                &nbsp;- 주행 시 날아오는 눈은 사고를 유발할 수 있습니다.
                                <br>
                                &nbsp;- 얼음이나 눈을 제거하기 위해 차량 앞 유리에 뜨거운 물을 붓지 마십시오. 유리가 깨질 수 있습니다.
                                <br>
                                ∙ 커브길, 고갯길, 고가도로, 교량, 결빙 구간 등에서는 특히 사고위험이 높으므로 서행하고, 교통사고 예방을 위해 안전거리를 두고 운행합니다.
                              </p>
                              <div class="description_box" style="text-align: inherit;">
                                    <p class="description_fcBlack_txt" style="text-align: center;">자동차 눈길 사고 발생 특징(노면 동결 주의)</p>
                                    <p class="description_fcBlack_txt">▪ 노면 동결 주의 시기
                                        <br/>
                                        &nbsp;- 강설이 1cm 이상 있는 시기(눈이 내린 후 대략 24시간 이내)
                                        <br/>
                                        &nbsp;- 기온이 떨어지는 야간이나 아침(블랙아이스 주의)
                                        <br/>
                                        ▪ 노면 동결 주의 장소
                                        <br/>
                                        &nbsp;- 신호 교차로: 차량이 반복적으로 출발하거나 정지하면 노면이 매우 미끄러워질 수 있음
                                        <br>
                                        &nbsp;- 교량(다리): 다른 노면은 얼어 있지 않아도 다리 위는 동결될 수 있음
                                        <br>
                                        &nbsp;- 터널 등의 출입구: 그늘이 지는 경우가 많아 국소적으로 노면이 동결될 수 있음
                                    </p>
                            </div>
                              <p>
                                ◇ 고립된 경우
                                <br>
                                ∙ 가능한 수단을 통해 구조 연락을 취하며, 동승자와 함께 체온을 유지하고 돌아가면서 휴식을 취하도록 합니다.
                                <br>
                                &nbsp;- 혈액 순환을 위해 손뼉을 치거나 가끔 팔과 다리를 움직이는 등 가벼운 운동을 합니다.
                                <br>
                                ∙ 한 사람은 반드시 깨어있어야 하며 야간에는 실내등을 켜거나 색깔 있는 옷을 눈 위에 펼쳐 놓아 구조요원이 쉽게 찾을 수 있도록 합니다.
                                <br>
                                ∙ 차량이 고립·정체된 경우 되도록 차량에서 대기하고, 부득이 차량을 벗어날 경우 연락처를 두고 열쇠를 꽂아 둔 채로 대피합니다.
                              </p>
                              <img id="img03" src="" class="unload_rsc" alt="대설 특보 중1"/>
                              <p>
                                  <strong class="level4_title">＜ 농･어촌, 공장 등 ＞ </strong>
                                ∙ 비닐하우스, 가설 건축물 등은 미리 점검하고, 지붕에 눈이 쌓이기 전에 치워 두거나, 받침대 등으로 미리 보강하여 피해를 예방합니다.
                                <br>
                                ∙ 가설 패널(공장, 시장 비가림 시설, 주거용 비닐하우스, 창고 등)을 이용한 구조물은 쌓인 눈의 무게에 취약하므로 안전한 곳으로 이동합니다.
                                <br>
                                ∙ (농촌) 작물을 재배하지 않는 곳의 비닐을 걷어냅니다.
                                <br>
                                ∙ (어촌) 수산 증·양식장은 어류 등이 동사하지 않도록 보온조치를 합니다.
                                <br>
                                ∙ (어촌) 선박 종사자는 기상정보를 수시로 확인하여 기상악화 시 운항을 자제하며, 부득이하게 출항하는 경우에는 선박의 구명장비를 미리 점검합니다.
                              </p>
                              <img id="img04" src="" class="unload_rsc" alt="대설 특보 중2"/>
                           </div>
                        </div>
                        <div class="tabmenu04">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3>
                              <div class="box">
                                 <p>
                                     큰눈이 멈춘 후에는 주변의 피해를 확인하고, 가까운 행정복지센터(주민센터) 등에 신고하여 보수·보강을 하도록 합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">상세 행동요령</h3>
                              <p>
                                  <strong class="level4_title">• 가족 및 지인의 안전 여부를 확인합니다.</strong>
                                  - 가족 및 지인과 연락하여 안전 여부를 확인하고, 연락이 되지 않고 실종이 의심되는 경우에는 가까운 경찰서에 신고합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">• 대설로 인한 피해 여부를 확인합니다.</strong>
                                - 대피 후 집으로 돌아온 경우에는 노후주택 등은 안전에 위험이 있을 수 있으므로, 출입하기 전에 반드시 피해 여부를 확인합니다.
                                <br>
                                - 파손된 시설물(주택, 상하수도, 축대, 도로 등)은 가까운 행정복지센터(주민센터)나 시·군·구청에 신고합니다.
                                <br>
                                - 파손된 사유시설을 보수 또는 복구할 때는 반드시 사진을 찍어 둡니다.
                                <br>
                                - 고립된 지역에 있을 경우 무리하게 운전하여 이동하지 말고, 119 또는 112 등에 신고하거나 주변에 도움을 요청합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">• 대설로 인한 2차 피해를 방지합니다.</strong>
                                - 대설 후 한파가 이어져 빙판이 생길 수 있으니 외출 시 따뜻하게 옷을 입고 미끄럼에 주의하도록 합니다.  
                                <br>
                                - 가스, 전기가 차단되었을 때, 한국가스안전공사(1544-4500)와 한국전기안전공사(1588-7500) 또는 전문가의 안전점검 후에 사용합니다.
                                <br>
                                - 대설로 가스가 누출될 수 있으므로 창문을 열어 충분히 환기하고, 성냥불이나 라이터는 환기 전까지 사용하지 않습니다.
                                <br>
                                - 붕괴 위험이 있는 시설물은 점검 후에 출입하도록 합니다.
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
                            <p>2. 행정안전부 국민행동요령, 임시피난시설 등 안내</p>
                            <p>
                                ∙ 행정안전부 홈페이지 <a href="http://www.mois.go.kr" target="_blank" title="새창열기">http://www.mois.go.kr</a><br>
                                ∙ <e>행정안전부 국민재난안전포털</e> <a href="http://www.safekorea.go.kr" target="_blank" title="새창열기">http://www.safekorea.go.kr</a><br>
                                ∙ 스마트폰 어플리케이션 ‘안전디딤돌’
                            </p>
                        </li>
                        <li>
                            <p>3. 유관기관 연락처 및 홈페이지</p>
                            <p>
                                ∙ 교육부 044)203-6355, <a href="http://www.moe.go.kr" target="_blank" title="새창열기">http://www.moe.go.kr</a><br>
                                ∙ 농림축산식품부  044)201-1474, <a href="https://www.mafra.go.kr" target="_blank" title="새창열기">https://www.mafra.go.kr</a><br>
                                ∙ 국토교통부 044)201-3918, <a href="http://www.molit.go.kr" target="_blank" title="새창열기">http://www.molit.go.kr</a><br>
                                ∙ 해양수산부 044)200-5617, <a href="http://www.mof.go.kr" target="_blank" title="새창열기">http://www.mof.go.kr</a><br>
                                ∙ 경찰청 02)3150-2362, <a href="http://www.police.go.kr" target="_blank" title="새창열기">http://www.police.go.kr.kr</a><br>
                                ∙ 소방청 044)205-1119, <a href="http://www.nfa.go.kr" target="_blank" title="새창열기">http://www.nfa.go.kr</a><br>
                                ∙ 기상청 02)2181-0503, <a href="http://www.kma.go.kr" target="_blank" title="새창열기">http://www.kma.go.kr</a><br>
                                ∙ 해경청 032-835-2445, <a href="http://www.kcg.go.kr" target="_blank" title="새창열기">http://www.kcg.go.kr</a><br>
                            </p>
                        </li>
                    </ul>
                </div>

    <h4 class="level2_title">국민행동요령</h4>
    <h3 class="title_02">대설</h3>
    <div>
    <ul class="contextIndent_twoDepList">
        <li style="">
            <img id="img11" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="행정안전부 로고"/>
        </li>
    </ul>
    </div>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img05" src="" class="unload_rsc" alt="산간 고립 우려 지역에서는 식량, 연료 등 비상용품을 준비합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 산간 고립 우려 지역에서는 식량, 연료 등 비상용품을 준비합니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img06" src="" class="unload_rsc" alt="내 집 앞 눈을 수시로 치웁니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 내 집 앞 눈을 수시로 치웁니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img07" src="" class="unload_rsc" alt="스노체인, 염화칼슘, 삽 등 자동차 월동용품을 준비합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 스노체인, 염화칼슘, 삽 등 자동차 월동용품을 준비합니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img08" src="" class="unload_rsc" alt="개인 차량 이용을 줄이고 대중교통을 이용합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 개인 차량 이용을 줄이고 대중교통을 이용합니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img09" src="" class="unload_rsc" alt="차량 운행 시에는 저속 운행하고 안전거리를 확보합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 차량 운행 시에는 저속 운행하고 안전거리를 확보합니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img10" src="" class="unload_rsc" alt="차량이 고립될 때는 119에 신고하고 차 안에서 TV, 라디오, 인터넷 등을 통해 기상 상황을 확인하며 구조를 기다립니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 차량이 고립될 때는 119에 신고하고 차 안에서 TV, 라디오, 인터넷 등을 통해 기상 상황을 확인하며 구조를 기다립니다.</strong>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 자연재난대응과 강형구(044-205-5232)</strong>
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