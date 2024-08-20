
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
<!-- -------------------------------------------------------- -->
<!-- 컨텐츠 시작                                              -->
<!-- -------------------------------------------------------- -->

<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">사회재난시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">대규모수질오염</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <!-- <h4 class="level3_title">대규모환경오염(수질) 사고 발생시 국민행동요령</h4> -->
    <br/>
   
    <h4 class="title_02">수질오염사고 시 상황별 행동요령</h4>
    <div class="know_how_w">
        <div class="leftW70 contextIndent_oneDepList">
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">- 수질오염행위를 목격하거나 오염의심이 들 때는 '지역번호 + 128번' 또는 소방서, 경찰서로 신고 바랍니다.</p>
                </li>
            </ul>
        </div>
    </div>  
    
    <h4 class="title_02">상황별 행동요령</h4>
    <div class="know_how_w">
        <div class="leftW70 contextIndent_oneDepList">
        <strong class="title_03">물놀이를 할 경우</strong>
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">- 수질오염사고 지역 및 영향권역에서는 낚시, 수영, 보트놀이 등 친수활동을 하지 말아야 합니다.</p>
                </li>
            </ul>
        <strong class="title_03">물을 사용할 경우</strong>
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">- 수질오염사고 인근사업장, 농가, 내수면 양식장 등에서는 지자체 등의 안내에 따라 용수 사용합니다.
</p>
                </li>
            </ul>
        <strong class="title_03">어로행위를 할 경우</strong>
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">- 수질오염사고로 인한 하천.호수 등이 오염된 경우 어로·수렵행위를 중단해야 합니다.</p>
                </li>
            </ul>
        <strong class="title_03">식수공급중단 예고 시</strong>
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">- 자치단체나 아파트 관리사무소 등의식수 공급 중단 예고가 있을 경우미리 식수 등을 확보합니다.</p>
                </li>
            </ul>
        <strong class="title_03">수돗물에 냄새가 날 경우</strong>
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">- 식수의 냄새 등이 평소와 다를 때는 사용을 중단하고 지역 행정관서에 신고합니다.</p>
                </li>
            </ul>
        <strong class="title_03">오염수 음용 및 사용 시</strong>
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">- 식수 음용이나 사용 후 신체에 이상 증상 발생시에는 즉시 병원에 가서 의사의 진찰을 받아야 합니다.</p>
                </li>
            </ul>
        <strong class="title_03">수질오염지역이 있을 때</strong>
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">- 수질오염사고지역 접근이나 출입을 자제하셔야 합니다.</p>
                </li>
            </ul>
        </div>
    </div>  
    <h4 class="title_02">수질오염 구별법</h4>
    <div class="know_how_w">
        <div class="leftW70 contextIndent_oneDepList">
            <ul class="contextIndent_twoDepList">
                <li>
                    <p class="dash_bulTxt_txtIndent">- 물의 맛과 냄새, 색깔 등이 평소와 다를 때</p>
                    <p class="dash_bulTxt_txtIndent">- 식수 음용이나 사용 후 신체에 이상한 증세가 나타날 때</p>
                    <p class="dash_bulTxt_txtIndent">- 수면 위 기름 등이 광범위하게 퍼져있을 때</p>
                    <p class="dash_bulTxt_txtIndent">- 하천·호소내 광범위한 지역에서 어류활동이 이상하거나 폐사할 때</p>
                </li>
            </ul>
        </div>
    </div>  
    <!-- 행동요령 이미지1 -->
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img01" src="" class="unload_rsc" alt="수질오염사고 시 상황별 행동요령 대체 텍스트 제공"/>
                <div class="ir">
                    수질오염사고 시 상황별 행동요령 
                    수질오염행위를 목격하시거나 오염의심이 들 때는 '지역번호 + 128번 또는 소방서, 경찰서로 신고 바랍니다.
                    물놀이를 할 경우
                    수질오염사고 지역 및 영향권 역에서는 낚시, 수영, 보트놀이 등 친수활동을 하지 말아야 합니다.
                    물을 사용할 경우
                    수질오염사고 인근사업장, 농가. 내수면 양식장 등에서는 지자체 등의 안내에 따라 용수 사용합니다.
                    어로행위를 할 경우
                    수질오염사고로 인한 하천.호 수 등이 오염된 경우 어로 수렵 행위를 중단해야 합니다.
                    식수공급중단 예고 시
                    자치단체나 아파트 관리사무소 등의 식수 공급 중단 예고가 있을 경우 미리 식수 등을 확보합니다.
                    수돗물에 냄새가 날 경우
                    식수의 냄새 등이 평소와 다를 때는 사용을 중단하고 지역 행정 관서에 신고합니다.
                    오염수 음용 및 사용 시
                    식수 음용이나 사용 후 신체에 이상 증상 발생시에는 즉시 병원에 가서 의사의 진찰을 받아야 합니다.
                    수질오염지역이 있을 때
                    수질오염사고지역 접근이나 출입을 자제하셔야 합니다.
                    수질오염 구별법
                    • 물의 맛과 냄새, 색깔 등이 평소와 다를 때
                    • 식수 음용이나 사용 후 신체에 이상한 증세가 나타날 때
                    • 수면 위 기름 등이 광범위하게 퍼져있을 때
                    • 하천. 호소 내 광범위한 지역에서 어류활동이 이상하거나 폐사할 때
                </div>
            </li>
        </ul>
    </div>
    <br>
        <h4 class="level2_title">국민행동요령</h4> 
        <h4 class="title_02" style="float:left;">대규모수질오염</h4>
        <div>
            <ul class="contextIndent_twoDepList">
                <li style="">
                    <img id="img08" src="" class="unload_rsc" style="padding-left: 60%;width:15%;" alt="환경부로고"/>
                </li>
            </ul>
        </div>
        <br />
        <br />
        <h4 class="title_03">수질오염 구별법</h4>
        <br/>
        <div id="signature_div" style="font-size:10pt;float: left; width:30%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align: center;">
                                <img id="img02" src="" class="unload_rsc" alt="물의 맛과 냄새, 색깔 등이 평소와 다를 때"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;"> 물의 맛과 냄새, 색깔 등이 평소와 다를 때</td>
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
                                <img id="img03" src="" class="unload_rsc" alt="수면 위에 기름 등이 광범위하게 퍼져 있을 때"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;"> 수면 위에 기름 등이 광범위하게 퍼져 있을 때</td>
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
                                <img id="img04" src="" class="unload_rsc" alt="평소와 다를 때 하천 . 호수 등 광범위한 지역에서 어류활동이 이상하거나 폐사할 때"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">평소와 다를 때 하천 . 호수 등 광범위한 지역에서 어류활동이 이상하거나 폐사할 때</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br />
        <h4 class="title_03">대규모 수질오염 발생 시</h4>
        
        <br />
        <div id="signature_div" style="font-size:10pt; width:35%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align: center;">
                                <img id="img05" src="" class="unload_rsc" alt="수질오염사고 지역이나 향권역에서는 수, 보트놀이 등의 물놀이 활동을 하지 말아야 합니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">수질오염사고 지역이나 향권역에서는 수, 보트놀이 등의 물놀이 활동을 하지 말아야 합니다.</td>
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
                                <img id="img06" src="" class="unload_rsc" alt="수질오염사고 발생 지역과 가까운 사업장, 농가, 내수면 양식장 등에서는 관련기관 및 지자체의 안내에 따라 물을 사용해야 합니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">수질오염사고 발생 지역과 가까운 사업장, 농가, 내수면 양식장 등에서는 관련기관 및 지자체의 안내에 따라 물을 사용해야 합니다.</td>
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
                                <img id="img07" src="" class="unload_rsc" alt="수질오염사고로 인한 하천이나 호수 등이 오염된 경우 어로 . 수렵행위를 중단해야 합니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">수질오염사고로 인한 하천이나 호수 등이 오염된 경우 어로 . 수렵행위를 중단해야 합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
<h4 class="level4_title" style="font-weight: bold;">* 수질오염 행위를 목격하시거나 오염 의심이 들 때는 관련기관 및 지자체에 신고해 주시기 바랍니다.</h4>

        <br>
        <br>
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 환경재난대응과 이승환 (044-205-6172) <br>소관부서 : 환경부 수질관리과 성인숙 (044-201-7075)</strong>
        </div>
</div>




<br/>
<br/>
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>