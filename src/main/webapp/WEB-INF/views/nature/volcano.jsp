
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
            <h3 class="level2_title">화산폭발</h3>
            <div class="infoTop_btn_w">
                <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
            </div>
        </div>

        <!-- <p class="preventTop_boxWrap">발생원인, 예방법, 대응방법을 동영상과 국민행동 매뉴얼을 통해서 자세히 알아볼 수 있습니다. 매뉴얼은 다운로드 후 출력하여 각 가정, 사무실, 학교 등에 비치하여 사전에 충분히 습득해서 재난이 발생하였을 때 피해를 최소화할 수 있도록 대비하시기 바랍니다.</p> -->
        
        
        <!-- 행동요령 본문내용 -->
        
        
        <!-- 행동요령 이미지1 -->
        <li class="prevent_img_grid" style="width:55%; float:none;">
            <img id="img01" class="unload_rsc" alt="화산재 낙하전 낙하중">
        </li>
        <h4 class="title_02">01. 평상시 화산재 대비</h4>
        <!-- 행동요령 문구 -->
        <div>화산폭발 시 많은 피해는 화산재에 의해 발생한다. 화산재가 계속 내리면 몇 시간, 또는 며칠간 외출을 하지 못할 수 있다. 화산재 낙하에 대비해 필요한 물품을 준비해 두는 것이 좋다.</div>
        <div class="contextIndent_oneDepList">
            <ul class="contextIndent_twoDepList">
                <li>
                    <strong class="level4_title">비상용품</strong>
                    <p class="dash_bulTxt_txtIndent">∙ 방진 마스크와 방호 안경</p>
                    <p class="dash_bulTxt_txtIndent">∙ 최저 3일분의 충분한 음료수와 간편식</p>
                    <p class="dash_bulTxt_txtIndent">∙ 라디오와 배터리</p>
                    <p class="dash_bulTxt_txtIndent">∙ 테이프와 랩(화산재 방지에 필요)</p>
                    <p class="dash_bulTxt_txtIndent">∙ 휴대용 램프나 손전등</p>
                    <p class="dash_bulTxt_txtIndent">∙ 난로 및 연료, 모포 및 의류</p>
                    <p class="dash_bulTxt_txtIndent">∙ 의약품, 구급함</p>
                    <p class="dash_bulTxt_txtIndent">∙ 빗자루, 삽 등 청소 용구</p>
                    <p class="dash_bulTxt_txtIndent">∙ 약간의 현금</p>
                    <p class="dash_bulTxt_txtIndent">∙ 차내 방재용품</p>
                    <p class="dash_bulTxt_txtIndent">∙ 화산재 처리용 봉투</p>
                </li>
            </ul>
        </div>
        <h4 class="title_02">02. 화산재 낙하 전 행동요령</h4>
        <!-- 행동요령 문구 -->
        <div class="contextIndent_oneDepList">
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">❍ 실외라면 건물 내부로 신속히 대피한다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 문틈이나 환기구는 물 묻힌 수건으로 막고, 창문은 테이프로 막는다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 만성기관지염이나 폐기종, 천식 환자는 실내에 머무르도록 한다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 배수로가 화산재로 막히지 않도록 낙수받이나 배수관을 지붕 홈통으로부터 분리한다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 빗물수집 시설을 급수용으로 사용 시에는 빗물수집 시설과 탱크에 연결된 파이프를 분리한다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 각막 손상 위험이 있으므로 콘택트렌즈를 뺀다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 재난방송을 청취하여 재난 대응요령 등을 들으며 대비해야 한다.</p>
                </li>
            </ul>
        </div>
        
        <h4 class="title_02">03. 화산재 낙하 중 행동요령</h4>
        <!-- 행동요령 문구 -->
        <div class="contextIndent_oneDepList">
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">❍ 가급적 실내에 머무른다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ TV나 라디오로 재난방송을 청취한다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 실외에 있을 경우 자동차나 건물 등으로 신속하게 대피한다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 마스크나 손수건, 옷으로 코와 입을 막는다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 식수에 화산재가 들어간 경우 마시지 않는다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 채소는 잘 씻어 먹도록 한다.</p>
                </li>
            </ul>
            <ul class="contextIndent_twoDepList">
                <li>
                    <strong class="level4_title">알아두세요!</strong>
                    <p class="dash_bulTxt_txtIndent">보건용 마스크인 KF94나 KF80 등의 마스크는 화산재 피해 예방에 도움이 된다. 따라서 화산재 확산 시 반드시 마스크를 착용한다.</p>
                </li>
            </ul>
        </div>
        <h4 class="title_02">04. 화산재 낙하 후 행동요령</h4>
        <!-- 행동요령 문구 -->
        <div class="contextIndent_oneDepList">
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">❍ 고글과 마스크를 착용하고 실내·외 및 자동차를 신속하게 청소한다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 마스크가 없으면 젖은 천을 사용한다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 밖에서 입은 옷은 갈아입고 몸을 깨끗이 씻는다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 화산재가 날리지 않도록 물을 가볍게 뿌리거나 젖은 걸레를 사용한다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 2차 피해를 막기 위해 실내외 청소방법을 달리하여 청소한다.</p>
                    <p class="dash_bulTxt_txtIndent">❍ 수거한 화산재는 튼튼한 비닐봉지에 넣어 지정된 장소에 버린다.</p>
                </li>
            </ul>
        </div>
        <!-- 행동요령 이미지2 -->
        <li class="prevent_img_grid" style="width:55%; float:none;">
            <img id="img09" class="unload_rsc" alt="낙하후 실내 실외">
        </li>
        <div class="contextIndent_oneDepList" style="display:block">
            <ul class="contextIndent_twoDepList">
                <li>
                    <strong class="level4_title">실외</strong>
                    <p class="dash_bulTxt_txtIndent">∙ 청소 시 건물이나 기계, 자동차, 상하수도시설에 화산재가 들어가지 않도록 한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 기계는 화산재를 전부 청소할 때까지 전원을 꺼두거나 밀봉해 둔다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 지붕의 화산재는 적정한 시기에 물을 이용하여 청소한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 잔디는 물을 뿌린 후 깎아낸다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 1cm 이상 쌓인 화산재는 삽으로 제거한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 스프링클러 등으로 화산재를 적신 후 청소한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 화산재가 배수구나 하수도에 들어가지 않게 한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 화산재에 물을 많이 뿌리면 단단한 덩어리가 되므로 주의한다.</p>
                </li>
            </ul>
        </div>
        <!-- 행동요령 문구 -->
        <div class="contextIndent_oneDepList" style="display:block">
            <ul class="contextIndent_twoDepList">
                <li>
                     <strong class="level4_title">실내</strong>
                    <p class="dash_bulTxt_txtIndent">∙ 모든 문과 창문을 열어 환기한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 가전제품은 청소하기 전에 전원을 차단한다. </p>
                    <p class="dash_bulTxt_txtIndent">∙ 카펫이나 가구, 가전제품 등은 진공청소기나 젖은 걸레를 사용해 청소한다.</p>
                    <p class="dash_bulTxt_txtIndent">※ 청소기 속의 먼지를 털어 내거나 손질할 때에도 화산재가 날리지 않도록 주의.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 에어컨, 난방기구 등은 필터를 교환한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 솔이 달린 바닥용 청소기는 사용하지 않는다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 환풍기나 의류건조기는 사용하지 않는다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 화산재를 털어낸 후 세탁하며 평소보다 많은 양의 세재를 사용한다.</p>
                </li>
            </ul>
        </div>
        <div class="contextIndent_oneDepList">
            <ul class="contextIndent_twoDepList">
                <li>
                     <strong class="level4_title">화산재를 왜 청소해야 할까?</strong>
                    <p class="dash_bulTxt_txtIndent">∙ 화산재는 TV·컴퓨터·카메라 등 고가의 기기 속까지 침투해 수리가 불가능한 고장을 유발한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 화산재를 구성하는 화산유리 성분은 정전기를 유발하여 전기 또는 전자 기기의 파손 또는 화재를 일으킬 수 있다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 대기가 건조한 경우, 바람 또는 자동차가 이동할 때 화산재가 쉽게 대기 중으로 날아올라 건강에 악영향을 끼친다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 화산재는 분화 후 몇 달 또는 몇 년 동안 주변을 계속해서 떠다닐 수 있다. 따라서 이미 청소한 곳이라도 다시 화산재가 쌓일 수 있으므로 지속적으로 청소를 해야 한다.</p>
                </li>
            </ul>
        </div>
        <!-- 행동요령 문구 -->
        <div class="contextIndent_oneDepList">
            <ul class="contextIndent_twoDepList">
                <li>
                     <strong class="level4_title">자동차 관련 주의사항</strong>
                    <p class="dash_bulTxt_txtIndent">∙ 화산재는 자동차 고장의 원인이 되기 때문에 가능하면 운전을 자제한다. 불가피한 경우 전조등을 켜고 천천히 주행한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 와이퍼 사용 시 유리에 흠집이 생길 수 있으므로 세정액을 충분히 사용한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 엔진오일과 오일필터, 에어필터를 자주 교환한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 차량 내부는 물론 엔진, 트렁크 등을 깨끗이 청소한다.</p>
                    <p class="dash_bulTxt_txtIndent">　※ 브러시로 털면 차에 흠집이 생길 수 있으니 주의.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 주요 부품은 청소하고, 청소 전에 공기흡입구 및 전자부품을 밀봉한다.</p>
                </li>
            </ul>
        </div>
        <h4 class="title_02">05. 화산폭발 시 화구주변 대피요령</h4>
        <!-- 행동요령 문구 -->
        <div class="contextIndent_oneDepList">
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">∙ 화산은 전조 없이 폭발할 수 있다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 화산이 분화하면 크고 작은 돌덩이들이 날아가서 직접 인체에 피해를 줄 수 있다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 화구 주변에서 연기가 보이거나, 지하로부터 땅울림이 들리거나, 냄새가 나는 등 이상하다고 생각되는 현상을 알아차리면 즉시 안전한 지역으로 대피하고, 경찰 등에게 연락한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 화산 분화 시 가능한 빨리 화구 주변을 빨리 벗어나고 가까운 대피소나 바위 그늘 등에 몸을 숨긴다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 화산가스는 공기보다 무거워 골짜기와 같은 곳에 쌓일 수 있으니 좁고 낮은 지역은 피한다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 헬멧, 고글을 착용하고, 마스크나 축축한 수건 등으로 입을 막는다.</p>
                    <p class="dash_bulTxt_txtIndent">∙ 휴대폰 라디오 등의 통신기기를 준비하고 재난방송을 청취하여 재난 대응요령을 따른다.</p>
                </li>
            </ul>
        </div>
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 지진방재관리과 김상덕(044-205-5195)</strong>
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