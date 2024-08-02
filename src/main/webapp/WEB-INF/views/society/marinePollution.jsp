
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
<!-- -------------------------------------------------------- -->
<!-- 컨텐츠 시작                                              -->
<!-- -------------------------------------------------------- -->

<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">사회재난시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">해양오염사고</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    <h4 class="title_02">대규모 해양오염사고 발생시 국민행동요령</h4>
    <div class="contextIndent_oneDepList">
        <strong class="title_03">발생하기 전에는</strong>
    </div>
    <div class="prevent02_img_GridWrap">
        <div class="prevent_text_grid">
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">- 해양오염사고에 대비하여 오염사고 관련 행정기관 및 관계 업체의 비상연락망을 미리 알아둡니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 고에 대비하여 응급약품, 비상식량 등의 생필품은 미리 준비합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 향후 해양오염 사고 시 보상을 위한 소득 증빙자료를 사전에 확보합니다.</span></li>
            </ul>
            <strong class="title_03">발생시에는</strong>
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">- 오염사고 목격 시 119에 신속히 신고합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 위험지대에 거주하는 경우 신속히 대피하며, 대피할 때에는 가능한 방독면, 물수건, 마스크 등 으로 호흡기를 보호하고 우의나 비닐로 유류에 노출되지 않도록 합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 관계기관 도착 시 주민들은 관계기관 현장 안전관리 계획 등의 지시에 따라 행동합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 자원봉사자는 방제물품 등을 배부 받고 해양오염사고에 대응하는 교육을 숙지합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 방제작업 동원 시 마스크, 안전복 등 착용, 충분한 휴식을 취하며 안전사고에 주의합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 오염물에 접촉된 경우, 비누로 깨끗이 씻어냅니다.</span></li>
            </ul>
        </div>
        <div class="prevent_img_grid">
            <img id="img01" class="unload_rsc" alt="해양오염 발생 시 119에 신고" src=""/>
        </div>
    </div>
    <strong class="title_03">조치 완료 후에는</strong>
    <ul class="contextIndent_twoDepList">
        <li><span class="dash_bulTxt_txtIndent">- 사고로 인한 피해의 경제적 손실 여부를 점검하고 필요시 보상을 청구합니다.</span></li>
        <li><span class="dash_bulTxt_txtIndent">- 추가 오염 발견시 즉시 신고 조치합니다.</span></li>
    </ul>
    <h4 class="title_02">Q & A</h4>
    <div class="qna_wrap">
        <strong class="level4_title">Q. &nbsp;해양오염사고 발생시 어떻게 하면 인적피해를 최소화 할 수 있습니까 ?</strong>
        <div class="qna_anser">
            <span class="txt_q">A</span>
            <div class="contextIndent_twoDepList">
                <span class="dash_bulTxt_txtIndent">- 위험지대 거주하는 경우 신속히 대피하며, 대피시에는 가능한 방독면, 물수건, 마스크 등으로 호흡기를 보호하고 우의나 비닐로 유류에 노출되지 않도록 합니다. 어린이와 노약자를 우선으로 대피시켜 오염원으로 인한 피해를 최소화 합니다. 오염된 지역 내에서는 식수나 음식물을 먹지 말고, 오염물에 접촉된 경우 비누로 깨끗이 씻읍시다.</span>
            </div>
        </div>
        <div class="footnote_border">
            <div class="star_bulTxt_w">
                <span class="star_bulTxt">*</span>
                <span>자료제공 : 해양수산부 해양환경정책과 044-200-5283</span>
            </div>
        </div>
    </div>
        <h4 class="level2_title">국민행동요령</h4> 
        <h4 class="title_02" style="float:left;">해양오염사고</h4>
        <div>
            <ul class="contextIndent_twoDepList">
                <li style="">
                    <img id="img08" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="해양수산부로고"/>
                </li>
            </ul>
        </div>
        <br />
        <br />
        <h4 class="title_03">해양오염사고 발생 전</h4>
        <br/>
        <div id="signature_div" style="font-size:10pt;float: left; width:35%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align:center;">
                                <img id="img02" src="" class="unload_rsc" alt="오염사고 관련기관 및 지자체 비상연락망 미리숙지하는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">해양오염사고에 대비하여 오염사고 관련기관 및 지자체 비상연락망을 미리 알아둡니다.</td>
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
                                <img id="img03" src="" class="unload_rsc" alt="사고대비 응급약품,비상식량 준비 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">사고에 대비하여 응급약품, 비상식량 등을 준비합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br />
        <h4 class="title_03">해양오염사고 발생 시</h4>
        
        <br />
        <div id="signature_div" style="font-size:10pt; width:35%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align:center;">
                                <img id="img04" src="" class="unload_rsc" alt="해양오염사고 발생시 신고하는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">오염사고 목격 시 관련기관 및 지자체에 신속히 신고하고 전문가의 지시에 따라 행동합니다.</td>
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
                                <img id="img05" src="" class="unload_rsc" alt="위험지대 대피 시 마스크, 우의 착용 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">위험지대에 거주하는 경우 신속히 대피하며, 대피할 때에는 물수건, 마스크 등으로 호흡기를 보호하고 우의나 비닐로 오염에 노출되지 않도록 합니다.</td>
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
                                <img id="img06" src="" class="unload_rsc" alt="해양오염사고 발생후 tv통해 사고파악하는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">해양오염사고 발생 상황과 이동경로를 라디오, TV, 인터넷을 통해 수시로 파악하고 주위 사람들에게 알려줍니다.</td>
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
                                <img id="img07" src="" class="unload_rsc" alt="오염수나 음식물 섭취금지, 샤워통해 오염물 제거하는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">오염된 지역 내의 식수나 음식물은 먹지 말고 오염물에 접촉된 경우 비누로 깨끗이 씻어야 합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 환경재난대응과 심준구(044-205-6177) <br>소관부서 : 해양경찰청 기동방제과 장혜림(032-835-2394) </strong>
        </div>
        
        
</div>
<br/>
<br/>
<br/>
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>