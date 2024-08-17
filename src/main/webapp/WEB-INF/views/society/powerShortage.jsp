
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
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
<!-- -------------------------------------------------------- -->
<!-- 컨텐츠 시작                                              -->
<!-- -------------------------------------------------------- -->

<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">사회재난시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">정전 및 전력부족</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>

    <h4 class="title_02">전력수급 경보단계별 국민 행동요령</h4>
    <h4 class="level3_title">　</h4>
    <div class="contextIndent_twoDepList">
        <strong class="title_03">(1단계: 관심ㆍ주의단계) 예비전력 4.5GW~2.5GW</strong>
        <ul class="prevent02_img_GridWrap">
            <li class="prevent_text_grid">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">- 산업체, 공공기관 등에서는 비상발전기 가동 시작 / 수요관리 실시</span></li>
                    <li><span class="dash_bulTxt_txtIndent">- 시설물 관리자(전기안전관리자)는 전력상황 및 불시정전 가능성을 공지 / 비상발전기 가동 여부를 점검</span></li>
                </ul>
            </li>
        </ul>
        <strong class="dot_bulTxt_txtIndent fcBlack">□ (상황인식) 라디오, 방송, 인터넷 등을 통해 전력상황에 관심을 기울입니다.</strong>
        <strong class="dot_bulTxt_txtIndent fcBlack">□ (절약조치) 가정, 산업체, 빌딩 등에서는 불요불급한 전기사용을 자제합니다.</strong>
        <ul class="prevent02_img_GridWrap">
            <li class="prevent_text_grid">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">○ 겨울철에는 오전 10시~12시, 여름철에는 오후 2시~5시 사이 전기사용을 자제합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 전기 냉난방기 가동을 최소화하여, 정부 지침에 정한 실내 온도(예시: 냉방 28℃ 이상, 난방 18℃ 이하)를 유지합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 조명을 최소화하고, 전원 플러그를 뽑아 대기전력을 줄입니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 주체별로 전력소모가 많은 전기기기의 사용을 자제합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">　　- 가정에서는 청소기, 세탁기, 다리미 등</span></li>
                    <li><span class="dash_bulTxt_txtIndent">　　- 산업체에서는 생산시설(조업 스케쥴 조정 등)</span></li>
                    <li><span class="dash_bulTxt_txtIndent">　　- 빌딩에서는 사무기기(PC, 팩스, 프린터 등)</span></li>
                </ul>
            </li>
        </ul>
        <strong class="dot_bulTxt_txtIndent fcBlack">□ (안전조치) 사전에 정전에 대비합니다.</strong>
        <ul class="prevent02_img_GridWrap">
            <li class="prevent_text_grid">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">○ 양초, 랜턴 등 정전시 비상조명기구를 준비합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 시설물 관리자(전기안전관리자)의 안내를 청취합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 비상구, 대피로 등을 사전에 확인합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 안전취약계층(어린이, 노인, 장애인 등)을 확인하여 불시상황에 대비합니다.</span></li>
                </ul>
            </li>
        </ul>
        <strong class="title_03">(2단계: 경계ㆍ심각단계) 예비전력 2.5GW 미만</strong>
        <ul class="prevent02_img_GridWrap">
            <li class="prevent_text_grid">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">- 전국적으로 민방위 재난경보(싸이렌) 가동 / TV, 라디오 등에 재난방송 실시</span></li>
                    <li><span class="dash_bulTxt_txtIndent">- 비상절전 시행, 순환정전 준비 및 시행</span></li>
                    <li><span class="dash_bulTxt_txtIndent">- 시설물 관리자(전기안전관리자)는 정전시 비상발전기 가동, 승강기 등 점검</span></li>
                    <li><span class="dash_bulTxt_txtIndent">- 치안유지 강화, 신호등 비상전원 점검, 인명구조장비 준비</span></li>
                </ul>
            </li>
        </ul>
        <strong class="dot_bulTxt_txtIndent fcBlack">□ (상황인식) 재난경보, 재난방송을 청취하면서 전력상황을 예의주시합니다.</strong>
        <strong class="dot_bulTxt_txtIndent fcBlack">□ (절약조치) 1단계 행동요령을 다시 한 번 점검하고, 필수 조명과 전기기기를 제외한 나머지 시설의 가동을 중단합니다.</strong>
        <strong class="dot_bulTxt_txtIndent fcBlack">□ (안전조치) 급작스런 정전에 대비합니다.</strong>
        <ul class="prevent02_img_GridWrap">
            <li class="prevent_text_grid">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">○ 불시정전에 대비하여 엘리베이터 이용 등을 자제합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 필요시 비상구, 대피로 등을 통해 미리 안전한 곳(적정 온도, 조명 등이 확보된 지역)으로 대피합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 양식장, 수족관, 병원 등 정전시 피해가 예상되는 시설(사업장)은 사전에 예비전원을 확보하거나 불시정전에 대비합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 양초, 랜턴 등 정전시 비상조명기구를 다시 한 번 점검합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 신호등, 지하철 등 전기로 동작하는 시스템의 작동 불능시 경찰 등 안내자의 통제에 따라 침착하게 행동합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 안전취약계층(어린이, 노인, 장애인 등)을 확인하여 갑작스런 정전에 당황하지 않도록 대비합니다.</span></li>
                </ul>
            </li>
        </ul>
        <strong class="title_03">(3단계) 정전 발생 시</strong>
        <ul class="prevent02_img_GridWrap">
            <li class="prevent_text_grid">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">- 전국적으로 민방위 재난경보(싸이렌) 가동 / TV, 라디오 등에 재난방송 실시</span></li>
                    <li><span class="dash_bulTxt_txtIndent">- 비상절전 시행, 순환정전 준비 및 시행</span></li>
                    <li><span class="dash_bulTxt_txtIndent">- 시설물 관리자(전기안전관리자)는 정전시 비상발전기 가동, 승강기 등 점검</span></li>
                    <li><span class="dash_bulTxt_txtIndent">- 치안유지 강화, 신호등 비상전원 점검, 인명구조장비 준비</span></li>
                </ul>
            </li>
        </ul>
        <strong class="dot_bulTxt_txtIndent fcBlack">□ (상황인식) 양초, 랜턴 등 비상조명기구를 찾아 켜고 주변과 전력상황을 확인합니다.</strong>
        <ul class="prevent02_img_GridWrap">
            <li class="prevent_text_grid">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">○ 위치하고 있는 곳만 정전인지, 주변과 같이 정전인지 잠시 확인하면서 자동으로 전력이 공급되기를 기다립니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 스마트폰, 라디오 등 매체나 인접 한전 지점, 구청, 동사무소, 소방서, 파출소 등에 연락하여 정전상황을 확인합니다.</span></li>
                </ul>
            </li>
        </ul>
        <h4 class="level3_title" style="color:black">　전력공급 부족에 의한 순환정전의 경우, 특정 지역 정전시간은 최대 1시간을 넘지 않습니다.</h4>
        <strong class="dot_bulTxt_txtIndent fcBlack">□ (안전조치) 아래와 같이 대응하여 인명사고, 재산상 피해를 예방합니다.</strong>
        <ul class="prevent02_img_GridWrap">
            <li class="prevent_text_grid">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">○ 가정에서 정전 발생 시</span></li>
                    <li><span class="dash_bulTxt_txtIndent">　 - 안내방송 및 유관기관의 안내에 따라 차분하게 행동합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">　 - 아파트일 경우, 단지 내 선로 및 전기설비의 고장일 수 있으니 관리사무소에 연락하여 문의합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 엘리베이터에서 정전 발생 시</span></li>
                    <li><span class="dash_bulTxt_txtIndent">　 - 차분히 버튼벨을 눌러 관리사무소에 연락합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">　 - 연락이 되지 않을 경우, 승강기번호 일곱 자리를 확인하여 119 상황실에 연락합니다. (위치추적이 가능하므로 구조 가능)</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 실내공연장ㆍ행사장에서 정전 발생 시</span></li>
                    <li><span class="dash_bulTxt_txtIndent">　 - 침착하게 비상조명이 점등될 때까지 제자리에서 기다리며 시설관리자 또는 행사주최자의 안내를 경청 합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">　 - 장시간의 정전이 예상되어 대피할 때에는 안내에 따라 비상구에서 가까운 시민부터 천천히 대피합니다.</span></li>
                </ul>
            </li>
        </ul>
    </div>
    <h4 class="title_02">정전 및 전력부족시 국민행동요령</h4>
    <div class="contextIndent_oneDepList">
        <strong class="title_03">불시 정전 사전대비 방법은</strong>
        <ul class="prevent02_img_GridWrap">
            <li class="prevent_text_grid">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">- 불시 정전에 대비 가정 내 손전등, 비상식 음료, 휴대용 라디오 등을 사전에 준비해 둡시다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">- 전기기기(전열기, 난방기, 에어컨 등)의 과부하 사용은 정전과 화재의 원인이 될 수 있으니 동시 사용을 자제하고 별도의 전용회로를 구성 또는 전용콘센트를 사용합시다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">- 컴퓨터 등 정밀기기를 사용하는 곳에서는 무정전전원공급장치(UPS)를 설치하면 피해를 예방할 수 <br/>있습니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">- 경보기 등 정전을 감지할 수 있는 시설을 갖추는 것이 좋습니다.</span></li>
                    <div class="contextIndent_threeDepList">
                        <span class="star_bulTxt_w"><span class="star_bulTxt">*</span>정전신고와 전기상담은 국번 없이 <span class="_fcRed">123(한국전력공사 콜센터), 구조요청은 119</span> 입니다.</span>
                    </div>
                </ul>
            </li>
            <li class="prevent_img_grid"><img id="img01" class="unload_rsc" alt="관리실이죠? 갑자기 정전이 일어났어요!" src=""/></li>
        </ul>
        <strong class="title_03">불시 정전 때는</strong>
        <div class="contextIndent_twoDepList">
            <strong class="level4_title">우리 집만 정전이 된 때는</strong>
            <ul class="contextIndent_oneDepList contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">- 정전이 되면 플러그를 뽑고 스위치를 꺼두며 옥내 주택용 분전반의 누전차단기 또는 개폐기의 이상 유무를 확인합시다.</span>
                <li><span class="dash_bulTxt_txtIndent">- 옥내 전기설비에 이상이 있으면 전기공사업체에 의뢰 수리합시다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 옥내 전기설비에 특별한 이상이 없을 때에는 한전에 연락합니다.</span></li>
            </ul>
            <strong class="level4_title">이웃집과 같이 정전이 된 때는</strong>
            <ul class="contextIndent_oneDepList contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">- 대부분 한전 선로 고장인 경우로 신속히 복구되나, 사고의 유형에 따라 다소 시간이 소요될 수가 있으므로 동요하지 말고 잠시 기다려 주시기 바랍니다.</span>
                <li><span class="dash_bulTxt_txtIndent">- 아파트는 단지 내 선로 및 전기설비의 고장일 수 있으니 관리사무소에 연락합니다.</span>
            </ul>
            <strong class="level4_title">엘리베이터 내에서 정전이 된 때는</strong>
            <ul class="contextIndent_oneDepList contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">- 정전 등으로 조명이 꺼지면 당황하지 말고 인터폰으로 연락합시다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 정전으로 운행이 정지되면 인터폰으로 구조 요청하고 임의 탈출을 시도하지 맙시다.</span></li>
            </ul>
            <div class="contextIndent_threeDepList">
                <span class="star_bulTxt_w"><span class="star_bulTxt">*</span>엘리베이터 정전시 구조요청은 <span class="_fcRed">119</span> 입니다.</span>
            </div>
        </div>
        <strong class="title_03">불시 정전 때는</strong>
        <ul class="contextIndent_oneDepList contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">- 전기가 재공급되면 가전제품 하나하나마다 플러그를 순서대로 꽂습시다.</span><li>
            <li><span class="dash_bulTxt_txtIndent">- 시간간격을 조금씩 두고 실시하는 것이 과전류에 의한 손상방지가 가능합니다.</span><li>
            <li><span class="dash_bulTxt_txtIndent">- 냉동식품을 점검합시다</span><li>
            <li><span class="dash_bulTxt_txtIndent">- 식품이 얼어있는 상태라면 재냉동이 가능하지만 고기 등의 빛깔이 변했거나 냄새가 난다고 판단되면 바로 버립시다.</span><li>
        </ul>
    </div>
    <div class="title_02">Q & A</div>
    <div class="qna_wrap">
        <div class="level4_title">Q. 엘리베이터 안에 있을 때 정전이 되면은 ?</div>
        <div class="qna_anser">
            <div class="txt_q">A</div>
            <div class="contextIndent_twoDepList">
                <div class="dash_bulTxt_txtIndent">- 정전 등으로 조명이 꺼지면 당황하지 말고 인터폰으로 연락합니다. 정전으로 운행이 정지되면 인터폰으로 구조 요청하고 임의 탈출을 시도해서는 안됩니다. 버튼벨을 눌러 관리사무소에 연락하시고 안될 시에는 앞에 승강기번호 일곱자리를 119상황실에 연락주시면 바로 위치추적이 가능하여 구조를 받을 수 있습니다.</div>
            </div>
        </div>
    </div>
    <br>

        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 한국전력공사  (123 : 고객센터) <br> 소관부서 : 산업통상자원부 전력산업정책과 (044-203-3883) <br> 소관부서 : 산업교통재난대응과 (044-205-6334) </strong>
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