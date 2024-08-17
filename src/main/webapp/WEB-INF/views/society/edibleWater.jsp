
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
<!-- -------------------------------------------------------- -->
<!-- 컨텐츠 시작                                              -->
<!-- -------------------------------------------------------- -->
<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">사회재난시 행동요령</h2>

    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">식용수</h3>

        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
        
    <h4 class="title_02">식용수 국민행동요령</h4>
    <div class="know_how_w">
        <img id="img01" alt=".물을 끓여 마시면 안전해~" class="prevent_img01 unload_rsc" src=""/>
        <ul class="contextIndent_oneDepList">
            <strong class="title_03">· 급수중단 발령시</strong>
            <div class="leftW70 contextIndent_twoDepList">
                <span class="dash_bulTxt_txtIndent">- 해당지역 주민들께서는 다른 통지사항이 있기 전에는 마시거나 양치하거나 식기세척 및 요리하실 때에 불편하시더라도 시중에서 파는 병물을 사용하시거나, 저희 ○○수도사업소에서 각 지역에 △△시 이후로 병물 및 급수차 지원을 하고 있으니, 지원된 수돗물을 사용하여 주시기 바랍니다.</span>
            </div>
            <strong class="title_03">· Ⅰ급상황 발생시</strong>
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">- Ⅰ급 상황이란</span></li>
                <li><span class="dash_bulTxt_txtIndent">수돗물 중 오염물질로 인해 급수대상 주민들의 건강이 단기간에 나쁜 영향(병원성 미생물, 수인성 전염병 발생 등)을 미칠 수 있는 위급한 상황을 말합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">수돗물은 직접 음용하지 말고, 반드시 끓여서 식힌 후 마셔야 합니다. 물을 1분가량 끓인 후 사용하시면 물에 있는 박테리아 등 미생물이 파괴되어 안전합니다.</span></li>
            </ul>
            <strong class="title_03">· Ⅱ급상황 발생시</strong>
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">- Ⅱ급 상황이란</span></li>
                <li><span class="dash_bulTxt_txtIndent">주민들의 건강이 단기간에 영향을 미치는 위급한 상황은 아니며, 수돗물 수질기준을 일시적으로 초과한 상황을 말합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">수돗물에서 냄새가 날 때에는 직접 음용하지 말고, 끓여서 식힌 후 마실 것을 권합니다. 끓인 후 상온에서 식히면 냄새가 없어집니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">샤워시(특히 온수) 살수효과에 의해 냄새물질이 쉽게 발생하여 냄새가 더욱 심해질 수 있으므로 꼭 환기하여 주시기 바랍니다.</span></li>
            </ul>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
    <h4 class="title_02">Q & A</h4>
    <div class="qna_wrap">
        <div class="level4_title">Q. 물의 맛과 냄새, 색깔 등이 평소와 다를 때에는 ?</div>
        <div class="qna_anser">
            <div class="txt_q">A</div>
            <div class="contextIndent_twoDepList">
                <div class="dot_bulTxt_txtIndent">- 수질오염 의심이 들 때는 지역번호 + 128번 또는 가까운 경찰서로 신고해 주시기 바랍니다.</div>
            </div>
        </div>
        <div class="footnote_border">
            <div class="star_bulTxt_w">
                <span class="star_bulTxt">*</span>
                <span>자료제공 : 환경부 044)201-7126</span>
            </div>
        </div>
    </div>

        <h4 class="level2_title">국민행동요령</h4> 
        <h4 class="title_02" style="float:left;">식용수오염</h4>
        <br>
        <br>
        <div>
            <ul class="contextIndent_twoDepList">
                <li style="">
                    <img id="img08" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="환경부로고"/>
                </li>
            </ul>
        </div>
        <br />
        <br />
        <h4 class="title_03">Ⅰ급 상황이란?</h4>
        
        <br/>
        <div id="signature_div" style="font-size:10pt; width:35%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;font-weight: center">
                                <img id="img02" src="" class="unload_rsc" alt="Ⅰ급 상황이란"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: center">수돗물 중 오염물질로 인해 단기간에 급수대상 주민들의 건강에 나쁜 향(병원성 미생물, 수인성 전염병 발생 등)을 미칠 수 있는 위급한 상황을 말합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <h4 class="title_03">Ⅱ급 상황이란? </h4>
        <br/>
        <div id="signature_div" style="font-size:10pt;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;font-weight: center">
                                <img id="img03" src="" class="unload_rsc" alt="Ⅱ급 상황이란"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>수돗물 수질기준을 일시적으로 초과한 상황을 말하며 단기간에 주민들의 건강에 향을 미치는 위급한 상황은 아닙니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br />
        <h4 class="title_03">Ⅰ급, Ⅱ급 상황 발생 시</h4>
        
        <br />
        <div id="signature_div" style="font-size:10pt; width:35%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;font-weight: center">
                                <img id="img04" src="" class="unload_rsc" alt="Ⅰ급, Ⅱ급 상황 발생 시"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: center">수돗물은 직접 먹지 말고 반드시 끓여서 식힌 후 마시거나 사용합니다.</td>
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
                            <li style="width:318px;font-weight: center">
                                <img id="img05" src="" class="unload_rsc" alt="Ⅰ급, Ⅱ급 상황 발생 시"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: center">물을 마시거나 사용 후 신체에 이상 증상이 발생할 경우 즉시 병원에 가서 의사의 진찰을 받아야 합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br/>
        <br/>
        <br/>
        <h4 class="title_03">급수 중단 발생 시</h4>
        <br/>
        <div id="signature_div" style="font-size:10pt;float: left;width:35%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;font-weight: center">
                                <img id="img06" src="" class="unload_rsc" alt="급수 중단 발생 시"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: center">관계 기관의 통지사항이 있기 전에는 물을 마시거나 양치, 샤워, 식기세척을 하지 말아야 합니다.</td>
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
                            <li style="width:318px;font-weight: center">
                                <img id="img07" src="" class="unload_rsc" alt="급수 중단 발생 시"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: center">요리를 해야 할 경우에는 판매하는 물이나 수도사업소에서 지원되는 물을 사용해야 합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        
        <br>
        <br>
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 가축질병재난대응과 권순모(044-205-6195)<br>소관부서 : 환경부 물이용기획과 신지호(044-201-7115)</strong>
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