
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
        <h3 class="level2_title">원전사고</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    

    <h4 class="title_02">원전시설 방사능 누출시 행동요령</h4>

    <ul class="contextIndent_oneDepList" style="margin-left:0px;">
        <img id="img01" class="unload_rsc" margin="auto;" src="" style="width:75%" alt="원전시설 방사능 누출시 행동요령1 대체 텍스트 제공"/>
        <div class="ir">
            방사선 비상 나를 지키는 행동
            백색,청색,적색비상 시 행동요령
            백색비상
            방사선 영향이 원자로 건물 내부에 국한될 것으로 예상
            행동요령
            평상시와 같이 생활
            정부 대응
            예비현장지휘센터 발족 운영
            지자체 대응
            언론 등을 통해 대국민공개
            청색비상
            방사선 영향이 원자력발전소 부지 내부에 국한될 것으로 예상
            행동요령 상황을 예의주시하며 대피 준비
            정부 대응
            중앙방사능방재대책본부 발족 운영
            현장방사능방재지위센터 발족 운영
            지자체 대응
            주민보호조치준비
            적색비상
            방사선 영향이 원자력발전소 부지 밖으로까지 미칠 것으로 예상
            행동요령
            자자체 방재요원의 지시에 따라 질서있게 대피합니다
            정부대응
            주민보호조치 결정
            원전 비상대응 및 사고 수습 통제
            지자체 대응
            주민보호조치 실행
            방사선비상, 이렇게 알려드립니다
            백색비상일 경우 지자체에서 언론 등을 통해 공개하고, 청색,적색 비상일 경우 아래와 같이 알려드립니다.
            예방적 보호조치구역(3~5km)
            사업자 : 사업자 경보망을 통해 상황 방송
            지자체 : 민방위 경보망, 가두방송, 직접방문, 이 통장을 통한 전달, 전화
            정부 : 긴급재난방송(TV,라디오 등) 및 긴급재난문자 전송
            긴급보호조치 계획구역(20~30km)
            지자체 : 민방위 경보망, 가두방송, 직접방문, 이 통장을 통한 전달, 전화
            정부 : 긴급재난방송(TV,라디오 등) 및 긴급재난문자 전송
            대피 시 안전사고 예방을 위해
            전원차단, 가스 밸브 잠금, 보일러 잠그기, 수도 잠금 확인
            대피 시 필수품만
            평소 먹는 약, 개인 물품 및 귀중품, 갈아입을 옷, 휴대전화 및 충전기
            대피 시 이것만은 꼭 알아두세요
            안내에 따라 침착하게 이동합니다.
            *원전사고 시 방사성물질 확산 경로는 바람의 방향 등 기상 상황에 따라 달라질 수 있습니다.
            따라서 안전한 대피를 위해서는 지자체의 안내에 따라 침착하게 행동해야 합니다.
            가족의 안부는 구호소에서 확인하세요.
            학교, 공공기관, 병원 등에서는 각 기관 및 지자체 차량으로 구호소로 이동합니다.
            직접 찾으러 가지 않아도 구호소에서 가족을 만나거나 안부를 확인할 수 있습니다.
        </div>
    </ul>
    <div class="footnote_border">
        <div class="star_bulTxt_w">
            <span class="star_bulTxt">*</span>
            <span>자료제공 : 원자력안전위원회</span>
        </div>
    </div>
    
        <h4 class="level2_title">국민행동요령</h4> 
        <h4 class=title_02 style="float:left;">방사선 누출사고</h4>
        <div>
            <ul class="contextIndent_twoDepList">
                <li style="">
                    <img id="img12" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="원자력안전위원회"/>
                </li>
            </ul>
        </div>
        <br />
        <br />
        <h4 class="title_03">실내 대피 통보 시</h4>
        <br/>
        <div id="signature_div" style="font-size:10pt;float: left; width:35%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align:center;">
                                <img id="img06" src="" class="unload_rsc" alt="신속히 귀가하고 현관문과 창문을 모두 닫은 후 에어컨과 환풍기는 즉시 끕니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">신속히 귀가하고 현관문과 창문을 모두 닫은 후 에어컨과 환풍기는 즉시 끕니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align:center;">
                                <img id="img07" src="" class="unload_rsc" alt="손과 발, 얼굴을 씻고 옷도 갈아입습니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">손과 발, 얼굴을 씻고 옷도 갈아입습니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br />
        <div id="signature_div" style="font-size:10pt; width:35%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align:center;">
                                <img id="img08" src="" class="unload_rsc" alt="음식물은 밀봉하고 밖에 널린 세탁물은 안으로 들여옵니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">음식물은 밀봉하고 밖에 널린 세탁물은 안으로 들여옵니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align:center;">
                                <img id="img09" src="" class="unload_rsc" alt="귀가가 어려울 경우에는 가까운 콘크리트 건물 안으로 이동합니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">귀가가 어려울 경우에는 가까운 콘크리트 건물 안으로 이동합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br />
        <br />
        <h4 class="title_03">안전지역 대피 통보 시</h4>
        <br />
        <div id="signature_div" style="font-size:10pt;float: left;width:35%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;">
                                <img id="img10" src="" class="unload_rsc" alt="현관문과 모든 창문을 닫고, 구급약품, 의복 같은 간단한 생필품을 준비합니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">현관문과 모든 창문을 닫고, 구급약품, 의복 같은 간단한 생필품을 준비합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align:center;">
                                <img id="img11" src="" class="unload_rsc" alt="추가사고 예방을 위해 전기, 가스, 수도 등은 모두 끄고 안내에 따라 질서있게 구호소로 이동합니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">추가사고 예방을 위해 전기, 가스, 수도 등은 모두 끄고 안내에 따라 질서있게 구호소로 이동합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br>
        <br>
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <!--    개정일자 : 2022.07.11 (담당자 변경 : 최기만-> 박슬기) 고성식 변경  -->
            <strong class="level4_title">소관부서 : 환경재난대응과 조용수(044-205-6176), 김서연(044-205-6178)<br> 소관부서 : 원자력안전위원회 방재환경과 박슬기(02-397-7348)</strong>
        </div>
</div>
<br/>
<br/>
<br/>
    
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>