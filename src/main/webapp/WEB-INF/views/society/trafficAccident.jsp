
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
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
            <h3 id="tbmainlab" class="level2_title">교통사고</h3>
            <div class="infoTop_btn_w">
            <a id="agobeforeView"  class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i
                    class="arrow_left_imgSet_icon"></i></a>
            </div>
        </div>

        <div class="section01">
            <div class="tabarea">
                <div class="tabmenu01 on">
                    <div class="detail">
                        <h3 class="title_02">교통사고 시 국민행동요령</h3>
                        <p>
                            <strong class="level4_title">1. 교통사고가 발생했나요?</strong> 
                            - 교통사고가 발생하면 안전한 곳으로 우선 대피하여 신고를 한 뒤, 차량의 비상깜빡이를 켜고 트렁크를 열고 둔 후 삼각대를 설치합니다.
                            <br/>- 차량을 이동시킬 수 있는 상황이라면 2차 사고 예방을 위하여 갓길이나 안전한 곳으로 차량을 옮겨야 합니다.
                            <br/>- 눈으로는 교통사고 부상의 정도를 파악하기 어려우니, 화재가 발생한 경우 외에는 부상자를 건드리지 맙시다.
                            <br/>- 구조대의 활동이 본격적으로 시작되면 구조에 참여하지 말고 사고 현장에서 물러나야 합니다.
                            <br/>- 위험물질 수송차량 사고시 대형사고가 발생 할 수 있으니, 사고지점에서 빠져 나와 대피합시다.
                            <br/>- 사고현장에서는 유류나 가스가 누출되어 화재가 발생할 위험성이 있으니 화재를 유발할 수 있는 인화성 물질은 멀리해야 합니다.
                        </p>
                        <p>
                            <strong class="level4_title">2. 지하철전동차 화재가 발생했나요?</strong> 
                            - 객차마다 설치되어 있는 비상통화장치를 이용하여 눌러 승무원과 연락합시다.
                            <br/>- 객차마다 2개씩 비치된 소화기를 이용하여 불을 꺼야 합니다.
                            <br/>- 긴급하게 탈출이 필요한 때에 출입문이 열리지 않으면, 출입문마다 설치되어 있는 비상열림 장치를 취급한 후, 손으로 출입문을 열어야 합니다.
                            <br/>- 코와 입을 손수건이나 티슈로 막고 비상구로 신속히 대피하되, 뛰면 위험하므로 걸어서 대피합시다.
                            <br/>- 정전 시에는 유도등을 따라 출구로 나가고, 유도등이 보이지 않을 때는 시각장애인용 보도 블록을 따라 가거나 벽을 짚으면서 대피합시다.
                            <br/>- 지상으로 대피가 여의치 않을 때에는 대피요원 안내에 따라 철로를 이용하여 대피합시다.
                            <br/>- 가능하다면 소화전을 이용 불을 꺼야합니다.
                        </p>
                        <p>
                        <strong class="level4_title">3. 자동차가 물속에 빠졌나요?</strong> 
                        - 안전벨트를 푼 다음 문이 열리는지 확인 한 후, 탈출 할 때 방해되는 물품을 벗어(두꺼운 옷, 주변에 걸릴만한 운동화 끈 등) 수영이 가능하도록 합니다.
                        <br/>- 물에 뜨는 물건이 주위에 있으면 움켜쥐고 출입문을 통해 빠져나오거나, 망치 또는 단단한 물건을 이용해 유리창을 깨고 탈출해야 합니다.
                        <br/>- 바로 탈출하지 못한 경우에는 차내에 물이 어느 정도 들어와 물 속과 차량 내부의 기압 차이가 없어져 출입문을 열수 있을 때 힘껏 문을 열어 침착하게 기다렸다가 탈출합시다.
                        <br/>- 차에서 나오기 전에 3~4회 심호흡을 하고 숨을 크게 들이 쉰 다음 숨을 멈추고 나오면 물속에서 더 오래 견딜 수 있습니다.
                        <br/>- 실제 상황에 닥치면 당황하지 않고, 주변 상황과 안전을 신속하게 고려하여 탈출해야 합니다.
                        </p>

                        <h3 class="title_02">자동차 사고에 대비합시다</h3>
                        <p>
                            <strong class="level4_title">안전한 도로횡단을 위해서는</strong> 
                            - 우선 멈추어 좌우를 살피는 습관을 가져야 합니다. 
                            <br/>- 횡단보도가 아닌 곳을 무단으로 횡단하는 일은 금해야 합니다. 
                            <br/>- 횡단보도에서 신호가 바뀌더라도 차량의 진행유무를 반드시 확인합시다.
                            <br/>- 어린이나 노약자는 보호자와 함께 건너야 합니다. 
                            <br/>- 처음부터 건너기 시작한 사람이 아니면, 파란신호가 끝나지 않았더라도 건너지 않아야 합니다.
                            <br/>- 신호등이 없거나 점멸신호가 있는 횡단보도에서는 차량이 완전히 멈추었거나 운전자의 수신호가 있을 때 건너도록 합시다.
                            <br/>- 운전자는 사람이 내리고 있는 차량 옆으로 지나가거나 추월하지 않도록 해야 합니다.
                            <br/>- 차에서 내리는 사람은 지나가는 자전거, 오토바이, 차량에 주의해야 합니다.
                            <br/>- 사람은 인도로 다니고 차는 차도로 다녀야 합니다.
                            <br/>- 인도와 차도가 구분이 안 된 도로의 경우에는 '길 가장자리' 즉 한쪽으로 다니도록 합시다.
                            <br/>- 운동은 운동장이나 놀이터와 같은 안전한 장소에서 해야 합니다.
                            <br/>- 비가 오는 날에 우산을 숙여 쓰면 앞을 살필 수 없으니 똑바로 쓰고 차도에서 떨어진 길의 가장자리로 걷도록 합시다.
                            <br/>- 운전자의 눈에 잘 띄게 하기 위해 밝은 색 옷을 입어야 합니다.
                            <br/>- 좁은 길이나 골목길에서 넓은 도로로 나올 때에는 아무리 급한 일이 있더라도 일단 멈추어 서서 좌우를 잘 확인하고 나서야 합니다.
                        </p>

                        <h3 class="title_02">알아두면 좋은 재난정보</h3>
                        <p>- 교통사고 예방요령위험물질 수송차량 사고시 사고지점에서 빠져 나와 대피해야 합니다.
                        <br/>- 화재가 발생한 경우 외에는 부상자를 건드리지 말아야 합니다.
                        </p>
                    </div>
                </div>
            </div>
        </div>


        <h4 class="level2_title">국민행동요령</h4>
        <h3 class="title_02">교통사고</h3>
        <div>
            <ul class="contextIndent_twoDepList">
                <li style=""><img id="img10" src="" class="unload_rsc"
                    style="padding-left: 38%; width: 15%;" alt="경찰청로고" /></li>
            </ul>
        </div>
        <br /> <br /> <br />
        <div id="signature_div"
            style="font-size: 10pt; float: left; width: 35%;">
            <table border="0" cellpadding="1" cellspacing="1"
                style="font-size: 10pt; width: 35%;">
                <tbody>
                    <tr>
                        <td>
                            <ul class="contextIndent_twoDepList">
                                <li style="width: 318px; text-align: center;"><img
                                    id="img04" src="" class="unload_rsc"
                                    alt="교통사고 발생 시 피해 차량이라도 정차하여야 합니다." /></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center;">교통사고 발생 시 피해 차량이라도 정차하여야 합니다.<br>(현장을
                            이탈하면 뺑소니 오해 우려 등)
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="signature_div" style="font-size: 10pt;">
            <table border="0" cellpadding="1" cellspacing="1"
                style="font-size: 10pt; width: 35%;">
                <tbody>
                    <tr>
                        <td>
                            <ul class="contextIndent_twoDepList">
                                <li style="width: 318px; text-align: center;"><img
                                    id="img05" src="" class="unload_rsc"
                                    alt="비상등을 켜고 주간에는 후방100m, 야간에는 후방 200m에 삼각대를 세웁니다." /></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center;">비상등을 켜고 주간에는 후방100m, 야간에는 후방
                            200m에 삼각대를 세웁니다.</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br /> <br />
        <div id="signature_div"
            style="font-size: 10pt; width: 35%; float: left;">
            <table border="0" cellpadding="1" cellspacing="1"
                style="font-size: 10pt; width: 35%;">
                <tbody>
                    <tr>
                        <td>
                            <ul class="contextIndent_twoDepList">
                                <li style="width: 318px; text-align: center;"><img
                                    id="img06" src="" class="unload_rsc"
                                    alt="서로 명함을 교환한 뒤, 보험사에 연락하여 현장접수를 합니다." /></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center;">서로 명함을 교환한 뒤, 보험사에 연락하여 현장접수를
                            합니다.</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="signature_div" style="font-size: 10pt;">
            <table border="0" cellpadding="1" cellspacing="1"
                style="font-size: 10pt; width: 35%;">
                <tbody>
                    <tr>
                        <td>
                            <ul class="contextIndent_twoDepList">
                                <li style="width: 318px; text-align: center;"><img
                                    id="img07" src="" class="unload_rsc"
                                    alt="인사사고는 현장에서 반드시 경찰에 신고합니다." /></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center;">인사사고는 현장에서 반드시 경찰에 신고합니다.</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br /> <br /> <br />
        <div id="signature_div"
            style="font-size: 10pt; float: left; width: 35%;">
            <table border="0" cellpadding="1" cellspacing="1"
                style="font-size: 10pt; width: 35%;">
                <tbody>
                    <tr>
                        <td>
                            <ul class="contextIndent_twoDepList">
                                <li style="width: 318px;"><img id="img08" src=""
                                    class="unload_rsc" alt="보험사나 경찰을 기다리는 동안 사고현장 사진을 찍어둡니다." /></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center;">보험사나 경찰을 기다리는 동안 사고현장 사진을
                            찍어둡니다.<br>(사고위치, 양 차량의 바퀴자국, 상대차량의 번호판 등)
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="signature_div" style="font-size: 10pt;">
            <table border="0" cellpadding="1" cellspacing="1"
                style="font-size: 10pt; width: 35%;">
                <tbody>
                    <tr>
                        <td>
                            <ul class="contextIndent_twoDepList">
                                <li style="width: 318px; text-align: center;"><img
                                    id="img09" src="" class="unload_rsc"
                                    alt="파손부위는 다각도, 근접촬으로 수차례 찍어 두는 것이 증거자료 확보 등에 좋습니다." /></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center;">파손부위는 다각도, 근접촬으로 수차례 찍어 두는 것이
                            증거자료 확보 등에 좋습니다.</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br>
    <br>
    <div style="border-top: solid 1.5px #dadada;">
        <strong class="level4_title">소관부서 : 국토부 교통안전정책과 성유경(044-201-3866)</strong>
        </div>  
    </div>
    
    
    <!-- Footer -->
    <!-- <div id="footer_include"
        data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>