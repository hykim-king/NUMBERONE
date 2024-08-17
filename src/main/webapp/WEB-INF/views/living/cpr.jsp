
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


<!-- 생활안전행동요령 -->
<script>

//이전화면
function agobeforeView_onclick() {
     window.history.back();
};

</script>
</head>
<body>
<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">생활안전행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <H3 id="tbmainlab" class="level2_title">심폐소생술</H3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    

            <dl>
                <h4 class="title_02" style="">심폐소생술의 중요성</h4>
                <dd>
                    심정지가 발생했을 때 아무런 조치를 취하지 않으면 4~5분 내에 뇌손상이 일어나기 때문에 심장 정지 초기 5분의 대응이
                    운명을 좌우하는 것입니다. 이에 따라 응급상황 시 초기 목격자에 의하여 심폐소생술이 시행된 경우 소생율이 3배 이상으로
                    증가 가능합니다.<br />
                </dd>
            </dl>
            

        <h4 class="level2_title">국민행동요령</h4> 
        <h4 class="title_02" style="float:left;">심폐소생술</h4>
        <br>
        <br>
        <div>
            <ul class="contextIndent_twoDepList">
                <li style="">
                    <img id="img15" src="" class="unload_rsc" style="padding-left: 60%;width:15%;" alt="소방청로고"/>
                </li>
            </ul>
        </div>
        <br />
        <div id="signature_div" style="font-size:10pt;float: left; width:30%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img01" src="" class="unload_rsc" alt="어깨살짝두드리며 의식확인 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""> <b style="font-weight: bold;">환자의 반응 확인</b><br> 어깨를 가볍게 두드리며 “여보세요, 괜찮으세요?”를 외치면서 환자의 반응을 확인합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        
        <div id="signature_div" style="font-size:10pt;float: left; width:30%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img02" src="" class="unload_rsc" alt="환자반응 없을시 지목하여 119신고요청 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""> <b style="font-weight: bold;">119 신고</b><br> 환자의 의식(반응)이 없으면 구체적으로 사람을 지목하여 119 신고를 요청하고, 자동심장충격기를 가져오도록 부탁합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        
        <div id="signature_div" style="font-size:10pt; ">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img03" src="" class="unload_rsc" alt="10초내로 환자 얼굴,가슴등 관찰로 호흡확인 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""><b style="font-weight: bold;">호흡확인</b><br> 환자의 얼굴과 가슴을 10초 이내로 관찰하여 호흡이 있는지를 확인합니다.<br> 호흡이 없거나 비정상적이라면 즉시 심폐소생술을 준비합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        
        <br />
        <br />
        <br />
        <div id="signature_div" style="font-size:10pt; width:30%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img04" src="" class="unload_rsc" alt="가슴압박점찾은후 압박 30회실시 
이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 5px;"><b style="font-weight: bold;">가슴압박 30회 시행</b><br> 깍지를 낀 두 손의 손바닥으로 환자의 가슴 압박점을 찾아 30회 가슴압박을 실시합니다. <br>※ 압박깊이: 5cm, 압박속도: 분당 100~120회</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;width:30%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img05" src="" class="unload_rsc" alt="인공호흡위해 머리젖히고 턱들어 기도확보 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""><b style="font-weight: bold;">기도 개방</b><br> 인공호흡을 위해, 환자의 머리를 젖히고, 턱을 들어 올려서 환자의 기도를 개방합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img06" src="" class="unload_rsc" alt="코막고 입맞댄후 인공호흡 2회시행 하는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""><b style="font-weight: bold;">인공호흡 2회 시행</b><br> 환자의 코를 막은 다음 구조자의 입을 환자의 입에 착시킨 후, 환자의 가슴이 올라올 정도로 1초 동안 숨을 불어 넣습니다.</td>
                </tr>
            </tbody>
        </table>
        <br>
        <br>
        <br>
        </div>
        <div id="signature_div" style="font-size:10pt;width:30%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img07" src="" class="unload_rsc" alt="119올때까지 가슴압박,인공호흡 계속 반복 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""><b style="font-weight: bold;">가슴압박과 인공호흡의 반복</b><br> 30회의 가슴압박과 2회의 인공호흡을 119구급대원이 도착할 때까지 반복해서 시행합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;width:30%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img08" src="" class="unload_rsc" alt="호흡회복 후 안정자세만드는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""><b style="font-weight: bold;">회복자세</b><br> 환자의 호흡이 회복되었으면 환자를 옆으로 돌려 눕혀 기도가 막히는 것을 예방합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;width:30%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img09" src="" class="unload_rsc" alt="가슴압박점 설명하는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""><b style="font-weight: bold;">가슴압박 위치</b><br> 성인과 소아 심정지 환자에서 가슴압박의 위치는 가슴뼈의 아래쪽 1/2입니다.</td>
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
        <h4 class="level2_title">국민행동요령</h4> 
        <h4 class="title_02" style="float:left;">자동심장충격기(AED)</h4>
        <br>
        <br>
        <div>
            <ul class="contextIndent_twoDepList">
                <li style="">
                    <img id="img16" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="소방청 로고"/>
                </li>
            </ul>
        </div>
        <br />
        <br/>
        <div id="signature_div" style="font-size:10pt;float: left; width:35%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align:center;">
                                <img id="img10" src="" class="unload_rsc" alt="심장충격기 버튼눌러 켜는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""><b style="font-weight: bold;">심장충격기 켜기</b><br> 심장충격기는 반응과 정상적인 호흡이 없는 심정지 환자에게만 사용합니다. 심폐소생술 시행 중에 심장충격기가 도착하면 지체 없이 시행해야 합니다. 심장충격기의 전원 버튼을 누릅니다.</td>
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
                                <img id="img11" src="" class="unload_rsc" alt="패드 가슴에 부착하는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""><b style="font-weight: bold;">두 개의 패드 부착</b> <br>패드 1: 오른쪽 쇄골 아래 <br>패드 2: 왼쪽 젖꼭지 아래의 중간 겨드랑이선에 부착합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br />
        <br />
        <br>
        <br>
        <div id="signature_div" style="font-size:10pt; width:35%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align:center;">
                                <img id="img12" src="" class="unload_rsc" alt="심장리듬분석중 거리유지 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""><b style="font-weight: bold;">심장리듬 분석</b><br> 심장충격기가 심장리듬을 분석하는 동안에는 환자에게 닿지 않게 떨어집니다. 심장충격이 필요하면 “심장충격이 필요합니다”라는 음성지시와 함께 자동으로 충전되고, 충전 중엔 가슴압박을 실시합니다. 심장분석이 필요 없는 경우는 심폐소생술을 계속 실시합니다.</td>
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
                                <img id="img13" src="" class="unload_rsc" alt="심장충격필요시 심장충격실시 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""><b style="font-weight: bold;">심장충격 실시</b><br> 심장충격이 필요한 경우에만 심장충격 버튼이 깜박입니다. 깜박이는 버튼을 눌러 심장충격을 실시합니다.<br> ※ 다른 사람이 환자에게서 떨어져 있는지 확인하고 실시합니다.</td>
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
                            <li style="width:318px;text-align:center;">
                                <img id="img14" src="" class="unload_rsc" alt="심장충격 실시 후 심폐소생&인공호흡 반복 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""><b style="font-weight: bold;">즉시 심폐소생술 다시 시행 </b><br>심장충격을 실시한 후에는 즉시 심폐소생술을 실시합니다. 119 구급대원이 도착할 때까지 반복 실시합니다.</td>
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

        </div>
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 소방청 119구급과 황문경 (044-205-7633)</strong>
        </div>
</div>

<!-- Footer -->
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>