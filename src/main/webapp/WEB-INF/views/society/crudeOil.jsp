
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<title>사회재난행동요령</title>
<link href="/ehr/resources/css/common.css"  rel="stylesheet"/>
<link href="/ehr/resources/css/layout2.css" rel="stylesheet" />
<link href="/ehr/resources/css/layout.css" rel="stylesheet"/>
<link href="/ehr/resources/css/content.css" rel="stylesheet" />
<link href="/ehr/resources/css/dp_sub.min.css" rel="stylesheet" />

<!-- Header -->
<script src="/ehr/resources/js/jquery-1.11.1.min.js"></script>
<script src="/ehr/resources/js/common.js"></script>
<script src="/ehr/resources/js/idsi_safekorea_common.js"></script>    
<script src="/ehr/resources/js/content.js"></script>


<script>

    function agocontentView_onclick() {
        var selectedView = $("#selMenugo option:selected").val().replace("jsp", "html");
        location.href = "/idsiSFK/neo/sfk/cs/contents/prevent/"+selectedView+"?menuSeq=126";
    };
    
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
        <h3 class="level2_title">원유수급 위기</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    <div class="know_how_w" style="margin-top:0px">
        <div class="contextIndent_oneDepList" style="margin-top:0px">
            <h3 class="title_02">1. 개 요</h3>
            <strog class="level4_title">□ 원유를 전량 해외로부터 수입에 의존하는 우리나라는, 주요 산유국의 원유 생산차질, 수송경로 상의 문제 등으로 심각한 석유 부족사태에 직면할 수 있습니다.</strog>
            <p class="level4_title">□ 석유위기로 인한 국민경제의 피해를 최소화하고 사회적 동요를 방지하기 위해서는 에너지 절감 참여, 석유유통 질서 준수 등의 전국민적 노력이 필요합니다.</p>
            <h3 class="title_02">2. 단계별 국민행동요령</h3>
            <p class="level4_title">□ (평시) 에너지 절약 생활화하기</p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 교통부문 에너지절약을 위한 아래의 실천방안 생활화</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;1) 승용차 대신 대중교통 이용</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;2) 출퇴근시 카풀 활용</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;3) 정기적으로 자동차 점검</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;4) 차에 불필요한 물건을 넣고 운행하는 행위 자제</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;5) 규정속도 준수</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;6) 급가속 및 급제동 줄이기</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;7) 차계부 쓰기</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;8) 네비게이션과 실시간 교통정보 활용</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 공공기관은 냉방 28℃ 이상, 난방 18℃ 이하로 실내온도를 유지하고, 에너지이용 합리화 법령상 냉난방온도 제한 대상 건물은 실내온도 냉방 26℃ 이상, 난방 20℃ 이하로 준수</p></li>
            </ul>
            <p class="level4_title">□ (원유수급 위기 우려 및 발생시) 에너지절약 노력 강화하기</p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ <b style="color: black; font-weight:bold;">(공공부문)</b> 강도높은 에너지절약 조치 선도적으로 시행</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 공공기관은 직원 자가차량을 대상으로 요일제 혹은 홀짝제 시행</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 주간 집중근무로 야간근무를 줄이고, 원거리 이동이 요구되는 대면회의 지양</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 승강기 운행을 평시 대비 일부 제한</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ <b style="color: black; font-weight:bold;">(산업부문)</b> 생산활동에 지장이 없는 범위 내에서 에너지 절약 강화</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 에너지이용 합리화 법령 상 냉난방온도 제한건물은 실내온도를 공공기관 수준인 냉방 28℃ 이상, 난방 18℃ 이하로 강화</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 냉난방 효율 증진을 위해 사업장 및 건물에 냉난방 설비의 효율점검 및 보수 실시</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ <b style="color: black; font-weight:bold;">(국민행동요령)</b> 생활 속에서 에너지절약 노력을 강화하고, 유류구매에 관한 행동요령 준수</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 교통부문 에너지절약 방안을 실천하기 위한 노력 강화</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 주유 질서유지를 위한 4가지 행동요령 준수</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp; 1) 지정된 인터넷 매체 등을 통해 주유소 방문 전 재고 확인</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp; 2) 평시 구매량을 초과하는 유류구매를 자제하고, 석유제품 매점매석 금지에 관한 고시 시행 시 준수</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp; 3) 근거 없는 유언비어에 현혹되지 말고, 공식적인 정부발표를 신뢰</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp; 4) 불법적인 석유유통행위(가짜석유, 사재기 등) 적극 신고</p></li>
            </ul>
            <p class="level4_title">□ (원유수급 위기 심화시) 자발적 에너지절약 노력에 더해, 석유류 사용에 관한 정부지침 준수</p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ <b style="color: black; font-weight:bold;">(공공부문)</b> 직원 자가차량의 운행을 제한하는 등 솔선수범하여 강도높은 수요절감 조치 시행</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ <b style="color: black; font-weight:bold;">(산업부문)</b> 비업무용 공간 조명 사용 자제, 승강기 운행 제한 등 불필요한 에너지 사용 최소화</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ <b style="color: black; font-weight:bold;">(국민행동요령)</b> 차량 운행 및 유류구매에 관한 정부지침 준수</p></li>
            </ul>
        </div>
    </div>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">
            소관부서 : 산업통상자원부 석유산업과 (044-203-5227)<br>
            소관부서 : 산업교통재난대응과 (044-205-6334)
        </strong>
    </div>
    
</div>
    
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>