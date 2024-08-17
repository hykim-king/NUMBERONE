
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
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">산사태</h3>
        <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>

    <h3 class="title_01">진행별 행동요령</h3>
        <ul class="tablist">
            <li class="on">
                <a class="tabindexBtn"  onclick="return false" title="선택됨">산사태 평소 대비</a>
            </li>
            <li>
                <a class="tabindexBtn"  onclick="return false">산사태 발생 우려 시</a>
            </li>
            <li style="border-right: solid 1px;">
                <a class="tabindexBtn"  onclick="return false">산사태 발생 시</a>
            </li>
            <li>
                <a class="tabindexBtn"  onclick="return false">산사태 발생 후</a>
            </li>
        </ul>

        <!-- <h4 class="title_02" style="margin-top:3px;">지진 국민행동요령</h4>
        <a id="prBtn_3" class="downloadGray_btn" style="margin-top:10px;" onclick="prBtn_3_onclick()">다운로드<i class="download_imgSet_icon"></i></a>


        <h4 class="title_02" style="margin-top:3px;">우리나라는 지진 안전지대일까?</h4>
        <div class="preventTop_boxWrap">
            <p style="margin-top:0px;">그간 우리나라는 일본, 중국 등 주변 나라에 비해 지진에 안전한 나라로 인식되었으나, 최근 경주지진(규모 5.8)과 포항지진(규모 5.4)으로 많은 피해가 발생하였습니다.<br>더 이상 우리나라도 지진 안전지대가 아니라는 경각심을 가지고 우리 모두 지진 행동요령을 숙지해야 지진 피해를 줄일 수 있습니다.</p>
        </div> -->
        <!-- 본문 내용 -->
        <div class="tabarea">
            <div class="tabmenu01 on">
                <div class="detail">
                    <p>
                        <strong class="level4_title">□ 산사태 전조 현상을 미리 알아 둡니다.</strong>
                        ∙ 땅이 울리며 산비탈에서 갑자기 많은 양의 물이 샘솟을 때<br>
                        ∙ 바람이 불지 않는 데도 나무가 흔들리거나 넘어질 때<br>
                        ∙ 계곡의 상류에서 과도한 흙탕물이 밀려올 때<br>
                        ∙ 산비탈의 흙이 무너지거나 돌이 굴러 내려올 때<br>
                        &nbsp;*전조 현상 : 어떠한 일의 징조로 나타나는 현상
                    </p>
                    <p>
                        <strong class="level4_title">□ 집(주택, 건물) 주변을 안전하게 관리합니다.</strong>
                        ∙ 실내의 가스 및 전기 차단기 설치, 작동 여부 등을 미리 점검합니다.<br>
                        ∙ 집(주택, 건물) 주변에 담장·나무 등이 넘어질 위험이 있는지 점검합니다.<br>
                        ∙ 산과 가까이에 있는 집(주택, 건물)은 옹벽 및 배수로 등을 미리 설치하거나 점검합니다.<br>
                        ∙ 기타 위험요인이 발견되면 정비하거나 거주지 시·군·구청 및 행정복지센터 등에 신고합니다.
                    </p>
                    <p>
                        <strong class="level4_title">□ 위급한 상황에 대비해 둡니다.</strong>
                        ∙ 가족회의를 통하여 비상 연락망과 각자의 대응 역할을 결정합니다.<br>
                        ∙ 대피(피난) 할 장소와 경로를 미리 확인합니다.<br>
                        ∙ 응급처치 방법 등을 미리 숙지합니다.<br>
                        ∙ 스마트폰에 산사태 예보를 확인할 수 있는 ‘스마트산림재해’ 앱을 미리 설치합니다.
                    </p>
                    <p>
                        <strong class="level4_title">□ 비상용품을 준비해 둡니다.</strong>
                        ∙ 비상용품을 미리 준비해 둡니다.<br>
                        &nbsp;- 비상식품 : 물, 통조림, 라면 등 가열하지 않고 먹을 수 있는 것<br>
                        &nbsp;- 구급약품 : 연고, 감기약, 소화제, 복용 중인 약 등이 포함된 구급함<br>
                        &nbsp;- 생활용품 : 간단한 옷, 화장지, 물티슈, 라이터, 여성용품, 비닐봉지<br>
                        &nbsp;- 기타 : 라디오, 손전등 및 건전지, 휴대전화, 휴대전화 충전기, 보조배터리, 비상금, 비상 연락망 등<br>
                        ∙ 비상용품 보관 장소와 사용방법 등을 알아 둡니다.<br>
                        &nbsp;- 가족회의를 통하여 항상 일정한 장소에 보관합니다.<br>
                        &nbsp;- 비상용품의 유효기간을 지속적으로 확인하여 교체합니다.<br>
                    </p>
                </div>
            </div><!-- tabmenu01 -->

            <div class="tabmenu02">
                <div class="detail">
                    <p>
                        <strong class="level4_title">□ 여름철 우기 및 태풍(폭풍) 전에는 이렇게 행동합니다.</strong>
                        ∙ 산림청에서 알려 주는 산사태 단계별 행동요령을 사전에 숙지합니다.<br>
                        ∙ 대피할 장소 및 지역 주민, 거주지 시·군·구청 및 행정복지센터 등 비상 연락망을 사전에 알아둡니다.<br>
                        ∙ 집(주택, 건물)이 산지와 연접된 경우 배수로를 정비하거나 산비탈에 비닐 덮기 등으로 정비합니다.<br>
                        ∙ 차량이 있는 경우에는 연료를 미리 채워 두고, 차량이 없을 경우에는 차량이 있는 가까운 이웃과 같이 이동할 수 있도록 미리 약속해 둡니다.
                    </p>
                    <p>
                        <strong class="level4_title">□ 집중호우 및 태풍(폭풍) 시에는 이렇게 행동합니다.</strong>
                        ∙ 방송, 인터넷, 스마트폰 등을 통해 기상정보 및 위험상황을 지속적으로 확인합니다.<br>
                        ∙ 산사태정보시스템(PC) 또는 스마트폰 ‘스마트산림재해’앱, 또는 방송을 통해 산사태 예보발령 정보를 실시간으로 확인합니다.<br>
                        &nbsp;- 산사태 예보발령* 및 대피장소 정보 확인방법 <br>
                        &nbsp;&nbsp;: 산사태정보시스템(sansatai.forest.go.kr), 스마트산림재해(스마트폰 앱)<br>
                        &nbsp;* 산사태예측정보 및 기상상황 등을 고려한 자체 상황판단회의 결과에 따라 시장ㆍ군수ㆍ구청장이 산사태 위험예보(주의보ㆍ경보)를 발령<br>
                        ∙ 산 주변의 야외활동(등산, 캠핑 등)은 하지 않습니다.<br>
                        ∙ 산지 인근 논둑이나 물꼬의 점검을 위해 나가지 않습니다.<br>
                        ∙ 야외활동을 하고 있었던 경우 산지에서 떨어진 마을회관, 학교 등의 안전한 곳으로 이동합니다.<br>
                        ∙ 지역 주민은 현 상태를 유지하다가 대피 명령이 발령되면 마을회관, 학교 등 사전에 지정된 장소로 대피합니다.<br>
                        ∙ 건물에 들어갈 때에는 건물의 기둥, 벽체 등 손상 여부를 확인하고 들어갑니다.<br>
                    </p>
                    <p>
                        <strong class="level4_title">□ 지진 발생 시에는 이렇게 행동합니다.</strong>
                        ∙ 지진이 발생하면 산사태 발생 위험이 있으므로 가급적 산지로부터 떨어진 안전한 곳으로 대피합니다.<br>
                        ∙ 특히, 비가 많이 온 상황에서 지진이 발생한다면 산사태 발생 가능성이 높아지므로 주의해야 합니다.<br>
                        ∙ 산지 주변 운전 도중에 지진이 발생할 경우 도로 오른쪽에 차를 세우고 즉시 대피합니다.<br>
                        ∙ 지진 발생 후 산지의 균열이나 단차가 확인될 경우 인근 지역의 행정복지센터 등에 신고합니다.<br>
                    </p>
                </div>

            </div><!-- tabmenu02 -->

            <div class="tabmenu03">
                <div class="detail">
                <h3 class="title_02">장소에 따라 이렇게 행동합니다.</h3>
                    <p>
                        <strong class="level4_title">▷ 집(산지 인접 주택, 건물)에서 이렇게 행동합니다.</strong>
                        ∙ 대피 방송이 안내되지 않은 경우 가급적 집에 머무르며 이웃 주민과 수시로 연락합니다.<br>
                        ∙ 대피 방송이 안내된 경우 화재 등 2차 피해 예방을 위해 대피 전에 가스·전기를 차단한 후 안내 장소로 이동합니다.<br>
                        ∙ 혹시 미처 대피하지 못한 주민이 있을 수 있으므로 옆집을 확인하고 위험 상황을 알립니다.<br>
                        ∙ 토사 유입의 우려가 있는 지하주차장으로 접근을 자제합니다.<br>
                        ∙ 대피 이동 중에는 고압전선 인근으로의 접근을 자제합니다.<br>
                        ∙ 하천·계류를 건너야 하는 등 위험한 경우 무리하지 말고 인근의 튼튼한 건물 등 안전한 장소로 이동합니다.<br>
                        ∙ 대피할 수 없어 건물 안에 머무는 경우 가능한 건물에서 가장 높은 층, 산과 멀리 있는 공간으로 대피하고, 몸을 움츠려 머리를 보호합니다.<br>
                        ∙ 고립 시 소방서(119)에 구조를 요청하거나 통신이 불안정할 경우에는 소리 지르기, 호루라기 불기, 물건 두드리기 등으로 구조를 요청합니다.
                    </p>
                    <p>
                        <strong class="level4_title">▷ 야영(캠핑) 중에는 이렇게 행동합니다.</strong>
                        ∙ 야영(캠핑)을 멈추고, 마을 회관 등 안전한 곳으로 이동합니다.<br>
                        ∙ 대피장소로 이동하기 위해 하천·계류 등을 건너야 할 경우 무리하지 말고, 계곡에서 떨어진 높은 언덕에서 구조를 요청합니다.
                    </p>
                    <p>
                        <strong class="level4_title">▷ 산행 중에는 이렇게 행동합니다.</strong>
                        ∙ 산행을 멈추고, 산지와 거리가 먼 안전한 곳으로 즉시 대피합니다.<br>
                        ∙ 옷장이나 사무실 보관함 등의 내용물이 쏟아져 내려 부상을 입을 수도 있으므로 문을 열 때 주의합니다.<br>
                        ∙ 계곡부 등 산사태 피해 경로 밖으로 대피하며, 산사태 발생 방향과 가장 멀고 높은 곳으로 이동합니다.<br>
                        ∙ 산사태는 상부에서 하부로 발생하므로 대피할 때 산사태 방향과 멀어지는 방향의 가장 가까운 높은 곳으로 대피합니다.<br>
                        ∙ 고립되었을 경우 소방서(119)에 구조를 요청하거나 통신이 불안정할 경우에는 높은 언덕으로 올라가 소리 지르기, 옷가지 흔들기 등으로 구조를 요청합니다.
                    </p>
                    <p>
                        <strong class="level4_title">▷ 운전 중에는 이렇게 행동합니다.</strong>
                        ∙ 운전 중에는 저속 운행하고 안전거리를 확보합니다.<br>
                        ∙ 운전 중에는 산사태 위험 구간을 우회하여 신속히 빠져나갑니다.<br>
                        ∙ 대피 이동 중에는 신호등, 가로등, 고압전선 인근으로 접근을 자제해야 합니다.<br>
                    </p>
                    <h3 class="title_02">대상자에 따라 이렇게 행동합니다.</h3>
                    <p>
                        <strong class="level4_title">▷ 어린이와 함께 있을 때는 이렇게 행동합니다.</strong>
                        ∙ 아기는 띠를 이용해 안고 손을 자유롭게 하여 아기와 자신의 머리 등을 보호합니다.<br>
                        ∙ 혼란스러운 상황 속에서 어린이와 헤어지지 않도록 손을 꼭 잡고 대피합니다.<br>
                        ∙ 어린이의 경우 반복적으로 필요한 행동요령을 말해주어 함께 대처할 수 있도록 안내합니다.
                    </p>
                    <h3 class="title_02">노약자나 몸이 불편하신 분은 이렇게 행동합니다.</h3>
                    <p>
                        <strong class="level4_title">평소 준비사항</strong>
                        &nbsp;- 가족, 친지, 이웃 등 산사태 발생 시 도와줄 수 있는 보호자(조력자)를 미리 정하고 도움을 요청할 방법(전화 등)을 구체적으로 정합니다.<br>
                        &nbsp;- 대피 경로 및 대피 장소를 미리 익혀 둡니다.<br>
                        &nbsp;- 평소 복용하고 있는 약을 충분히 준비하고, 대피 시 도움이 되는 기구(지팡이, 휠체어 등)를 미리 준비합니다.<br>
                        ∙ 보호자(조력자)의 역할<br>
                        &nbsp;- 안전 취약계층과 평소 산사태 행동요령을 주기적으로 교육 및 훈련하여 대피방법을 숙지합니다.<br>
                        &nbsp;* 안전 취약계층 : 어린이, 노인, 장애인 등 재난에 취약한 사람<br>
                        &nbsp;- 대피 시 주변에 홀로 계신 노약자, 어린이, 장애인 등 대피에 어려움이 있는 분들은 안전하게 대피할 수 있도록 돕습니다.<br>
                        ∙ 혼자서 행동하지 않고 이웃 또는 거주지 시·군·구청 및 행정복지센터 등에 도움을 요청합니다.<br>
                        ∙ 움직일 수 없을 때에는 조금이라도 안전한 장소에서 도움을 기다립니다.<br>
                        ∙ 시각장애가 있는 경우 라디오나 텔레비전 등을 통해 상황을 파악합니다.<br>
                        ∙ 청각장애가 있는 경우 텔레비전의 자막방송과 휴대전화 등으로 정보를 수집합니다.<br>
                        ∙ 정신이 불안정하거나 발달장애가 있어 스스로 의사결정을 할 수 없을 때에는 주위 사람에게 도움을 요청합니다.
                    </p>
                </div>
            </div><!-- tabmenu03 -->
            
            <div class="tabmenu04">
                <div class="detail">
                    <p>
                        <strong class="level4_title">□ 매몰자나 부상자가 있는지 살펴봅니다.</strong>
                        ∙ 매몰자나 행방불명자가 있을 경우 경찰서, 소방서 등에 즉시 신고합니다.<br>
                        ∙ 부상자가 있을 경우 즉시 응급처치하고 구급 차량을 이용하여 인근 병원으로 후송합니다.
                    </p>
                    <p>
                        <strong class="level4_title">□ 산사태 발생 확인 시, 즉시 신고합니다.</strong>
                        ∙ 소방서(119)에 신고합니다.<br>
                        ∙ 해당 시·군·구 재난안전대책본부 또는 시·군·구청 및 행정복지센터에 신고합니다.<br>
                        ∙ 중앙산림재난상황실(042-481-4119)에 신고합니다.<br>
                        ∙ 스마트폰 ‘스마트산림재해’ 앱 산림재해 신고하기를 통해 신고합니다.
                    </p>
                    <p>
                        <strong class="level4_title">□ 주변 상황을 예의 주시합니다.</strong>
                        ∙ 산사태가 발생한 지역 및 인근 지역에서 추가적인 산사태가 발생할 수 있으니 주의합니다.<br>
                        ∙ 산사태 피해 발생 지역으로 접근하지 않도록 합니다.<br>
                    </p>
                    <p>
                        <strong class="level4_title">□ 주변의 피해 상황에 따라 귀가 여부를 결정합니다.</strong>
                        ∙ 거주지 시·군·구청 및 행정복지센터 등의 안내를 받아 행동하여야 하며, 집(주택, 건물) 및 주변의 이상 유무에 따라 귀가 여부를 판단합니다.<br>
                        ∙ 산사태가 발생하여 집(주택, 건물)에 피해가 있는 경우 거주지 시·군·구청 및 행정복지센터 등에서 마련한 안전한 장소로 이동합니다.<br>
                        ∙ 산사태 피해가 없더라도 추가 산사태가 우려될 경우에는 거주지 시·군·구청 및 행정복지센터 등의 지시에 따릅니다.<br>
                    </p>
                    <p>
                        <strong class="level4_title">□ 추가 피해가 발생할 우려가 있는지 살펴봅니다.</strong>
                        ∙ 집(주택, 건물) 주변 및 공공시설(도로, 산지) 등에 추가 피해가 우려될 경우 거주지 시·군·구청 및 행정복지센터 등에 신고합니다.<br>
                    </p>
                </div>
            </div><!-- tabmenu04 -->
            </div><!-- tabarea -->
    
    <div style="border-top: solid 1.5px #dadada;">
        <strong class="level4_title">소관부서 : 산림청 산사태방지과 정지환(042-481-1844)</strong>
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