
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
        <h3 class="level2_title">공동구재난</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    

            <div class="section01">
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="detail">
                              <h3 class="title_02">공동구재난 사고 발생시 행동요령</h3> 
                              <p>
                              <strong class="level4_title">1. 공동구재난 발생 우려시</strong>
                                - 거주지역 인근에 공동구가 있을 경우, 공동구관리자(지자체, 공단 등) 및 유관기관 비상연락망 등을 사전에 파악합니다.
                                <br>
                                <span class="star_fcRed_bulTxt_w"><span class="star_bulTxt">*</span>공동구 설치지역 : 서울(목동,여의도,개포,가락,상계,상암,은평,마곡), 대전(둔산), 부산(해운대), 인천(연수,송도,남동), 광주, 경기(부천,분당,평촌,일산,산본,수원,안산,파주), 충북(오창), 충남(내포), 전남(여수), 경북(구미,안동), 경남(창원), 세종(나성,보람,용호)</span>
                              </p>
                            
                              <p>
                              <strong class="level4_title">2. 공동구 재난 발생 시</strong>
                                - 재난(화재 등) 발견 시 다른 사람에게 알리고, 폭발 및 붕괴 등의 위험이 없는 안전한 지역으로 이동하고, 소방서(119) 및 관할 지자체(지역재난안전대책본부)에 신고합니다.
                                <br>
                                - 공동구 인근에 있는 주민들은 화재 및 파괴 등에 따른 폭발, 도로붕괴 등의 위험이 있으니 지역재난안전대책본부의 통제에 따라 행동합니다.
                                <br>
                                　*전력공급이 중단 될 수 있으니, 엘리베이터는 절대 이용하지 않도록 하며 계단을 이용
                                <br>
                                　*공동구 재난 현장에는 연기·가스에 의한 질식이나 호흡기관의 장애를 초래할 위험이 있으므로 풍향에 따라 적절히 우회 행동하고 물수건으로 입과 코를 막고 이동
                                <br>
                                　*특히, 주위에 어린이, 노인, 장애인 등 안전취약계층 확인하고 이웃들이 함께 확인하며 이동
                                <br>
                                　*안전한 곳에 도달한 이후에는 지역재난안전대책본부의 안내에 따라 귀가
                                <br>
                                - 재난방송 청취 등 상황전개현황을 지속적으로 파악합니다.
                                <br>
                                　*스마트폰이나 휴대용 라디오 등을 소지하여 재난온라인방송 청취
                                <br>
                                　*행정안전부에서 발송하는 재난문자전송서비스(CBS) 지속 확인
                                <br>
                                - 안전이 확인된 이후 이동 및 귀가합니다.
                                <br>
                                　*지역재난안전대책본부의 별도 안내가 있기 전까지 무분별한 이동 자제
                                <br>
                                　*추가적인 공동구 재난이 발생 할 수 있으므로 공동구 인근에는 접근하지 않도록 유의
                                <br>
                                - 집에 도착한 후에 전력, 통신, 상수 등의 이상 유무를 점검하고, 이상이 의심될 경우에는 지자체 및 한전, KT, 상수도사업소 등에 점검 및 복구 요청합니다.
                                
                              </p>

                             
                              <h3 class="title_02">Q & A</h3> 
                              <p>
                              <strong class="level4_title">Q. 공동구란 무엇입니까?</strong>
                              <strong class="level4_title">A.</strong>
                                - 공동구란 지하매설물(전선로, 통신선로, 상·하수도관, 열수송관 등)을 공동 수용함으로써 도로중복굴착방지, 도시미관 개선, 도로구조 보전 및 교통의 원활한 소통을 위해 지중(地中)에 설치하는 시설물입니다.
                                <br>
                                - 공동구는 지자체가 관리하며, 일반인의 출입이 통제되고 있어 재난(화재, 파손 등) 발생 시 직접적인 인명 피해의 우려는 적으나, 재난 발생 시 전력, 통신, 상수 등 단절에 대비한 국민들의 주의가 필요하며, 화재 시 환기구를 통해 유독가스가 배출 될 수 있어 안전한 곳으로 대피하는 것이 필요합니다.
                              </p>
                            <div class="footnote_border">
                                <div class="star_bulTxt_w">
                                    <span class="star_bulTxt">*</span>
                                    <span>자료제공 : 국토교통부 도시활력지원과 044-201-3724</span>
                                </div>
                            </div>
                           </div> 
                        </div>
                    </div>
                </div>
    
    
        <h4 class="level2_title">국민행동요령</h4> 
        <h3 class="title_02">공동구 사고</h3> 
        <div>
            <ul class="contextIndent_twoDepList">
                <li style="">
                    
                    <img id="img08" src="" class="unload_rsc" style="padding-left: 35%;width:15%;" alt="국토교통부로고"/>
                    <img id="img09" src="" class="unload_rsc" style="padding-left: 5%;width:15%;" alt="행정안전부로고"/>
                </li>
            </ul>
        </div>
        <br />
        <br />
        <h4 class="level3_title">• 주변 공동구 확인</h4>
        <br/>
        <div id="signature_div" style="font-size:10pt; width:35%;text-align:center;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;">
                                <img id="img02" src="" class="unload_rsc" alt="주변 공동구 확인"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>거주지역 인근에 공동구가 있는지 사전에 확인합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        *<b style="color:red;">공동구</b>란 도로중복굴착방지, 도시미관 개선,  도로구조 보전 및 교통의 원활한 소통을 위해  전선로, 통신선로, 상·하수도관, 열수송관 등을  지하에 매설한 시설물입니다.
        <h4 class="level3_title">• 공동구 사고 발생 시</h4>
        <br />
        <div id="signature_div" style="font-size:10pt;float:left;width:30%;text-align:center;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:30%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;">
                                <img id="img03" src="" class="unload_rsc" alt="주변 공동구 확인"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>사고 발견 시 다른 사람들에게 알리고, 안전한 곳으로 이동한 후 소방서나 지자체에 신고합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt; width:30%;float:left;text-align:center;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:30%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;">
                                <img id="img04" src="" class="unload_rsc" alt="공동구 사고 발생 시"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>통제에 따라 지정된 대피장소로 이동합니다.<br>•계단으로 이동(엘리베이터 이용 금지)<br>•물수건으로 입과 코를 막고 이동</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;text-align:center;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;">
                                <img id="img05" src="" class="unload_rsc" alt="공동구 사고 발생 시"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>별도의 안내가 있을 때까지 무단으로 이동하지 않으며 재난방송 청취 등 상황전개현황을 지속적으로 파악합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br/>
        <br/>
        <h4 class="level3_title">• 공동구 사고 발생 후</h4>
        <br/>
        
        <div id="signature_div" style="font-size:10pt;width:30%;float:left;text-align:center;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:30%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;">
                                <img id="img06" src="" class="unload_rsc" alt="공동구 사고 발생 시"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>집에 도착한 후에는 전력, 통신, 수돗물 등의 이상 유무를 확인하고, 이상이 있을 경우에는 관련기관 및 지자체에 점검과 복구 요청을 합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;text-align:center;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:30%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;">
                                <img id="img07" src="" class="unload_rsc" alt="해양오염사고 발생 시"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>별도의 안내가 있기 전까지 무분별한 이동을 자제하고 공동구 인근에는 접근하지 않습니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        
        <br>
        <br>
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 환경재난대응과 유재덕(044-205-6181)<br> 소관부서 :국토교통부 도시활력지원과 민채현(044-201-3736)</strong>
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