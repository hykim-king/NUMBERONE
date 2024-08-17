
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
<title>생활안전행동요령</title>
<link href="/ehr/resources/css/common.css"  rel="stylesheet"/>
<link href="/ehr/resources/css/layout2.css" rel="stylesheet" />
<link href="/ehr/resources/css/content.css" rel="stylesheet" />
<link href="/ehr/resources/css/dp_sub.min.css" rel="stylesheet" />

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
    var pagecd = $("#selMenugo option:selected").val();
    var viewId = $("#selMenugo option:selected").val().replace(".","");

    var cd1 = pagecd.split(".")[1];
    var param = "?cd1="+cd1+"&cd2=99&pagecd="+pagecd+"&menuSeq=128";

        location.href = viewId+".html"+param;
}
    
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
        <h2 class="level1_title">생활안전 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">석유제품 사고</h3>
 
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    <h4 class="title_02">가짜석유제품의 정의</h4>
    <p style="font-size: 1.2em;">
    가짜석유제품은 정상 석유제품에 다른석유제품이나 석유화학제품 등을 혼합하여 차량이나 기계의 연료로 사용할 목적으로 제조한 연료를 말한다.
    </p>

        <!-- 가짜석유 -->
        <div>
            <img
                alt="석유제품에 등급이 다른 것을 혼합, 석유제품에 석유로부터 물리화학적 공정을 거쳐 제조되는 석유화학제품 혼합,석유화학제품에 다른 석유화학제품 혼합, 석유제픔이나 석유화학제품에 탄소화 수소를 함유한 물질을 혼합"
                id="img01" class="unload_rsc" margin="auto;" src=""
                style="margin-top: 5px; width: 65%" />
        </div>
        <div>
            <img
                alt="지속적인 고유가 + 석유제품의 높은 세금 =회피심리작용, 저렴한 가격에 구입을 원하는 소비자, 부당이익을 취하고자 하는 공급자, 가짜석유"
                id="img02" class="unload_rsc" margin="auto;" src=""
                style="margin-top: 5px; width: 65%" />
        </div>
        <div>
            <img
                alt="1. 제조 및 보관 과정에서 생길수 있는 화재 및 폭발위험 2.자동차 연소의 경우 벤젠, 알데히드 등 발암성 물질 다량 배출 및 일산화 탄소, 탄화수소, 입자상 물질 등 대기환경에 유해한 배출가스 증가  3. 연비저하, 엔진소음 증가, 부품부식 촉진으로 차량 및 기계 고장, 시동꺼짐 발생  4. 석유 유통질서 혼란"
                id="img03" class="unload_rsc" margin="auto;" src=""
                style="margin-top: 5px; width: 65%" />
        </div>
        <div>
            <img
                alt="1단계 : 상태점검- 안전한 장소나 가까운 정비공장에 방문해서 차량이나 기계 상태 점검 2단계 :석유제품 채취- 점검 후 이상 원인이 가짜석유 제품으로 판단될 경우 연료탱크의 석유제품 채취(휘발류1.5L, 경유1L)
                신고유형 : 제시시료(연료탱크에서 자동차용휘발유와 자동차용경유 등의 석유제품 직접 제시하는 경우), 석유판매업자 신고(신고는 시료제시 없이 업소만 신고), 제시시료+석유판매업자 신고 : 한국석유관리원에 직접 시료를 제시하고 해당업소를 신고해서 품질검사 원하는 경우 ※ 현장점검 결과 가짜석유제품 판매가 확인되면 10만원에서 부터 1,000만원까지 포상금지급"
                id="img04" class="unload_rsc" margin="auto;" src=""
                style="margin-top: 5px; width: 65%" />
        </div>
        
    <h4 class="title_02">품질부적합 제품의 정의</h4>
    <p style="font-size: 1.2em;">
    석유제품 품질기준과 검사방법 및 검사수수료에 관한 고시(산업통상자원부 고시)에서 규정하고 있는 석유제품 품질기준을 벗어나는 경우를 말한다.
    </p>
        
        <!-- 품질부적합 -->

        <div>
            <img
                alt="침전물+물=석유 정상제품에 물 또는 침전물이 혼합된 제품"
                id="img05" class="unload_rsc" margin="auto;" src=""
                style="margin-top: 5px; width: 65%" />
        </div>

        <div>
            <img
                alt="◦수분혼합 품질부적합 제품의 경우- 주행 중 시동 꺼짐으로 차량 멈춤- 연료필터 경고등이 점등 : 시동 스위치[ON]점등, 엔진 시동 걸명 소등됨, 연료필터 내 물이 일정량 이상이 되면 시동 상태에서 경고등 계속점등 
                *그 밖의 품질부적합 유형에 따라 다양한 증상 발생"
                id="img06" class="unload_rsc" margin="auto;" src=""
                style="margin-top: 5px; width: 65%" />
        </div>

        <div>
            <img
                alt="1단계 : 상태점검- 안전한 장소나 가까운 정비공장에 방문해서 차량이나 기계 상태 점검 2단계 :석유제품 채취- 점검 후 이상 원인이 가짜석유 제품으로 판단될 경우 연료탱크의 석유제품 채취(휘발류1.5L, 경유1L)
                신고유형 : 제시시료(연료탱크에서 자동차용휘발유와 자동차용경유 등의 석유제품 직접 제시하는 경우), 석유판매업자 신고(신고는 시료제시 없이 업소만 신고), 제시시료+석유판매업자 신고 : 한국석유관리원에 직접 시료를 제시하고 해당업소를 신고해서 품질검사 원하는 경우 
                ※ 현장점검결과 품질부적합 제품 판매가 확인되면 20만원의 포상금 지급"
                id="img07" class="unload_rsc" margin="auto;" src=""
                style="margin-top: 5px; width: 65%" />
        </div>


        <!-- 정량미달 -->
    <h4 class="title_02">정량미달의 정의</h4>
    <p style="font-size: 1.2em;">
    석유제품 정량미달 판매란 「계량에 관한 법률 시행령」에 따라 주유기의 경우 사용공차(0.75%)에 미달되게 판매하는 것을 말하며 20L 기준 150mL 미달되게 판매하는 경우를 말한다.
    </p>
        <div>
            <img
                alt="◦석유제품 정량미달 피해사례- 자가 운전자 10명 중 8명은 주유시 정량미달을 의심해 본 적이 있음(2014년 한국소비자원'자동차 주유 소비자 의식 및 피해경험' 설문결과), 주유소에서 주유량 조작으로 정량보다 3% 적게 주유해 3천 8백여만원의 부당이득을 챙긴 협의로 주유소 업주가 입건된 사례(2016.07.27 MBC뉴스)"
                id="img08" class="unload_rsc" margin="auto;" src=""
                style="margin-top: 5px; width: 65%" />
        </div>
        
        <div>
            <img
                alt="휘발유, 경유, LPG 한국석유관리원에서는 국민 피해를 방지하고 건전한 석유유통질서 확립을 위해  정량검사를 실시하고 있습니다."
                id="img09" class="unload_rsc" margin="auto;" src=""
                style="margin-top: 5px; width: 65%" />
        </div>
        
        <div>
            <img
                alt="1단계 주유시(정량미달) 확인사항 - 셀프주유소 : 실제 주유량, 차량(기계) 연료량 게이지 눈금을 확인하고 연료탱크 총 용량 등을 비교 후 정량 주유여부 확인
                - 일반주유소 : 주유기 계기판, 연료 구매영수증 표시사항 차량 및 기계 연료량 게이지 눈금 확인 후 정량 주유여부 확인
                2단계 오일콜센터 신고(신고 시 체크할 사항!)- 증거물 확보 : 구매 피해를 입증할 수 있는 증거물 필요(구매 영수증 or 불법현장사진)
                - 신고방법 : 오일콜센터(1588-5166)을 포함한 홈페이지(www.kpetro.or.kr), 우편, 방문(지역별 본부) 
                - 현장점검 결과 품질부적합 석유 판매가 확인이 되면 20만원의 포상금 지급"
                id="img10" class="unload_rsc" margin="auto;" src=""
                style="margin-top: 5px; width: 65%" />
        </div>
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 한국석유관리원 지원안전처 원기요 (031-789-0272)</strong>
        </div>
    </div>
    
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>