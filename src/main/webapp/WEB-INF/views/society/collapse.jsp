
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
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
        <h3 class="level2_title">건축물붕괴</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>

    <h4 class="title_02">평상시 이렇게 대비합니다.</h4>
    
    <!-- 행동요령 문구 -->
    <div class="contextIndent_oneDepList">
        <ul class="contextIndent_twoDepList">
            <li>
                <p class="dash_bulTxt_txtIndent">ㅇ건물 및 개인 생활공간에서 안전을 위해 각종 안전장치(완강기, 로프, 손전등 등)가 어디에 있는지 숙지합니다.</p>
                <p class="dash_bulTxt_txtIndent">ㅇ 건물 붕괴 대비 건물 밖으로 나가는 대피 통로를 파악해 둡니다. 이때 엘리베이터보다 계단을 이용합니다.</p>
                <p class="dash_bulTxt_txtIndent">ㅇ 건물 붕괴 시 밖으로 나가지 못한 경우를 대비 안전하게 대피할  수 있는 공간(튼튼한 탁자 밑, 안전한 벽체 주변)을 확인합니다.</p>
            </li>
        </ul>
    </div>
    <!-- 행동요령 본문내용 -->
    <h4 class="title_02">건축물 붕괴 징조를 느낄 때는</h4>
    <!-- 행동요령 문구 -->
    <div class="contextIndent_oneDepList">
        <ul class="contextIndent_twoDepList">
            <li>
                <p class="dash_bulTxt_txtIndent">(1) 다음과 같은 건축물 붕괴 징조를 느낄 때는 건물 밖으로 즉시 대피하고, 119, 112, 가까운 주민 센터에 신고하며, 주변 사람들에 동 사실을 알립니다. 단, 대피 시 안전 취약계층 대상자를 먼저 대피시키도록 하며, 대피 시 꼭 신발을 신고 이동합니다.</p>
                <p class="dash_bulTxt_txtIndent">　ㅇ 건물바닥이 갈라지거나 함몰되는 현상이 발생되는 때</p>
                <p class="dash_bulTxt_txtIndent">　ㅇ 갑자기 창이나 문이 뒤틀리고 여닫기가 곤란한 때</p>
                <p class="dash_bulTxt_txtIndent">　ㅇ 철거 중인 구조물에 화재가 발생하거나 화염에 철강재가 노출된 때</p>
                <p class="dash_bulTxt_txtIndent">　ㅇ 바닥의 기둥부위가 솟거나 중앙부위에 처짐 현상이 발생되는 때</p>
                <p class="dash_bulTxt_txtIndent">　ㅇ 기둥이 휘거나 대리석 등 마감재가 부분적으로 떨어져 나가는 때</p>
                <p class="dash_bulTxt_txtIndent">　ㅇ 기둥 주변에 거미줄형 균열이나 바닥 슬래브의 급격한 처짐 현상이 발생한 때</p>
                <p class="dash_bulTxt_txtIndent">　ㅇ 계속되는 지반침하와 석축ㆍ옹벽에 균열이나 배부름현상이 나타나는 때</p>
                <p class="dash_bulTxt_txtIndent">　ㅇ 벽이나 바닥의 균열소리가 얼음이 깨지는 듯이 나는 때</p>
                <p class="dash_bulTxt_txtIndent">(2) 건축물 붕괴 징후(대규모 홍수 및 지진 발생 시)가 발생할 경우, 지자체-정부에서 경고방송 및 재난방송을 실시하므로 TV, 라디오, 인터넷 등을 통해 재난상황을 지속적으로 주의 깊게 확인하며, 안내에 따라 신속하게 대처해야 합니다..</p>
                <p class="dash_bulTxt_txtIndent">(3) 가정에서는 붕괴에 대비하여 가스를 잠그고 전기제품의 전원을 끄고, 집 주변에 있는 물건을 치우거나 고정시켜 두며, 중요한 물건은 안전한 곳으로 옮기며 외출한 가족 등 주변 사람들에게 상황을 전파합니다.</p>
                <p class="dash_bulTxt_txtIndent">(4) 지역재난안전대책본부 및 경찰서, 소방서 등 주요기관들의 전화번호를 확인하고 온 가족이 알 수 있는 곳에 두고, 지역 주민(마을대표 등) 간의 비상연락망을 유지합니다.</p>
            </li>
        </ul>
    </div>
    <br/>
    <h4 class="title_02">건축물 붕괴사고 발생 시</h4>
    <!-- 행동요령 문구 -->
    <div class="contextIndent_oneDepList">
        <ul class="contextIndent_twoDepList">
            <li>
                <p class="dash_bulTxt_txtIndent">(1) 건축물 붕괴가 발생 시 지역재난안전대책본부의 통제에 따라 지정된 장소로 즉시 대피합니다.</p>
                <p class="dash_bulTxt_txtIndent"><b style="color:red;">※ 어린이‧노인‧장애인‧임산부 등 안전취약계층이 보호자(조력자)와 함께 우선 피난할 수 있도록 협력합니다.</b></p>
                <p class="dash_bulTxt_txtIndent"> ㅇ 대피시에는 엘리베이터 이용으로 인한 엘리베이터안에 갖힘 현상등을 방지하기 위하여 계단으로 대피합니다.</p>
                <p class="dash_bulTxt_txtIndent"> ㅇ 대피시에 반려동물을 동반하는 경우에는 이동장등을 이용하여 반려동물이 돌발행동을 하지 않도록 잘 관리합니다.</p>
                <p class="dash_bulTxt_txtIndent"> ㅇ 대피시에 인원이 많은 경우에는 이동 및 대피 과정에서 압사, 낙상 등의 인명피해가 발생하지 않도록 합니다.</p>
                <p class="dash_bulTxt_txtIndent"> ㅇ 밖으로 나갈 때에는 떨어지는 유리, 간판, 기와 등에 주의하며, 소지품으로 머리를 보호하면서 침착하게 대피합니다.</p>
                <p class="dash_bulTxt_txtIndent">(2) 대피장소로 이동할 시간적 여유가 없을 경우에는 주변의 안전지대로 비상대피하고 지역재난안전대책본부 또는 소방서, 경찰서 등에 구조를 요청합니다.</p>
                <p class="dash_bulTxt_txtIndent">(3) 대피장소 등 안전한 곳에 도달한 이후에는 별도 안내가 있을 때까지 무단 이동하지 않고 대기하며, 가족들과 연락이 되지 않을 경우에는 재난안전대책본부 등을 통해 확인합니다.</p>
                <p class="dash_bulTxt_txtIndent">(4) 대규모 지진으로 인한 건축물 붕괴 시에는, 추가 여진 등으로 인한 2차 피해가 발생할 수 있으므로, 건물이나 제방 인근으로 접근하지 않도록 합니다.</p>
                <p class="dash_bulTxt_txtIndent">(5) 폭우 또는 폭설 등 재해가 지속될 경우에는 신속한 피해복구 및 물자지원이 어려울 수 있으므로, 확보하고 있는 물자는 아껴서 사용합니다.</p>
                <p class="dash_bulTxt_txtIndent">(6) 재난상황시 각종 유언비어가 발생할 수 있습니다. 재난관리책임기    관의 올바른 정보에 따라 행동합니다. 특히 공식 재난방송이나 공공  기관의 안내방송 또는 문자 등이 제공하는 정보에 따라 행동합니다.</p>
            </li>
        </ul>
    </div>
    <br/>
    <h4 class="title_02">붕괴된 건축물 내부에 있을 때는</h4>
    <!-- 행동요령 문구 -->
    <div class="contextIndent_oneDepList">
        <ul class="contextIndent_twoDepList">
            <li>
                <p class="dash_bulTxt_txtIndent">(1) 붕괴된 건물에서 대피하지 못한 경우 119 등에 연락하여 구조를  요청하며, 주변을 살펴서 안전한 장소를 확보하여야 합니다.</p>
                <p class="dash_bulTxt_txtIndent"> - 건축물이 붕괴한 경우에는 당황하지 말고 주변을 살펴서 대피로를 찾으세요.</p>
                <p class="dash_bulTxt_txtIndent">(2) 엘리베이터 홀, 계단실 등과 같이 견디는 힘이 강한 벽체가 있는 안전한 곳으로 임시 대피합시다.</p>
                <p class="dash_bulTxt_txtIndent">(3) 부상자는 가능한 빨리 안전한 장소로 함께 탈출 후 응급처치를 합니다.</p>
                <p class="dash_bulTxt_txtIndent">(4) 평소에 완강기, 밧줄(로프), 손전등 등 탈출에 필요한 물품이 있는 곳을 확인해 둡시다.</p>
                <p class="dash_bulTxt_txtIndent">(5) 붕괴사고 발생 때 건물 밖으로 탈출 가능한 통로를 찾고, 주위 사람들과 협력하여 완강기, 밧줄 등을 이용하여 노약자, 어린이, 여성 등을 우선하여 탈출하도록 합니다.</p>
                <p class="dash_bulTxt_txtIndent">(6) 대피 중 위급상황에 대비해 건축물에 대해 잘 아는 건강한 성인을 선두로 이동해야 하며, 낙하물에 대비해 방석 등으로 머리를 보호하면서 신속하고 질서 있게 대피합니다.</p>
                <p class="dash_bulTxt_txtIndent">(7) 이동 중에는 장애물 등을 될 수 있으면 움직이지 않도록 하고, 불가피하게 장애물을 제거할 때 추가 붕괴위험에 대비합니다.</p>
                <p class="dash_bulTxt_txtIndent">(8) 유리파편이나 낙하물에 대비하여 코트, 담요, 신문, 상자(박스), 가방 등으로 머리와 얼굴을 보호합니다.</p>
                <p class="dash_bulTxt_txtIndent">(9) 가정이나 다중시설에서 붕괴 때문에 고립이 장기화될 경우를 고려하여, 냉장고 등에서 음식과 물을 찾아 먹되 가능한 한 오래 버틸 수 있도록 음식물의 소비를 조절해야 합니다.</p>
                <p class="dash_bulTxt_txtIndent">(10) 잔해에 깔리거나 잔해로 인해 움직일 수 없게 되었을 때 혈액순환이 잘되도록 수시로 손가락과 발가락을 움직여야 합니다.</p>
                <p class="dash_bulTxt_txtIndent">(11) 사랑하는 가족을 생각하면서 생존을 위해 계속 탐색하면 기운을 차리게 되고 사기를 유지할 수 있습니다.</p>
                <p class="dash_bulTxt_txtIndent">(12) 구조대의 호출이 들리면 침착하게 반응하고, 체력을 완전히 소진시킬 수 있으므로 불필요하게 고함을 지르지 마세요.</p>
                <p class="dash_bulTxt_txtIndent">(13) 주위에 사람이 있다고 확신할 때는 손전등을 비추거나 큰소리로 부르거나 파이프 등을 두드려 구조대의 주의를 끌어야 합니다.</p>
                <p class="dash_bulTxt_txtIndent">(14) 불필요하게 체력을 소모하지 말고 될 수 있으면 편안한 자세를 유지하면서 구조를 요청합시다. 방법은, 파이프 등을 규칙적으로 두드리거나 소리를 지르거나 휴대전화로 119에 신고합니다.</p>
                <p class="dash_bulTxt_txtIndent">(15) 휴대전화는 불통구역이라도 전원을 켜두되, 축전지(배터리) 절약을 위해 전원은 일정주기로 꺼주세요.</p>
                <p class="dash_bulTxt_txtIndent">(16) 공기 공급이 잘되는 창문이나 선반이 없는 벽 쪽이나 낙하물로부터 보호받을 수 있는 튼튼한 테이블 밑에서 자세를 낮추고 구조를 기다립니다.</p>
                <p class="dash_bulTxt_txtIndent">(17) 안전지대에 있는 경우는 그곳에 머무르고, 부서진 계단이나 정전으로 가동이 중단될 수 있는 엘리베이터는 이용하지 마세요.</p>
                <p class="dash_bulTxt_txtIndent">(18) 가스누출 위험이 있는 경우에는 폭발의 위험이 있으므로 성냥, 난로(스토브) 등을 켜지 말아야 하며 손전등을 사용합니다.</p>
            </li>
        </ul>
    </div>
    <br/>
    <h4 class="title_02">붕괴된 건축물 외부에 있을 때는</h4>
    <!-- 행동요령 문구 -->
    <div class="contextIndent_oneDepList">
        <ul class="contextIndent_twoDepList">
            <li>
                <p class="dash_bulTxt_txtIndent">(1) 건물 밖으로 나오면 추가붕괴와 가스폭발 등의 위험이 없는 넓은   공터 등 안전한 지역으로 대피합니다.</p>
                <p class="dash_bulTxt_txtIndent">(2) 붕괴건물 밖에 있는 주민들은 건물의 추가붕괴, 가스폭발, 화재 등의 위험이 있으니 피해가 없도록 건물에 진입 및 사고현장에 접근하지 마세요.</p>
                <p class="dash_bulTxt_txtIndent">(3) 붕괴지역 주변을 보행할 때나 이동 때에는 위험지역 또는 불안정한 물체에서 멀리 떨어지고, 낙하물이나 유리파편 등에 다치지 않도록 가방, 방석, 책 등으로 머리를 보호합니다.</p>
                <p class="dash_bulTxt_txtIndent">(4) 사람들과 함께 있을 때 혼자 무리하게 행동하지 않고 협력하여  안전을 유지합니다.</p>
            </li>
        </ul>
    </div>
    <br/>
    <h4 class="title_02">붕괴된 건축물에 매몰된 경우에는</h4>
    <!-- 행동요령 문구 -->
    <div class="contextIndent_oneDepList">
        <ul class="contextIndent_twoDepList">
            <li>
                <p class="dash_bulTxt_txtIndent">(1) 불필요한 활동을 최소화하고 체온을 유지하며 고함으로 체력을 소모하지 않습니다.</p>
                <p class="dash_bulTxt_txtIndent">(2) 폐쇄된 공간은 공기가 오염될 수 있으므로 입과 코를 옷이나 천으로 가려서 먼지 흡입을 최소화하여 호흡을 유지합니다.</p>
                <p class="dash_bulTxt_txtIndent">(3) 규칙적으로 벽·파이프 등을 두드린다.</p>
                <p class="dash_bulTxt_txtIndent">(4) 휴대전화의 전파는 매몰자 탐색에 도움이 될 수 있기 때문에 전원은 규칙적으로 일정 시간만 켜서 배터리를 절약합니다.</p>
                <p class="dash_bulTxt_txtIndent">(5) 주변을 살펴 음식과 물을 확보하고, 구조될 수 있다는 희망을 가지고 물과 음식을 찾아 먹으면서 체온 유지에 힘씁니다.</p>
                <p class="dash_bulTxt_txtIndent">(6) 2차 붕괴나 낙하물에 대비하여 단단한 테이블 밑이나 창문이 없는 단단한 벽체 옆이나 기둥, 안전공간 에서 기다립니다.</p>
                <p class="dash_bulTxt_txtIndent">(7) 시각장애인과 청각장애인의 경우 안전사고에 대비하여 비상시 연  락처 목록을 준비하세요. (장애인 단체 등 비상연락망)</p>
            </li>
        </ul>
    </div>
    <br/>
    <h4 class="title_02">건축물 붕괴사고 신고</h4>
    <!-- 행동요령 문구 -->
    <div class="contextIndent_oneDepList">
        <ul class="contextIndent_twoDepList">
            <li>
                <p class="dash_bulTxt_txtIndent">(1) 건축물이 붕괴했다는 것을 주변에 신속하게 알려주세요.</p>
                <p class="dash_bulTxt_txtIndent">(2) 경보기, 육성 또는 기타의 방법으로 주위 사람에게 알려 긴급 피난하게 하여야 합니다.</p>
                <p class="dash_bulTxt_txtIndent">(3) 신고자의 전화번호를 알려주는 등 가능하면 구체적으로 설명해 주세요.</p>
                <p class="dash_bulTxt_txtIndent">　ㅇ 전화로 119에 신고하여 신속히 소방차가 출동하게 하여야 한다.</p>
                <p class="dash_bulTxt_txtIndent">　　(예) “여기는 00구 00동 000로 000건물이 붕괴되었습니다.” (정확하고 침착하게)</p>
            </li>
        </ul>
    </div>
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title"> 소관부서 : 국토교통부 건축안전과 신동화(044-201-4991)<br> 소관부서 : 산업교통재난대응과(044-205-6332)</strong>
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