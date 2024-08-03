
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
        <h3 class="level2_title">가축질병</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <h4 class="title_02">국가재난형 가축질병 국민행동요령</h4>
        <div class="contextIndent_oneDepList" style="margin-top:0px">
            <strong class="level4_title">1. 고병원성 조류인플루엔자 방역수칙</strong>
            <div class="contextIndent_twoDepList">
                <strong style="display:inline-block;font-weight:bold;text-indent:-1.4rem;margin-left:2rem;text-align:justify">□ 고병원성 조류인플루엔자 바이러스는 주로 차량 또는 사람, 장비 등 매개체를 통해 농장과 축사 내로 유입되고 있어, 적극적인 소독 활동을 통해 환경에 있는 바이러스를 제거하는 것이 중요합니다.</strong>
                <strong style="display:inline-block;font-weight:bold;text-indent:-1.4rem;margin-left:2rem;text-align:justify">○ 특히, 겨울철은 한파 등 추워진 날씨로 소독장비가 얼거나 동파될 수 있어 매일 정상 작동 여부를 점검하는 등 각별한 주의가 필요합니다.</strong>
                <strong style="display:inline-block;font-weight:bold;text-indent:-1.4rem;margin-left:2rem;text-align:justify">□ 가금농가에서는 ‘내 농장은 내가 지킨다’는 마음가짐으로 고병원성 조류인플루엔자 차단을 위해 다음의 방역수칙을 준수하여 주시기 바랍니다.</strong>
                <ul class="contextIndent_twoDepList" style="text-indent:-1.4rem;margin-left:1.2rem;text-align:justify">
                    <li><strong class="dash_bulTxt_txtIndent">① 농장 내 외부인 출입을 엄격하게 통제하여야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 농장 출입구는 항상 닫고, 농장주의 허가를 받고 소독 등 방역조치 후 출입해야 합니다.
                    </strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">② 출입차량은 고정식 소독시설로 1차 소독한 후, 고압 분무기로 차량의 바퀴와 하부, 차량 내부를 반드시 2차 소독해야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">③ 농장주와 농장 종사자가 농장 출입 시에는 전용 신발과 방역복 착용, 대인소독을 실시한 후 출입해야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">④ 축사 출입 시에는 전실에서 반드시 전용 장화로 갈아신고, 손 소독을 실시한 후 출입하여야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">⑤ 소독·방역시설이 설치되지 않은 농장의 부출입구와 전실이 설치되지 않은 축사의 뒷문(쪽문)은 폐쇄하여야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">⑥ 농장 마당과 축사 내·외부는 매일 청소·소독을 실시해야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">⑦ 사육가금의 이상 여부를 매일 확인하고, 의심증상(폐사 증가, 산란율 감소, 사료섭취 저하) 확인 시, 가축방역기관으로 즉시 신고해야 합니다.</strong></li>
                </ul>
            </div>
            <strong class="level4_title">2. 아프리카돼지열병 방역수칙</strong>
            <div class="contextIndent_twoDepList">
                <ul class="contextIndent_twoDepList" style="text-indent:-1.4rem;margin-left:1.2rem;text-align:justify">
                    <li><strong class="dash_bulTxt_txtIndent">① 농장 출입구에는 소독시설을 설치하는 것이 무엇보다 중요합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 사람, 차량 및 내부에서 사용하는 장비 등을 철저히 소독하고, 진입로에 생석회를 도포하여 농장 안으로 오염원이 들어오지 않도록 막아야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 후문(부출입구)는 폐쇄하거나 대인·차량소독기를 설치하고 사용해야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">② 농장을 출입하는 사람 및 차량에 대한 출입기록부를 작성하고, 농장 출입자(농장 종사자 포함)는 방역복을 착용하고 방역실에서 소독 후 진입해야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">③ 농장 출입 차량(농장 소유차량 포함)은 축산차량으로 등록합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">④ 농장에서 사용하는 장비는 사용 전·후 세척·소독을 철저히 해야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">⑤ 야생동물이 농장 주변에 접근하지 않도록 외부울타리를 완벽하게 설치하고 특히, 사료빈 주변에 떨어진 사료는 즉시 청소합니다.(방충·방조 등)</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">⑥ 농장 주변 배수로를 정비해 농장 안으로 빗물이 흘러들어 오지 않도록 관리해야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">⑦ 돼지와 접촉하는 사료, 분뇨 등은 외부 환경에 노출되지 않도록 철저하게 관리 해야 합니다.(떠밀려온 토사 등은 즉시 제거 후 소독합니다.)</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">⑧ 퇴비사는 방충·방조망을 빈틈없이 설치하고, 돈사-퇴비사간 이동경로를 매일 소독합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">⑨ 돈사 출입구에 전실을 설치하고 소독장비를 비치하여 출입하는 사람과 사용 장비를 철저히 소독해야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" >⑩ 농장 주변의 논/밭과 돈사를 오가면서 오염원을 돈사 안으로 묻혀 들어올 가능성이 있으므로 농장 종사자(외국인 근로자 포함)는 영농활동 시 주의해야 합니다.<br/>(방역수칙 준수)</strong></li>
                </ul>
            </div>
            <strong class="level4_title">3. 구제역 방역수칙</strong>
            <div class="contextIndent_twoDepList">
                <strong style="display:inline-block;font-weight:bold;text-indent:-1.4rem;margin-left:2rem;text-align:justify">□ 축산농가에서는 구제역 예방접종을 반드시 실시합니다.</strong>
                <strong style="display:block;font-weight:bold;text-indent:-1.4rem;margin-left:2rem;text-align:justify">□ 가축을 거래할 때는 구제역 예방접종을 하였는지 반드시 확인합시다.</strong>
                <strong style="display:inline-block;font-weight:bold;text-indent:-1.4rem;margin-left:2rem;text-align:justify">○ (돼지·염소) 구제역 예방접종확인서, (소·종돈) 축산물이력관리시스템</strong>
                <ul class="contextIndent_twoDepList" style="text-indent:-1.4rem;margin-left:1.2rem;text-align:justify">
                    <li><strong class="dash_bulTxt_txtIndent" style="text-indent:-0.8rem;text-align:justify">- 예방접종 시기가 도래하지 않은 송아지, 자돈, 어린 염소를 거래하려는 소유자 등은 어미 소, 모돈, 어미 염소의 ‘이전 예방접종일’을 기록한 구제역 예방접종확인서를 구매자 등에게 인계 또는 휴대하도록 합니다.</strong></li>
                </ul>
                <strong style="display:inline-block;font-weight:bold;text-indent:-1.4rem;margin-left:1.2rem;text-align:justify">□ 농장 내부와 외부를 매일 소독하고, 외부인·출입차량 통제·소독 등 차단방역을 철저히 합시다.</strong>
                    <ul class="contextIndent_twoDepList">
                    <li><strong class="dash_bulTxt_txtIndent">① 일반인은 국내 축산농가의 방문을 자제하고, 축산관계자는 구제역 등이 발생한 국가의 가축 사육시설 방문을 자제합시다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 축산관계자가 가축전염병 발생국 여행 시 농림축산검역본부에 신고 철저</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 축산관계자의 출입국 신고 및 가축전염병 해외 발생현황 등의 내용은 농림축산검역본부 누리집에서 확인할 수 있습니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent">② 축산농가에서 외국인 근로자를 고용하는 경우 시장·군수·구청장에게 신고하고 방역수칙, 예방접종 요령 등을 준수하도록 교육을 철저히 합시다.</strong></li>
                </ul>
            </div>
            <img id="img01" alt="어서 알아보고 피해를 최소화 해야겠어!" class="prevent_img01 unload_rsc" src=""/>
            <strong class="level4_title">4. 럼피스킨 방역수칙</strong>
            <div class="contextIndent_twoDepList">
                <ul class="contextIndent_twoDepList" style="text-indent:-1.4rem;margin-left:1.2rem;text-align:justify">
                    <li><strong class="dash_bulTxt_txtIndent">- 축사와 그 주변을 청결히 하고 주기적으로 소독하세요.</strong></li>
                </ul>
                <strong style="display:inline-block;font-weight:bold;text-indent:-1.4rem;margin-left:2rem;text-align:justify">□ 럼피스킨 의심증상(전신에 울퉁불퉁한 혹덩어리(~5cm 크기의 결절)) 발견 즉시 가까운 방역기관에 신고해야 합니다.</strong>
                <strong style="display:inline-block;font-weight:bold;text-indent:-1.4rem;margin-left:2rem;text-align:justify">□ 농장 주변 물 웅덩이 제거, 주기적 분변 처리 등과 함께 포충기를 사용하여 럼피스킨을 전파할 수 있는 모기, 파리, 진드기 등 흡혈 해충을 방제해야 합니다.</strong>
                <ul class="contextIndent_twoDepList" style="text-indent:-1.4rem;margin-left:1.2rem;text-align:justify">
                    <li><strong class="dash_bulTxt_txtIndent" style="text-indent:-1.4rem;margin-left:2rem;text-align:justify">① 축산관계자는 농장·축산 관계시설 내부와 주변지역의 해충을 제거하여 축산차량 또는 생축 이동과정에서 해충이 부착되어 원거리로 이동되지 않도록 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="text-indent:-1.4rem;margin-left:2rem;text-align:justify">② 흡혈 해충이 소 사육농가 등 축산시설 내·외부로의 유입 또는 서식을 차단하기 위해서 축산농가는 축산시설을 청소, 세척, 소독 등을 통해 최대한 청결하게 유지해야 합니다. </strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 농가는 축사 내·외를 수시로 청소, 세척 또는 소독해야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 축사 내에 남은 사료나 분뇨는 정기적 또는 수시(럼피스킨 발생 시)로 제거해야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 사료 급여기 밑바닥, 분뇨처리장 등을 철저히 청소합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 우사 주변의 풀을 깎아주고, 분뇨처리장에 석회를 뿌리는 것도 효과적입니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 방제 가능한 최대 범위로 농장 주변(인근 수풀, 물웅덩이, 도랑 등)에 대해서 방제합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 축사 내·외부에 끈끈이 트랩(trap), 성충유인 트랩, 해충유살램프 등을 설치하면 흡혈 해충 방제에 더욱 효과적입니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="text-indent:-1.4rem;margin-left:2rem;text-align:justify">③ 유기축산물 인증농장은 살충제를 사용할 수 없으며(일반소독제는 사용 가능), 무항생제 인증농장은 축사 내·외부 방제용 제품(축체 비접촉)만 사용이 가능합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="text-indent:-1.4rem;margin-left:2rem;text-align:justify">④ 원칙적으로 빈 축사 내부는 4주 간격으로 1회 방제합니다. 불가피하게 소가 있는 축사를 방제하는 경우, 저속유압분무기로 방제약제를 소에 직접 닿지 않도록 주의하여 벽면이나 바닥 등 모기나 파리가 앉을 수 있는 곳에 살포합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="text-indent:-1.4rem;margin-left:2rem;text-align:justify">⑤ 모기나 파리 유충이 서식할 수 있는 물웅덩이 등에 주기적으로 유충 구제제를 살포합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="text-indent:-1.4rem;margin-left:2rem;text-align:justify">⑥ 해충 방제는 해충의 습성을 알고 사용하면 효과적입니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 침집파리는 맑은 낮에는 날아다니며 활동하지만, 저녁 이후나 비가 오는 날은 날아다니지 않고 천장이나 벽에 붙어 있어, 활동하지 않는 시간에 살충제를 뿌리면 소량으로 큰 효과를 얻을 수 있습니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 모기의 흡혈 전후 모기가 쉬는 장소로 알려진 축사 안팎의 벽면에 잔류용 살충제를 분무하는 것이 방제에 효과적입니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">※ 주변 안전을 고려하여 축사 관리자와 협의하여 가축에게 약제가 닿지 않게 살포해야 합니다.</strong></li>
                    <li><strong class="dash_bulTxt_txtIndent" style="margin-left:33px;text-indent:-0.8rem;text-align:justify">- 진드기는 연 2회 이상 정기적으로 축사의 내·외부에 구충제를 제품별 용법·용량에 맞게 투여해야 합니다.</strong></li>
                </ul>
            </div>
        </div>
    <div class="footnote_border">
        <div class="star_bulTxt_w">
            <span class="star_bulTxt">*</span>
            <span>자료제공 : 농림축산식품부 구제역방역과 044-201-2533 / 방역정책과 2523 / AI방역과 2556</span>
        </div>
    </div>
        <h4 class="level2_title">국민행동요령</h4> 
        <h4 class="title_02" style="float:left;">가축질병</h4>
        <div>
            <ul class="contextIndent_twoDepList">
                <li style="">
                    <img id="img08" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="농림축산식품부 로고"/>
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
                            <li style="width:318px;text-align:center;">
                                <img id="img02" src="" class="unload_rsc" alt="축사 주변 청결유지&소독 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">축사와 그 주변을 청결히 하고 주기적으로 소독합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:30%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align:center;">
                                <img id="img03" src="" class="unload_rsc" alt="올바른 접종요령에따른 사전 백신접종 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">올바른 접종요령에 따라 백신접종을 사전에 실시합니다.</td>
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
                                <img id="img04" src="" class="unload_rsc" alt="농장,충사등 출입전후 차량소독 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">농장이나 축사 출입 전후에 반드시 차량을 소독하며, 특히 사람은 손과 발을 소독하고, 옷을 갈아입습니다.</td>
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
                                <img id="img05" src="" class="unload_rsc" alt="차량및 사람출입기록 철저 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">차량 및 사람의 출입 기록을 철저히 합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br/>
        <br/>
        <br/>
        <div id="signature_div" style="font-size:10pt;float: left;width:35%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;">
                                <img id="img06" src="" class="unload_rsc" alt="축산농장,작업장등 출입금지조치발령시 적극 협조하는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">축산농장 . 작업장 등에 가축 . 사람 . 차량의 출입을 일시 금지하는 조치 발령 시 적극 협조합니다.</td>
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
                                <img id="img07" src="" class="unload_rsc" alt="구제역또는 고병원성 AI 발생국 다녀온 후 공항에서 신고 & 검역하는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">구제역, 고병원성 AI 발생국을 다녀온 경우에는 귀국 시 공항에 상주하는 검역기관에 신고, 소독조치를 받고 입국 후 5일 이내 축산시설 출입을 자제합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br>
        <br>
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 가축질병재난대응과 양정원(044-205-6196)</strong>
        </div>
</div>
<br/>
<br/>
<br/>
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div>  -->
</body>
</html>
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>