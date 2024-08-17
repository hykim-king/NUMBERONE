
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
        <h3 id="tbmainlab" class="level2_title">전기·가스사고</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <h5 class="title_02">전기로 인한 화재에 대비합시다.</h5>
    <div class="contextIndent_oneDepList">
        <strong class="title_03">1. 단락(합선)에 의한 화재위험이 있나요?</strong>
        <div class="contextIndent_twoDepList">
            <span class="dash_bulTxt_txtIndent">- 퓨즈나 과전류 차단기는 반드시 정격용량의 것을 사용합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 용량에 적합한 규격 전선을 사용하고, 노후되었거나 손상된 전선은 새 전선으로 교체합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 스위치, 배전반 등의 내부를 정기적으로 점검하여 전기가 통할 수 있는 물질이나 가연성 물질 등을 제거합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 천장 등 보이지 않는 장소에 시설된 전선에 대해서도 수시로 점검하여 이상 유무를 확인합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 배선은 가능한 보호관을 사용하고 열이나 외부 충격 등에 노출되지 않도록 합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 못이나 스테이플러로 전선을 고정하지 않도록 합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 바닥이나 문틀을 통과하는 전선이 손상되지 않도록 배관 등으로 보호합시다.</span>
        </div>
        <strong class="title_03">2. 누전에 의한 화재위험이 있나요?</strong>
        <div class="contextIndent_twoDepList">
            <span class="dash_bulTxt_txtIndent">- 건물이나 대용량 전기기구에는 배선을 분류하여 배선별로 누전차단기를 설치 합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 배선의 피복손상 여부를 수시로 확인합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 전선이 금속체나 젖은 구조물에 직접 접촉되지 않도록 배선해야 합니다.</span>
        </div>
        <strong class="title_03">3. 전기 스파크에 의한 화재위험이 있나요?</strong>
        <div class="contextIndent_twoDepList">
            <span class="dash_bulTxt_txtIndent">- 각종 전기기기는 사용 후에 반드시 플러그를 뽑아 둡시다.</span>
            <span class="dash_bulTxt_txtIndent">- 정전이 되면 플러그를 뽑거나 스위치를 꺼둡시다.</span>
            <span class="dash_bulTxt_txtIndent">- 배전반 내의 먼지, 금속가루 등 분진을 제거합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 밀가루, 톱밥, 섬유 먼지 등 가연성 분진이 많이 발생하는 장소에서는 수시로 청소를 실시하여 분진이 쌓이지 않도록 합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 배전반 등 전기시설 부근에는 가구, 위험물, 기타 가연물은 두지 맙시다.</span>
        </div>
        <strong class="title_03">4. 과부하에 의한 전기화재 위험이 있나요?</strong>
        <div class="contextIndent_twoDepList">
            <span class="dash_bulTxt_txtIndent">- 한 콘센트에 여러 개의 플러그를 꽂아 사용하는 문어발식 사용을 금합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 전기기기의 전기용량 및 전압에 적합한 규격전선을 사용합시다.</span>
        </div>
        <strong class="title_03">5. 과열에 의한 전기화재 위험이 있나요?</strong>
        <div class="contextIndent_twoDepList">
            <span class="dash_bulTxt_txtIndent">- 사용한 전기기구는 반드시 플러그를 뽑아 놓고 외출합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 전기장판 등 발열체를 장시간 전원을 켠 상태로 사용하는 것은 위험합니다.</span>
            <span class="dash_bulTxt_txtIndent">- 전열기 등의 자동 온도 조절기의 고장 여부를 수시로 확인합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 고열이 발생하는 백열전구는 열이 잘 발산될 수 있도록 하고 가연물을 가까이 두지 않도록 합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 전선과 전선, 단자와 전선 등 접속부위는 단단히 조여서 느슨하지 않도록 해야 합니다.</span>
        </div>
    </div>
    <h5 class="title_02">가스관련 사고에 대비합시다.</h5>
    <div class="contextIndent_oneDepList">
        <strong class="title_03">1. 가스를 사용하기 전이신가요?</strong>
        <div class="contextIndent_twoDepList">
            <span class="dash_bulTxt_txtIndent">- 가스가 누출되지는 않았는지 냄새로 우선 확인합시다.</span>
            <span class="dash_bulTxt_txtIndent">- LPG는 바닥으로부터, 도시가스(LNG)는 천정으로부터 냄새를 맡아야 합니다.</span>
            <span class="dash_bulTxt_txtIndent">- 불쾌한 냄새가 나면 가스가 새고 있는 것입니다.</span>
            <span class="dash_bulTxt_txtIndent">- 가스기구를 사용할 때에는 창문을 열어 신선한 공기로 충분히 실내를 환기시켜야 합니다.</span>
            <span class="dash_bulTxt_txtIndent">- 가스레인지 주위에는 가연성 물질(빨래, 스프레이 통 등)을 가까이 두지 맙시다.</span>
        </div>
        <strong class="title_03">2. 가스를 사용하고 계신가요?</strong>
        <div class="contextIndent_twoDepList">
            <span class="dash_bulTxt_txtIndent">- 가스불을 켤 때에는 불이 붙었는지 꼭 확인합시다(불이 붙지 않은 상태로 점화코크가 열리면 가스가 누출될 수 있습니다).</span>
            <span class="dash_bulTxt_txtIndent">- 파란 불꽃이 되도록 공기 조절기를 조절합시다. 불완전연소 시 유독성가스와 일산화탄소가 나오고 연료 소비량도 많아집니다.</span>
            <span class="dash_bulTxt_txtIndent">- 국물이 넘치거나 바람으로 인해 불이 꺼지지 않았는지 옆에서 지켜보도록 하고, 가능한 자리를 떠나지 맙시다.</span>
            <span class="dash_bulTxt_txtIndent">- 불이 꺼지면 자동으로 가스가 차단되는 제품을 사용하고 자동차단 장치가 제대로 작동하는지 자주 확인합시다.</span>
        </div>
        <strong class="title_03">3. 가스를 사용하신 뒤인가요?</strong>
        <div class="contextIndent_twoDepList">
            <span class="dash_bulTxt_txtIndent">- 가스사용 후에는 연소기 코크와 중간밸브를 꼭 잠가야합니다.</span>
            <span class="dash_bulTxt_txtIndent">- 장기간 외출 시에는 용기밸브도 잠그는 것이 안전합니다. 도시가스의 경우는 메인밸브를 잠가야 하며 이사를 갈 때에는 도시가스관리사무소에 연락하여 필요한 조치를 취합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 가스레인지는 자주 이동하지 말고 한 곳에 고정하여 사용합시다.</span>
        </div>
        <strong class="title_03">4. 평소엔 이렇게 점검합시다.</strong>
        <div class="contextIndent_twoDepList">
            <span class="dash_bulTxt_txtIndent">- 비누나 세제로 거품을 내어 배관, 호스 등의 연결부분을 수시로 점검하여 누출 여부를 살펴야 합니다.</span>
            <span class="dash_bulTxt_txtIndent">- 가스레인지는 항상 깨끗이 청소하여 버너의 불구멍이 막히지 않도록 합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 취침 전에는 반드시 점화코크와 중간밸브가 꼭 잠겨 있는지 확인하도록 합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 아이들이 사용하지 못하도록 반드시 주의를 줍시다.</span>
        </div>
        <strong class="title_03">5. 휴대용 부탄 가스레인지는 이렇게 사용합시다.</strong>
        <div class="contextIndent_twoDepList">
            <span class="dash_bulTxt_txtIndent">- 휴대용 가스레인지는 야외에서 사용하도록 만들어 졌습니다. 부득이 실내에서 사용할 경우에는 밖에서 사용 시험을 한 후 이상이 없을 때 사용하도록 합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 다 쓴 용기(캔)는 잔류가스를 제거하고 구멍을 내어 화기가 없는 장소에 버려야 합니다.</span>
            <span class="dash_bulTxt_txtIndent">- 용기(캔)를 접속할 때는 완전히 결합이 되게 합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 용기 상단의 절개된 홈 부분이 위로 향하도록 접속해야 합니다.</span>
            <span class="dash_bulTxt_txtIndent">- 사용 중에 가스가 누출될 경우 신속히 연결레버를 위로 올려 용기(캔)를 분리시켜야 합니다.</span>
            <span class="dash_bulTxt_txtIndent">- 사용하는 그릇의 바닥이 삼발이보다 넓으면 화기가 가스용기(캔)를 가열하게 되어 폭발의 원인이 되므로 삼발이보다 큰 그릇을 사용하지 않도록 해야 합니다.</span>
            <span class="dash_bulTxt_txtIndent">- 밀폐된 텐트 안이나 좁은 방에서는 질식 또는 화재의 위험이 있으므로 사용하지 맙시다.</span>
            <span class="dash_bulTxt_txtIndent">- 실내에서 사용 시는 반드시 환기를 해야 하며, 환기를 하지 않을 때는 산소부족과 일산화탄소의 발생으로 두통이 생기거나 질식될 수 있습니다.</span>
        </div>
        <strong class="title_03">6. 가스의 종류에 맞는 가스기구를 구입해서 사용합시다.</strong>
        <div class="contextIndent_twoDepList">
            <span class="dash_bulTxt_txtIndent">- 각종 가스기구는 LPG 용과 LNG 용으로 구분되므로 현재 사용 중인 가스에 맞는 제품을 구입해야 하며 반드시 가스기구에 부착된 취급설명서를 읽어보고 사용합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 가스기구를 구입할 때에는‘한국가스안전공사 합격표시품’이나 ‘KS표시품’만을 구입하여 사용합시다.</span>
            <span class="dash_bulTxt_txtIndent">- 무허가 불량제품은 사용하지 맙시다.</span>
            <span class="dash_bulTxt_txtIndent">(휴대용 연소기 중에는 제조회사 표시가 불분명하거나 싼 가격으로 노상에서 판매하는 제품 등)</span>
        </div>
    </div>
    <h4 class="title_02">알아두면 좋은 재난정보</h4>
    <strong class="level4_title"> </strong>
    <div class="w2group contextIndent_twoDepList" id="gphtml"></div>


    <h4 class="level2_title">국민행동요령</h4> 
    <h4 class="title_02" style="float:left;">전기 안전</h4>
    <div>
        <ul class="contextIndent_twoDepList">
            <li style="">
                <img id="img10" src="" class="unload_rsc" style="padding-left: 70%;width:15%;" alt="한국전기안전공사로고"/>
            </li>
        </ul>
    </div>
        <br />
        <br />
        <br/>
    <div id="signature_div" style="font-size:10pt;float: left; width:35%;">
    <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
        <tbody>
            <tr>
                <td>
                    <ul class="contextIndent_twoDepList">
                        <li style="width:318px;text-align: center;">
                            <img id="img01" src="" class="unload_rsc" alt="전기코드는 반드시 플러그를 잡고 뽑아야 합니다."/>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;"> 전기코드는 반드시 플러그를 잡고 뽑아야 합니다.<br>(피복 내 구리선이 끊어져 화재와 감전사고 위험)</td>
            </tr>
        </tbody>
    </table>
    </div>
    
    <div id="signature_div" style="font-size:10pt;float: left; width:30%;">
    <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
        <tbody>
            <tr>
                <td>
                    <ul class="contextIndent_twoDepList">
                        <li style="width:318px;text-align: center;">
                            <img id="img02" src="" class="unload_rsc" alt="문어발식 배선은 피해야 합니다."/>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;"> 문어발식 배선은 피해야 합니다.<br>(전선마다 전기가 흐를 수 있는 양이 정해져 있음)</td>
            </tr>
        </tbody>
    </table>
    </div>
    
    <div id="signature_div" style="font-size:10pt;">
    <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;">
        <tbody>
            <tr>
                <td>
                    <ul class="contextIndent_twoDepList">
                        <li style="width:318px;text-align: center;">
                            <img id="img03" src="" class="unload_rsc" alt="전선이 손상된 경우 감전 또는 합선의 원인이 되므로 교체합니다."/>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">전선이 손상된 경우 감전 또는 합선의 원인이 되므로 교체합니다.</td>
            </tr>
        </tbody>
    </table>
    </div>
    
    <br />
    <br />
    <div id="signature_div" style="font-size:10pt; width:35%;float:left;">
    <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;">
        <tbody>
            <tr>
                <td>
                    <ul class="contextIndent_twoDepList">
                        <li style="width:318px;text-align: center;">
                            <img id="img04" src="" class="unload_rsc" alt="젖은 손으로 플러그나 스위치를 잡으면 안 됩니다."/>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">젖은 손으로 플러그나 스위치를 잡으면 안 됩니다.</td>
            </tr>
        </tbody>
    </table>
    </div>
    <div id="signature_div" style="font-size:10pt;">
    <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;float:left;">
        <tbody>
            <tr>
                <td>
                    <ul class="contextIndent_twoDepList">
                        <li style="width:318px;text-align: center;">
                            <img id="img05" src="" class="unload_rsc" alt="유아나 어린이들의 감전사고 예방을 위해 덮개 있는 콘센트를 사용합니다."/>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">유아나 어린이들의 감전사고 예방을 위해<br> 덮개 있는 콘센트를 사용합니다.</td>
            </tr>
        </tbody>
    </table>
    </div>
    <div id="signature_div" style="font-size:10pt;float: left;width:30%;">
    <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
        <tbody>
            <tr>
                <td>
                    <ul class="contextIndent_twoDepList">
                        <li style="width:318px;">
                            <img id="img06" src="" class="unload_rsc" alt="절대로 가까이 가지 않습니다."/>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">'위험', '고압' 등이 쓰인 장소에는 절대로 가까이 가지 않습니다.</td>
            </tr>
        </tbody>
    </table>
    </div>
    <br />
    <br />
    
    <br />
    <div id="signature_div" style="font-size:10pt; width:35%;float:left;">
    <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;">
        <tbody>
            <tr>
                <td>
                    <ul class="contextIndent_twoDepList">
                        <li style="width:318px;text-align: center;">
                            <img id="img07" src="" class="unload_rsc" alt="전봇대를 오르거나 전선을 긴 막대기 등으로 찌르는 장난을 하지 않습니다. "/>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">전봇대를 오르거나 전선을 긴 막대기 등으로 찌르는 장난을 하지 않습니다.</td>
            </tr>
        </tbody>
    </table>
    </div>
    <div id="signature_div" style="font-size:10pt;">
    <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;float:left;">
        <tbody>
            <tr>
                <td>
                    <ul class="contextIndent_twoDepList">
                        <li style="width:318px;text-align: center;">
                            <img id="img08" src="" class="unload_rsc" alt="땅에 떨어진 전선 가까이는 가지 않습니다."/>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">땅에 떨어진 전선 가까이는 가지 않습니다.<br>(한국전력공사 123으로 신고)</td>
            </tr>
        </tbody>
    </table>
    </div>
    <div id="signature_div" style="font-size:10pt;float: left;width:30%;">
    <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
        <tbody>
            <tr>
                <td>
                    <ul class="contextIndent_twoDepList">
                        <li style="width:318px;">
                            <img id="img09" src="" class="unload_rsc" alt="누전차단기는 감전사고 방지를 위해 꼭 사용하고 위급 시 바로 전기 차단을 합니다"/>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">누전차단기는 감전사고 방지를 위해 꼭 사용하고 위급 시 바로 전기 차단을 합니다.</td>
            </tr>
        </tbody>
    </table>
    </div>
    
    <br>
    <br>
    <div class="contextIndent_twoDepList">
        <div class="dash_bulTxt_txtIndent">
            <div class="imgBox_2" >
                <img style="float:left;" id="SDIJKM5121_20210512" alt="전기안전 행동요령" class="img_hand_clean unload_rsc" src=""/>
                <div class="ir">
                    <div>
                        <h3>계절별 전기안전요령</h3>
                        <dl>
                            <dt>봄철</dt>
                            <dd><h4>눈이 녹으면 배전설비부터 확인하세요.</h4>건물안팎이나 전선관으로 물기가 스며들지 안았는지 언 땅이 내려 앉은 자리에 배전설비 손상은 없는 지 꼭 살펴보세요.</dd>
                        </dl>
                        <dl>
                            <dt>여름철</dt>
                            <dd><h4>물 고인 신호등, 맨홀 뚜껑은 조심조심</h4>빗물 고인 맨홀과 신호등은 전기가 흐를 수 있어요. 가능하면 멀리 떨어져 다니는 것이 안전하겠지요.</dd>
                        </dl>
                        <dl>
                            <dt>환절기</dt>
                            <dd><h4>가습기는 콘센트에서 멀리멀리</h4>콘센트나 전기기기는 습도가 올라가면 누전이나 합선사고가 생길 수 있어요. 될수록 가습기와 멀리 두고 사용하세요.</dd>
                        </dl>
                        <dl>
                            <dt>겨울철</dt>
                            <dd><h4>가연성 물질은 저 멀리</h4>전기장판과 난로 옆에는 종이, 담뇨 등 가연성 물질을 치워주세요. 화재를 막는 중요한 예방법입니다.</dd>
                        </dl>
                        <dl>
                            <dt>간절기</dt>
                            <dd><h4>전기장판은 반드시 돌돌 말아서 보관</h4>전선이 무거운 물건에 오래 눌려있으면 끊어질 우려가 있으니 전기장판은 집에서 쌓아두지 말고 둥글게 말아 세워서 보관하세요.</dd>
                        </dl>
                    </div>
                    <div>
                        <h3>장소별 전기안전요령</h3>
                        <dl>
                            <dt>사무실</dt>
                            <dd><h4>승인받은 제품 사용</h4>KS, KC 등 인증마크가 있는 제품은 정부가 안정성을 인증한 제품입니다. 전기용품 구매 시 꼭 승인마크를 확인해 주세요.</dd>
                        </dl>
                        <dl>
                            <dt>피서지</dt>
                            <dd><h4>아무데서나 전선 끌어쓰면 큰 일</h4>인파가 몰리는 피서지, 음식점이나 상점에서 끌어온 간이 전선은 감전이나 누전사고 위험이 크니 전기 이용에 주의하세요.</dd>
                        </dl>
                        <dl>
                            <dt>전통시장</dt>
                            <dd><h4>와부에 노출된 입간판 주의</h4>야생동물이나 행인에 의해 전선이 훼손되어 누전이나 합선의 위험이 있으니 주의 하세요. 영업종료 후 콘센트에서 플러그를 뽑아주는 습관도 중요합니다.</dd>
                        </dl>
                        <dl>
                            <dt>음식점</dt>
                            <dd><h4>개별 또는 대형 환풍기 과열 주의</h4>기름 찌꺼기 등으로 환풍기 내부가 오염되면 전기설비에 영향을 주어 위험하고 모터과열로 인한 화재가 발생 할 수 있으니 주의 하세요.</dd>
                        </dl>
                        <dl>
                            <dt>길거리</dt>
                            <dd><h4>전깃줄은 만지지 마세요</h4>길거리에 있는 전깃줄에는 높은 전압의 전기가 흐르고 있을 수 있어 위험합니다. 만지거나 장난치면 크게 다칠 수 있어요.</dd>
                        </dl>
                    </div>
                    <div>
                        <h3>가정에서 전기안전요령</h3>
                        <p>우리가정을 위협하는 냉장고, 세탁기, 건조기 화재!"가전제품 권장사용기간"과 관련있습니다.</p>
                        <span>[주의] 권장사용기간을 초과하여 사용 시 사용환경 및 제품노후로 인하여 안전사고가 발생할 수 있습니다. 권장안전사용기간 내에 안전점검을 받으시길 바랍니다. </span>
                        <h4>가전제품에도 권장사용기간이 있다는 사실, 알고 계셨나요?</h4>
                        <span>권장사용기간을 확인하고 AS또는 먼지제거 서비스를 받아보세요. 가전제품 속 먼지만 제거해도 전기화재가 일어날 확률은 확 낮아집니다. 작은 실천으로 우리가정의 전기화재 위험은 사라지고 소중한 재산과 생명은 지킬 수 있습니다.</span>
                    </div>
                    <div>
                        <h3>전기재해 관련 용어와 예방법</h3>
                        <dl>
                            <dt>단락</dt>
                            <dd>단락은 손상된 전선의 회복으로 인해 서로 다른 도체가 맞닿아 발생해요. 전선이 무거운 물체에 걸리거나 날카로운 물질에 의해 손상 되지 않도록 해야 하고 노후된 전선은 교체해주세요.</dd>
                        </dl>
                        <dl>
                            <dt>과부하</dt>
                            <dd>과부하는 허용 용량 이상의 전류가 전선에 흘러서 발생하게 됩니다. 과부하를 예방하기 위해선 콘센트에 플러그를 문어발식으로 접속하지 말아야 합니다.</dd>
                        </dl>
                        <dl>
                            <dt>접촉불량</dt>
                            <dd>접촉불량은 전선과 단자의 접속부위의 접속력이 불완전한 경우 발생합니다. 전기제품이 콘센트에 완전히 연결되었는지 수시로 확인해주세요.</dd>
                        </dl>
                        <dl>
                            <dt>트래킹</dt>
                            <dd>트래킹은 양 극간의 절연재료가 먼지, 습기 등의 영향에 의해 절연성을 잃고 도전화 되는 현상을 말합니다. 전기설비 또는 전기 제품은 항상 건조하고 청결한 상태가 유지되도록 주기적인 청소가 필요합니다.</dd>
                        </dl>
                        <h4>긴급출동 고충처리(전기안전 119)</h4>
                        <span>전기고장신고 접수 즉시 대기자가 출동하여 무료 응급조치 전기안전콜센터 1588-7500</span>
                        <span>신청접수 > 고객방문 > 점검 및 응급조치 > 전기안전 사용안내</span>
                        <p>대상 : 국민기초생활수급자 및 차상위 계층/장애정도가 심한 장애인/1~3급 상이등급의 국가 유공자/독립유공자와 그유족/5ㆍ18민주유공자와 그유족/사회복지시설</p>
                        <p>응급조치 범위 : - 전기시설점검, 안전한 전기사용안내 - 차단기 등 배선기구의 경미한 공사</p>
                    </div>
                </div>
            </div>  
        </div>
    </div>
    
    
    <h4 class="level2_title">국민행동요령</h4> 
    <h4 class="title_02" style="">가스 안전</h4>
    <div>
    <ul class="contextIndent_twoDepList">
        <li style="">
            <img id="img29" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="한국가스안전공사 로고"/>
        </li>
    </ul>
    </div>
    <br>
    <h4 class="level3_title" style="">•가스 사용 전</h4>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img11" src="" class="unload_rsc" alt="비누나 세제로 거품을 내어 배관, 호스 등 연결부분을 수시로 점검합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 비누나 세제로 거품을 내어 배관, 호스 등 연결부분을 수시로 점검합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img12" src="" class="unload_rsc" alt="가스레인지는 항상 깨끗이 청소하여 버너의 불구멍이 막히지 않도록 합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 가스레인지는 항상 깨끗이 청소하여 버너의 불구멍이 막히지 않도록 합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img13" src="" class="unload_rsc" alt="가스 사용 시 우선 냄새로 누출여부를 확인합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 가스 사용 시 우선 냄새로 누출여부를 확인합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img14" src="" class="unload_rsc" alt="가스레인지 주위에는 가연성 물질을 가까이 두지 않습니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 가스레인지 주위에는 가연성 물질을 가까이 두지 않습니다.</strong>
    
    <br>
    <h4 class="level3_title" style="">∙가스 사용 중</h4>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img15" src="" class="unload_rsc" alt="가스 불을 켤 때에는 불이 붙었는지 꼭 확인합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 가스 불을 켤 때에는 불이 붙었는지 꼭 확인합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img16" src="" class="unload_rsc" alt="국물이 넘치거나 바람 때문에 불이 꺼지지 않는지 옆에서 지켜봅니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 국물이 넘치거나 바람 때문에 불이 꺼지지 않는지 옆에서 지켜봅니다.</strong>
    

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img17" src="" class="unload_rsc" alt="불이 꺼지면 자동으로 가스가 차단되는 제품을 사용하고 자동차단장치가 제대로 작동하는지 자주 확인합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 불이 꺼지면 자동으로 가스가 차단되는 제품을 사용하고 자동차단장치가 제대로 작동하는지 자주 확인합니다.</strong>
    
    <br>
    <h4 class="level3_title" style="">∙가스 사용 후</h4>
    <br>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img18" src="" class="unload_rsc" alt="연소기 코크와 중간밸브를 꼭 잠가야 합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 연소기 코크와 중간밸브를 꼭 잠가야 합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img19" src="" class="unload_rsc" alt="장기간 외출 시에는 건물 외부에 있는 용기밸브(메인밸브)도 잠그는 것이 좋습니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 장기간 외출 시에는 건물 외부에 있는 용기밸브(메인밸브)도 잠그는 것이 좋습니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img20" src="" class="unload_rsc" alt="이사를 할 때에는 반드시 전문가에게 연락하여 조치를 취합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 이사를 할 때에는 반드시 전문가에게 연락하여 조치를 취합니다.</strong>
    <br>
    <h4 class="level3_title" style="">∙휴대용 부탄 가스레인지 사용 방법</h4>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img21" src="" class="unload_rsc" alt="폐된 텐트 안이나 좁은 방에서는 질식 또는 화재위험이 있으므로 사용하지 않습니다. "/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 폐된 텐트 안이나 좁은 방에서는 질식 또는 화재위험이 있으므로 사용하지 않습니다.<br>(사용 시 반드시 환기)</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img22" src="" class="unload_rsc" alt="다 쓴 용기(캔)는 잔류가스를 제거하고 구멍을 내어 화기가 없는 장소에 버려야 합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 다 쓴 용기(캔)는 잔류가스를 제거하고 구멍을 내어 화기가 없는 장소에 버려야 합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img23" src="" class="unload_rsc" alt="사용하는 그릇의 바닥이 삼발이보다 넓으면 위험합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 사용하는 그릇의 바닥이 삼발이보다 넓으면 위험합니다.</strong>

    <br>
    <h4 class="level3_title" style="">∙가스 누출 시</h4>
    <br>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img24" src="" class="unload_rsc" alt="먼저 코크와 중간밸브, 용기밸브를 잠그고 창문과 출입문을 열어 환기를 시킵니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 먼저 코크와 중간밸브, 용기밸브를 잠그고 창문과 출입문을 열어 환기를 시킵니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img25" src="" class="unload_rsc" alt="LPG의 경우에는 공기보다 무겁기 때문에 바닥으로 가라앉으므로 바닥의 환기를 충분히 해야 합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- LPG의 경우에는 공기보다 무겁기 때문에 바닥으로 가라앉으므로 바닥의 환기를 충분히 해야 합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img26" src="" class="unload_rsc" alt="스파크에 의해 점화될 수 있으니 전기기구는 절대 조작하지 않습니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 스파크에 의해 점화될 수 있으니 전기기구는 절대 조작하지 않습니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img27" src="" class="unload_rsc" alt="환자 발생 시 안전한 곳으로 옮기고 119로 신고한 후 응급조치를 합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 환자 발생 시 안전한 곳으로 옮기고 119로 신고한 후 응급조치를 합니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img28" src="" class="unload_rsc" alt="01. 내 위치를 중심으로 사고발생지역쪽으로 바람이 불 때는 바람이 불어오는 방향으로 대피합니다. 02.사고발생지역에서 내 위치쪽으로 바람이 불 때는 직각방향으로 대피합니다. 03. 대부분의 고독성물질의 경우 화학물질이 지면을 타고 확산되는 특성이 잇어 가급적 고층건물 또는 높은 곳으로 대피합니다. 불화수소, 암모니아와 같이 위로 퍼지는 특성을 가진 가벼운 물질은 제외 반드시 관할
                관청 등의 대피방송에 따라 신속히 대피 04. 대피 후 스마트 방송등을 통해 외부상황을 파악하도록 합니다. 05. 방독면 또는 물수건 마스크 등으로 입과 코를 막고 비닐 등을 이용해 피부가 노출되지 않도록 합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 내 위치를 중심으로 사고발생지역쪽으로 바람이 불 때는 바람이 불어오는 방향으로 대피합니다.</strong>
    <strong class="level4_title">- 사고발생지역에서 내 위치쪽으로 바람이 불 때는 직각방향으로 대피합니다.</strong>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 산업교통재난대응과 (044-205-6334)<br>소관부서 : 한국전기안전공사 홍보실 이승은 (063-716-2077)<br>소관부서 : 한국가스안전공사 안전지원부 하형진 (043-750-1388)</strong>
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