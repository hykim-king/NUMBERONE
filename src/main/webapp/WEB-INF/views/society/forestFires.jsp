
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
        <h3 class="level2_title">산불</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <h3 class="title_02" style="font-size: 1.5em">산불 국민행동요령</h4>
    <h3 class="level4_title" style="font-size: 1.3em; color: #2B5BD5">산불, 관심과 실천으로 피해를 줄일 수 있습니다. </h4>
    <div class="know_how_w" id="main_01" style="margin-top:0px">
        <div class="contextIndent_oneDepList" style="margin-top:0px">
            <strong class="level4_title" style="font-size: 1.3em">01. 평소에 이렇게 대비합니다.</strong>
            <p class="level4_title">1.1. 산불 안전을 지켜주세요.</p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 산과 가까운 곳에서 쓰레기, 영농부산물 등을 소각하지 않습니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 특히, 날씨가 건조하며 바람이 많이 부는 날은 매우 위험합니다. </p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 입산통제구역, 등산로 폐쇄구간으로 지정된 장소에 출입하지 않습니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 허용된 구역 내에서만 취사나 야영을 하며, 화기사용 후에는 불이 꺼졌는지 반드시 확인합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 산과 가까운 곳에서 연기 또는 불꽃을 목격하였을 시 신속하게 신고합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 소방서(119), 경찰서(112)에 신고합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 해당 시·군·구 재난안전대책본부 또는 시·군·구청 및 행정복지센터에 신고합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 산림청 중앙산림재난상황실(042-481-4119)에 신고합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 스마트폰에서 ＜ 스마트산림재해 ＞ 앱의 ‘신고하기’를 통해 신고합니다. </p></li>
            </ul>
            <p class="level4_title">1.2. 집 주변을 안전하게 관리합니다.</p>
            <ul class="contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 집에서 1.5m 이내의 지면에는 되도록 돌, 모래, 흙 등과 같은 불연성 재료를 사용합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 집 창문 근처에는 큰 식물이나 덤불 대신 작고 수분이 많은 식물을 가꾸도록 합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 지붕, 테라스 등에 낙엽이나 작은 가지가 쌓이지 않도록 주기적으로 정리합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 집주변의 쓰레기, 건초, 건축자재 등의 가연물은 되도록 1.5m 이상 떨어진 곳에 보관합니다.</p></li>
            </ul>
            <p class="level4_title">1.3. 가족과 함께 위급 상황에 대비합니다.</p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 비상연락망과 대피 시 각자의 역할을 정하도록 합니다. </p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 대피(피난)할 장소와 경로를 미리 알아둡니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;※ 대피(피난)장소는 산에서 멀리 떨어진 마을회관, 학교, 공터 등</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 만일의 사고에 대비해 응급처치방법을 반복적으로 훈련하여 익혀 둡니다.</p></li>
            </ul>
            <p class="level4_title">1.4. 비상용품을 준비해 둡니다.</p>
            <ul class="contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 산불에 대비하여 비상용품을 준비해 두고 보관장소와 사용법을 알아둡니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 비상식품: 물, 통조림, 라면 등 가열하지 않고 먹을 수 있는 것</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 구급약품: 연고, 감기약, 소화제, 복용중인 약 등이 포함된 구급함</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 생활용품: 간단한 옷, 화장지, 물티슈, 라이터, 여성용품, 비닐봉투</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;- 기타: 라디오, 손전등 및 건전지, 휴대전화, 보조배터리, 비상금, 비상연락망 등</p></li>
            </ul>
            <strong class="level4_title" style="font-size: 1.5em">02. 산불이 발생하면 이렇게 준비합니다.</strong>
            <p class="level4_title">2.1. 집 안에서는 이렇게 준비합니다.</p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 지역 대피 안내에 귀를 기울이고 이웃 주민과 수시로 연락합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 즉시 이동할 수 있도록 비상용품과 외출용 가방을 준비합니다. </p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 지역의 비상 대응 계획과 대피할 장소, 최선의 경로를 확인합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 모든 창문과 문을 닫도록 합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 커튼을 제거하고 가연성 가구는 되도록 창문과 문에서 멀리 떨어진 방 중앙으로 옮겨 둡니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 가스를 차단하고 불을 켜두어 연기나 어둠 속에서도 소방관이 집을 확인할 수 있도록 합니다.</p></li>
            </ul>
            <p class="level4_title">2.2. 집 밖에서는 이렇게 준비합니다.</p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 집 주위에 있는 가연성 물질을 되도록 집에서 멀리 옮겨 둡니다. </p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 떨어진 불씨로 불이 붙는 것을 대비하여 집 주위에 충분한 물을 뿌려 둡니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 집 주위에 있는 스프링클러나 호스의 물을 흐르는 상태로 두지 않습니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;※ 산불진화 작업 시 진화용수 수압에 영향을 미칠 수 있습니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 외부 조명을 켜두어 연기나 어둠 속에서도 소방관이 집을 확인할 수 있도록 합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 차량 이용에 대비하여 차량을 진입로 근처로 이동시킨 후 키는 가지고 있도록 합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;※ 차량 연료가 부족하지 않도록 대피 경로에 있는 주유소를 알아둡니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 주변 이웃이 대피 준비를 하고 있는지 확인합니다.</p></li>
            </ul>
            <div class="description_box" style="text-align: inherit;">
                <p class="description_fcBlack_txt">＜ 가축 또는 반려동물이 있는 경우 준비사항 ＞</p>
                <a>- 축사 주변의 가연성 물질을 멀리 옮겨놓고 충분한 물을 뿌려 두도록 합니다.</a> 
                <a>- 가축 또는 반려동물을 두고 대피할 경우를 대비하여 충분한 물과 먹이를 준비해 둡니다.</a> 
                <a>- 대피 시 산불이 번지는 상황을 대비하여 축사의 문을 열어두고 반려동물의 목줄을 느슨하게 풀어 둡니다.</a> 
            </div>
            <p class="level4_title">2.3. 산행 또는 야영(캠핑) 중에는 이렇게 준비합니다.</p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 구역 내 안내방송, 휴대전화 등을 통해 위험 상황을 확인하고 주변 사람들에게 알립니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 산행 또는 야영(캠핑)을 멈추고 산불이 확산하고 있는 경로를 피해 산과 멀리 떨어진 곳으로 이동합니다. </p></li>
            </ul>
            <strong class="level4_title" style="font-size: 1.5em">03. 산불이 다가오면 이렇게 대피합니다.</strong>
            <p class="level4_title">3.1. 장소에 따라 이렇게 대피합니다.</p>
            <p class="level4_title">3.1.1. 집에서는 이렇게 대피합니다.</p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 대피를 권장하는 지역의 안내가 있는 경우 즉시 안내된 장소로 이동합니다. </p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 혹시 미처 대피하지 못한 주민이 있을 수 있으므로 옆집을 확인하고 대피 상황을 알립니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 대피 시 관계자의 지시에 따르고 재난문자, 방송 등 산불정보에 집중하여 위험 상황을 확인합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 대피장소로 이동 시 산과 멀리 떨어진 도로를 이용하고 산불의 진행경로에서 벗어난 안전한 장소로 이동합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 대피 안내를 받지 못한 경우에도 연기 냄새가 나거나 두려움을 느낀다면 산에서 떨어진 마을회관, 학교 등의 안전한 장소로 즉시 대피합니다.</p></li>
            </ul>
            <p class="level4_title">3.1.2 산행 또는 야영(캠핑) 중에는 이렇게 대피합니다.</p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 산행 중 대피 시 계곡부는 피하고 가능하면 활엽수가 있는 구간을 따라 신속히 하산하도록 합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 야영 중 대피 시 산과 멀리 떨어진 도로를 이용하여 산불확산 구역과 멀리 떨어진 안전지대로 신속히 이동합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 미처 대피하지 못한 경우 바람을 등지고 주변의 낙엽, 가지 등을 제거한 후 엎드려 낮은 자세를 유지합니다.</p></li>
            </ul>
            <p class="level4_title">3.2. 대상자에 따라 이렇게 대피합니다.</p>
            <p class="level4_title">3.2.1. 어린이와 함께 있을 때는 이렇게 대피합니다. </p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 아기는 띠를 이용해 안고 손을 자유롭게 하여 아기와 자신의 신체를 보호합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 어린이의 경우 헤어지지 않도록 손을 잡고 대피하며, 행동요령을 말해주어 함께 대처할 수 있도록 합니다.</p></li>
            </ul>
            <p class="level4_title">3.2.2. 노약자나 몸이 불편하신 분은 이렇게 대피합니다.</p>
            <div class="description_box" style="text-align: inherit;">
                <p class="description_fcBlack_txt">＜ 평소 준비사항 ＞</p>
                <a>- 가족, 친지, 이웃 등 산불 발생 시 도와줄 수 있는 보호자(조력자)를 미리 정하고 도움을 요청할 방법(전화 등)을 구체적으로 정합니다.</a> 
                <a>&nbsp;※ 보호자(조력자)의 연락처가 포함된 비상연락망을 사전에 준비해 둡니다.</a> 
                <a>- 평소 복용하고 있는 약을 충분히 준비하고, 대피 시 도움이 되는 기구(지팡이, 휠체어 등)을 미리 준비합니다.</a>
                <p class="description_fcBlack_txt">＜ 보호자(조력자)의 역할 ＞</p>
                <a>- 안전취약계층에게 평소 산불행동요령을 주기적으로 교육 및 훈련하여 대피방법을 숙지할 수 있도록 합니다.</a> 
                <a>&nbsp;※ 안전취약계층 : 어린이, 노인, 장애인 등 재난에 취약한 사람</a> 
            </div>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 혼자서 행동하지 않고 이웃 또는 거주지 시·군·구청 및 행정복지센터 등에 도움을 요청합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">&nbsp;※ 긴급 시에는 소방서(119) 또는 경찰서(112)에 신고하여 도움을 요청합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 거동이 불편한 경우 조금이라도 안전한 장소에서 도움을 기다립니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 시각장애가 있는 경우 라디오나 텔레비전 등을 통해 상황을 파악하고 주위 사람에게 적극적으로 도움을 요청합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 청각장애가 있는 경우 텔레비전의 자막방송과 휴대전화 등을 통해 상황을 파악하고 주변 사람들에게 장애를 알려 안전한 장소로 유도 및 필요한 배려를 받도록 합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 정신이 불안정하거나 발달장애가 있는 경우 서두르지 말고 가족이나 주위 사람에게 도움을 요청합니다.</p></li>
            </ul>
            <strong class="level4_title" style="font-size: 1.5em">04. 산불 진화 후에는 이렇게 행동합니다. </strong>
            <p class="level4_title">4.1. 현재 상황을 알리고 부상자를 살펴본 후 즉시 구조를 요청합니다. </p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 안전한 장소로 대피한 후 부상이 없는지 확인하고 가족 또는 지인들에게 상황을 알립니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 부상이 있는 경우 주변의 도움을 받아 응급 처치하고 소방서(119) 등 구조 구급기관에 신고합니다.</p></li>
            </ul>
            <p class="level4_title">4.2. 주변 피해 상황에 따라 귀가 여부를 결정합니다.</p>
            <ul class="leftW70 contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">○ 거주지 시·군·구청 및 행정복지센터 등의 안내에 따라 행동하도록 합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 집에 피해가 있는지 확인하고 이동경로별로 안전을 확인한 후 귀가 여부를 결정합니다. </p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 귀가 후 집 또는 집주변의 상수도, 전기시설 등 피해가 없는지 확인한 후 사용합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">○ 집주변 산에 숨겨진 불씨가 있는지 주의 깊게 확인하고 위험이 감지되면 즉시 신고합니다.</p></li>
            </ul>
        </div>
    </div>
    
    
    <div class="know_how_w unload_rsc" id="main_02" style="margin-top:0px">
        <strong class="level4_title" style="font-size: 1.5em">1. 산불이 발생하면 이렇게 준비합니다.</strong>
        <div>
            <ul class="contextIndent_twoDepList">
                <li class="prevent_img">
                    <img id="img11" src="" class="" alt="산불이 발생하면 이렇게 준비합니다."/>
                </li>
            </ul>
        </div>
        <strong class="level4_title" style="font-size: 1.5em">2. 산불이 다가오면 이렇게 대피합니다.</strong>
        <div>
            <ul class="contextIndent_twoDepList">
                <li class="prevent_img">
                    <img id="img12" src="" class="" alt="산불이 다가오면 이렇게 대피합니다."/>
                </li>
            </ul>
        </div>
        <strong class="level4_title" style="font-size: 1.5em">3. 산불 진화 후에는 이렇게 행동합니다.</strong>
        <div>
            <ul class="contextIndent_twoDepList">
                <li class="prevent_img">
                    <img id="img13" src="" class="" alt="산불 진화 후에는 이렇게 행동합니다."/>
                </li>
            </ul>
        </div>
        <strong class="level4_title" style="font-size: 1.5em">4. 평소에는 이렇게 대비합니다.</strong>
        <div>
            <ul class="contextIndent_twoDepList">
                <li class="prevent_img">
                    <img id="img14" src="" class="" alt="평소에는 이렇게 대비합니다."/>
                </li>
            </ul>
        </div>
        <strong class="level4_title" style="font-size: 1.5em">스마트폰 ‘스마트산림재난’앱</strong>
        <div>
            <ul class="contextIndent_twoDepList">
                <li class="prevent_img">
                    <img id="img15" src="" class="" alt="스마트폰 ‘스마트산림재난’앱 "/>
                </li>
                <li class="prevent_img">
                    <img id="img16" src="" class="" alt="산불 관련 신고"/>
                </li>
            </ul>
        </div>
    </div>
    <br>
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 환경재난대응과 박경진(044-205-6171), 백미래(044-205-6173)
        <br> 소관부서 : 산림청 산불방지과 정경득(042-281-4251)</strong>
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