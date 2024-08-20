
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


<!-- 폭염 -->
<script>


//이동
function agocontentView_onclick() {
    var selectedView = $("#selMenugo option:selected").val().replace("jsp", "html");
    location.href = "/idsiSFK/neo/sfk/cs/contents/prevent/"+selectedView+"?menuSeq=126";
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
        <h2 class="level1_title">자연재난 시 행동요령</h2>
        <div class="sns_bt">
            <a href="#" data-toggle="sns_share"  data-service="facebook" data-title="페이스북 SNS공유" class = "facebook"></a>
            <a href="#" data-toggle="sns_share"  data-service="twitter" data-title="트위터 SNS공유" class = "twitter"></a>
            <a href="#" data-toggle="sns_share"  data-service="kakaostory" data-title="카카오스토리 SNS공유" class = "kakaostory"></a>
        </div>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">폭염</h3>

        <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <!-- 행동요령 본문내용 -->
    <div class="section01">
                    <h3 class="title_01">진행별 행동요령</h3>
                    <ul class="tablist">
                        <li class="on">
                            <a class="tabindexBtn"  onclick="return false" title="선택됨">평상시 행동요령</a>
                        </li>
                        <li>
                            <a class="tabindexBtn" onclick="return false">폭염발생 시 행동요령</a>
                        </li>
                        <li>
                            <a class="tabindexBtn" onclick="return false">폭염 관련 정보</a>
                        </li>
                    </ul>
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     폭염은 열사병, 열경련 등의 온열질환을 유발할 수 있으며, 심하면 사망에 이르게 됩니다. <br>
                                     뿐만 아니라, 가축·수산물 폐사 등의 재산피해와 여름철 전력 급증 등으로 생활의 불편을 초래하기도 합니다. <br>
                                     더위가 잦은 여름철에는 다음 사항을 숙지하여 피해를 사전에 예방할 수 있도록 미리 준비합니다.
                                 </p>
                              </div>
                           </div>
                           <h3 class="title_02">사전 준비</h3>
                           <div class="detail">
                              <h3 class="title_02">상세 행동요령</h3> 
                              <p>
                                  <strong class="level4_title">1. 여름철에는 항상 기상상황에 주목하며 주변 사람들과 함께 정보를 공유합니다.</strong>
                                  ∙ 여름철에는 TV, 라디오, 인터넷 등을 통해 무더위와 관련한 기상상황을 수시로 확인합니다.
                              </p>
                              <img id="img12" src="" class="unload_rsc" style="padding-left: 0%;width:30%;" alt="TV, 인터넷, 라디오 등을 통해 무더위 기상상황을 수시로 확인합니다."/>
                              <p>
                                  <strong class="level4_title">2. 열사병 등 온열질환의 증상과 가까운 병원 연락처 등을 가족이나 이웃과 함께 사전에 파악하고 어떻게 조치해야 하는지를 알아둡니다.</strong>
                                ∙ 집에서 가까운 병원 연락처를 알아두고, 본인과 가족의 열사병 등 증상을 확인합니다.
                                <br>
                                ∙ 어린이, 노약자, 심뇌혈관질환자 등 취약계층은 더위에 약하므로 건강관리에 더욱 유의해야 합니다.
                                <br>
                                ∙ 더위로 인한 질병(땀띠, 열경련, 열사병, 울열증, 화상)에 대한 증상과 대처방법을 사전에 알아둡니다.
                              </p>
                              <p>
                                  <strong class="level4_title">3. 폭염예보에 맞추어 무더위에 필요한 용품이나 준비사항을 가족이나 이웃과 함께 확인하고 정보를 공유합니다.</strong>
                                ∙ 에어컨, 선풍기 등을 사용할 수 있도록 사전에 정비합니다.
                                <br>
                                ∙ 집안 창문에 직사광선을 차단할 수 있도록 커튼이나 천, 필름 등을 설치합니다.
                                <br>
                                ∙ 외출하는 경우를 대비하여 창이 긴 모자, 햇빛 가리개, 썬크림 등 차단제를 준비합니다.
                                <br>
                                ∙ 정전에 대비하여 손전등, 비상 식음료, 부채, 휴대용 라디오 등을 미리 확인해 둡니다.
                                <br>
                                ∙ 단수에 대비하여 생수를 준비하고, 생활용수는 욕조에 미리 받아 둡니다.
                                <br>
                                ∙ 오래된 주택은 변압기를 사전에 점검하여 과부하에 대비합니다.
                                <br>
                                ∙ 장거리 운행계획이 있다면 폭염에 의해 도로, 철도 선로 변형 등으로 교통사고 등이 발생할 수 있으므로 신중히 판단합니다.
                              </p>
                              
                              <p>
                                  <strong class="level4_title">4. 무더위 안전상식</strong>
                                ∙ 냉방기기를 사용하는 경우에는 실내ㆍ외 온도차를 5℃ 내외로 유지하여 냉방병을 예방하도록 합니다.(건강 실내 냉방온도는 26℃~28℃가 적당)
                                <br>
                                ∙ 무더위에는 카페인이 들어간 음료나 주류는 삼가고, 생수나 이온음료를 마시는 것이 좋습니다.
                                <br>
                                ∙ 여름철 오후 2시에서 오후 5시 사이는 가장 더운 시간으로 실외 작업은 되도록 하지 않습니다.
                                <br>
                                ∙ 여름철에는 음식이 쉽게 상할 수 있으므로 외부에 오랫동안 방치된 것은 먹지 않습니다.
                              </p>
                              <img id="img13" src="" class="unload_rsc" style="padding-left: 0%;width:30%;" alt="가장 더운 낮 12시 ~ 오후 5시에는 야외활동이나 작업을 자제합니다."/>
                              <img id="img14" src="" class="unload_rsc" style="padding-left: 0%;width:30%;" alt="냉방기기 사용 시, 실내외 온도차를 5도 내외로 유지하여 냉방병을 예방합니다."/>
                              <p>
                                  <strong class="level4_title">5. 취약계층 안전 확인</strong>
                                ∙ 어린이, 노약자 등은 사전에 연락처를 확인하고 폭염 대처 상황을 꼼꼼하게 챙깁니다.
                              </p>
                           </div>
                        </div>
                        
                        <div class="tabmenu02">
                            <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     TV, 라디오, 인터넷 등에서 폭염이 예보된 때에는 최대한 야외활동을 자제하고 주변의 독거노인 등 건강이 염려되는 분들의 안부를 살펴봅니다.
                                 </p>
                              </div>
                           </div>
                           
                           <h3 class="title_02">폭염발생 시 </h3>
                           <div class="detail">
                              <p>
                                   <strong class="level4_title">1. 일반 가정에서는 가족들과 함께</strong>
                                ∙ 야외활동을 최대한 자제하고, 외출이 꼭 필요한 경우에는 창이 넓은 모자와 가벼운 옷차림을 하고 물병을 반드시 휴대합니다.
                                <br>
                                ∙ 물을 많이 마시고, 카페인이 들어간 음료나 주류는 마시지 않습니다.
                                <br>
                                ∙ 냉방이 되지 않는 실내에서는 햇볕을 가리고 맞바람이 불도록 환기를 합니다.
                                <br>
                                ∙ 창문이 닫힌 자동차 안에는 노약자나 어린이를 홀로 남겨두지 않습니다.
                                <br>
                                ∙ 거동이 불편한 노인, 신체허약자, 환자 등을 남겨두고 장시간 외출할 경우에는 친인척, 이웃 등에 부탁하고 전화 등으로 수시로 안부를 확인합니다.
                                <br>
                                ∙ 현기증, 메스꺼움, 두통, 근육경련 등의 증세가 보이는 경우에는 시원한 곳으로 이동하여 휴식을 취하고 시원한 음료를 천천히 마십니다.

                              </p>
                              <img id="img15" src="" class="unload_rsc" style="padding-left: 0%;width:30%;" alt="술이나 카페인이 들어간 음료보다는 물을 많이 마십니다."/>
    
                              <p>
                                   <strong class="level4_title">2. 직장에서는 직원들과 함께</strong>
                                ∙ 휴식시간은 장시간 한 번에 쉬기보다는 짧게 자주 갖는 것이 좋습니다.
                                <br>
                                ∙ 야외 행사, 스포츠경기 등 각종 외부 행사를 자제합니다.
                                <br>
                                ∙ 점심시간 등을 이용하여 10~15분 정도의 낮잠으로 개인 건강을 유지합니다.
                                <br>
                                ∙ 직장인들은 편한 복장으로 출근하여 체온을 낮추도록 노력합니다.
                                <br>
                                ∙ 냉방이 되지 않는 실내에서는 햇볕이 실내에 들어오지 않도록 하고, 환기가 잘 되도록 선풍기를 켜고 창문이나 출입문을 열어둡니다.
                                <br>
                                ∙ 건설 현장 등 실외 작업장에서는 폭염안전수칙(물, 그늘, 휴식)을 항상 준수하고, 특히, 취약시간(오후 2~5시)에는 ‘무더위 휴식시간제’를 적극 시행합니다.
                              </p>
                              <p>
                                   <strong class="level4_title">3. 학교에서는 학생들과 함께</strong>
                                ∙ 초·중·고등학교에서 에어컨 등 냉방장치 운영이 곤란한 경우에는 단축수업, 휴교 등 학사일정 조정을 검토하고, 식중독 사고가 발생하지 않도록 주의합니다.
                                <br>
                                ∙ 냉방이 되지 않는 실내에서는 햇볕이 실내에 들어오지 않도록 하고, 환기가 잘 되도록 선풍기를 켜고 창문이나 출입문을 열어둡니다.
                                <br>
                                ∙ 운동장에서의 체육활동 및 소풍 등 각종 야외활동을 자제합니다.
                              </p>
                              <p>
                                   <strong class="level4_title">4. 축사ㆍ양식장에서는 지역 주민들과 함께</strong>
                                ∙ 축사 창문을 개방하고 지속적인 환기를 실시하며, 적정 사육 밀도를 유지합니다.
                                <br>
                                ∙ 비닐하우스, 축사 천장 등에 물 분무 장치를 설치하여 복사열을 낮춥니다.
                                <br>
                                ∙ 양식 어류는 꾸준히 관찰하고, 얼음을 넣는 등 수온 상승을 억제합니다.
                                <br>
                                ∙ 가축·어류 폐사 시 신속하게 방역기관에 신고하고 조치에 따릅니다.
                              </p>
                                <img id="img16" src="" class="unload_rsc" style="padding-left: 0%;width:30%;" alt="축사, 비닐하우스 등은 환기하거나 물을 뿌려 온도를 낮추기"/>
                              <p>
                                   <strong class="level4_title">5. 무더위쉼터 이용</strong>
                            
                                ∙ 외부에 외출 중인 경우나 자택에 냉방기가 설치되어 있지 않은 경우 가장 더운 시간에는 인근 무더위쉼터로 이동하여 더위를 피합니다. <br>
                                무더위쉼터는 안전디딤돌 앱, 시군구 홈페이지 등에서 확인할 수 있으며 평소에 위치를 확인해 둡니다.
                              </p>                           
                             <img id="img17" src="" class="unload_rsc" style="padding-left: 0%;width:30%;" alt="현기증, 메스꺼움, 두통의 가벼운 증세가 있으면 무더위 쉼터 등 시원한 장소를 이용"/>
                           </div>
                        </div>
                        <div class="tabmenu03">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     폭염에 대한 특보 기준과 질병상식 등을 미리 알아두고 폭염특보나 응급상황 시 즉시 대처할 수 있도록 합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">폭염 특보</h3> 
                              
                              
                                <div class="boardList_boxWrap">
                                    <table class="infoType_table" summary="폭염 특보 종류 및 특성" >
                                        <caption>폭염 특보</caption>
                                        <colgroup>
                                            <col style="width:20%; text-align:center;">
                                            <col style="width:40%;">
                                            <col style="width:40%;">
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th scope=col>
                                                    <span>종류</span>
                                                </th>
                                                <th scope=col>
                                                    <span>주의보</span>
                                                </th>
                                                <th scope=col>
                                                    <span>경보</span>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <span class="fcBlack" style="font-size:18px">폭염</span>
                                                </td>
                                                <td class="txtLeft">
                                                    <span class="fcBlack">폭염으로 인하여 다음 중 어느 하나에 해당하는 경우</span><br/>
                                                    <span class="fcBlack">① 일최고체감온도 33℃이상인 상태가 2일 이상 지속될 것으로 예상될 때</span><br/>
                                                    <span class="fcBlack">② 급격한 체감온도 상승 또는 폭염 장기화 등으로 중대한 피해발생이 예상될 때</span>
                                                </td>
                                                <td style="text-align: inherit;">
                                                    <span class="fcBlack">폭염으로 인하여 다음 중 어느 하나에 해당하는 경우</span><br/>
                                                    <span class="fcBlack">① 일최고체감온도 35℃이상인 상태가 2일 이상 지속될 것으로 예상될 때</span><br/>
                                                    <span class="fcBlack">② 급격한 체감온도 상승 또는 폭염 장기화 등으로 광범위한 지역에서 중대한 피해발생이 예상될 때</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            
                             <h3 class="title_02">더위 질병상식</h3> 
                            <div class="boardList_boxWrap">
                                <table class="infoType_table" summary="더위 질병상식 종류 및 특성">
                                    <caption>더위 질병상식</caption>
                                    <colgroup>
                                        <col style="width:20%; text-align:center;">
                                        <col style="width:40%;">
                                        <col style="width:40%;">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope=col>
                                                <span>종류</span>
                                            </th>
                                            <th scope=col>
                                                <span>정의 및 증상</span>
                                            </th>
                                            <th scope=col>
                                                <span>대처요령</span>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>                                     
                                        <tr>
                                            <td style="padding-top:35px;">                                              
                                                <span class="fcBlack" style="font-size:18px;">
                                                <img id="Heatstroke" style="margin-top:30px;" src="" class="unload_rsc" alt="더위질병상식열사병"/>
                                                <br>열사병
                                                <br>(Heat stroke)</span>
                                            </td>
                                            <td class="txtLeft">
                                                <span class="fcBlack">• 체온을 조절하는 신경계(체온조절 중추)가 열 자극을 견디지 못해 그 기능을 상실한 질환
                                                <br>&nbsp ‣ 중추신경 기능장애(의식장애/혼수상태)
                                                <br>&nbsp ‣ 땀이 나지 않아 건조하고 뜨거운 피부(>40℃)
                                                <br>&nbsp ‣ 심한 두통, 오한, 빈맥, 빈호흡, 저혈압
                                                <br>• 다발성 장기손상 및 기능장애와 같은 합병증이 발생할 수 있고 치사율이 높아 온열질환 중 가장 위험한 질환</span>
                                            </td>
                                            <td style="text-align: inherit;">
                                                <span class="fcBlack">○ 119에 즉시 신고하고 아래와 같이 조치합니다.
                                                <br>- 환자를 시원한 장소로 옮깁니다.
                                                <br>- 환자의 옷을 느슨하게 하고 환자의 몸에 시원한 물을 적셔 부채나 선풍기 등으로 몸을 식힙니다.
                                                <br>- 얼음주머니로 목, 겨드랑이 밑, 서혜부에 대어 체온을 낮춥니다.
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>                                                
                                                <img id="Heatexhaustion" src="" class="unload_rsc" alt="더위질병상식열탈진"/>
                                                <br><span class="fcBlack" style="font-size:18px">열탈진
                                                <br>(Heat exhaustion)</span>
                                            </td>
                                            <td class="txtLeft">
                                                <span class="fcBlack">• 열로 인하여 땀을 많이 흘려 수분과 염분이 적절히 공급되지 못하는 경우 발생
                                                <br>&nbsp ‣ 땀을 많이 흘림(과도한 발한), 차고 젖은 피부, 창백함
                                                <br>&nbsp ‣ 체온은 크게 상승하지 않음(≤40℃)
                                                <br>&nbsp ‣ 극심한 무력감과 피로, 근육경련
                                                <br>&nbsp ‣ 오심 또는 구토, 혼미, 어지럼증(현기증)
                                                </span>
                                            </td>
                                            <td style="text-align: inherit;">
                                                <span class="fcBlack">○ 시원한 곳 또는 에어컨이 있는 장소에서 휴식합니다.
                                                <br>○ 물을 섭취하여 수분을 보충해줍니다.
                                                <br>○ 시원한 물로 샤워를 하거나 목욕을 합니다.
                                                <br>○ 증상이 1시간 이상 지속되거나 회복되지 않을 경우, 의료기관에 내원하여 적합한 진료를 받습니다.
                                                <br>&nbsp - 병원에서 수액을 통해 수분과 전해질을 보충합니다.
                                                </span>
                                            </td>
                                            <tr>
                                            <td style="padding-top:20px;">                                              
                                                <img id="Heatcramp" src="" class="unload_rsc" alt="더위질병상식열경련"/>
                                                <br><span class="fcBlack" style="font-size:18px">열경련
                                                <br>(Heat cramp)</span>
                                            </td>
                                            <td class="txtLeft">
                                                <span class="fcBlack">• 땀을 많이 흘려 체내 염분(나트륨)이 부족하여 근육경련이 발생하는 질환
                                                <br>&nbsp ‣ 근육경련(팔, 다리, 복부, 손가락)
                                                <br>• 특히 고온 환경에서 강한 노동이나 운동을 할 경우 발생
                                                </span>
                                            </td>
                                            <td style="text-align: inherit;">
                                                <span class="fcBlack">○ 시원한 곳에서 휴식합니다.
                                                <br>○ 물을 섭취하여 수분을 보충해줍니다.
                                                <br>○ 경련이 일어난 근육을 마사지합니다.
                                                <br>○ 아래의 경우, 바로 응급실에 방문하여 진료를 받아야 합니다.
                                                <br>&nbsp  - 1시간 넘게 경련이 지속
                                                <br>&nbsp  - 기저질환으로 심장질환이 있는 경우
                                                <br>&nbsp  - 평상시 저염분 식이요법을 한 경우
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding-top:20px;">                                              
                                                <img id="Heatsyncope" src="" class="unload_rsc" alt="더위질병상식열실신"/>
                                                <br><span class="fcBlack" style="font-size:18px">열실신
                                                <br>(Heat syncope)</span>
                                            </td>
                                            <td class="txtLeft">
                                                <span class="fcBlack">• 체온이 높아져 열을 외부로 발산하기 위해 체표면의 혈액량은 늘어나고 심부의 혈액량은 감소하여 뇌로 가는 혈약량이 부족하여 일시적으로 의식을 잃는 질환
                                                <br>&nbsp ‣ 실신(일시적 의식소실), 어지러움증
                                                <br>• 주로 앉아있거나 누워있는 상태에서 갑자기 일어나거나 오래 서 있을 때 발생
                                                </span>
                                            </td>
                                            <td style="text-align: inherit;">
                                                <span class="fcBlack">○ 시원한 장소로 옮겨 평평한 곳에 눕힙니다.
                                                <br>&nbsp  - 다리를 머리보다 높게 올립니다.
                                                <br>○ 의사소통이 될 경우, 물을 천천히 마시도록 합니다.
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="fcBlack" style="font-size:18px">
                                                <img id="Heatedema" src="" class="unload_rsc" alt="더위질병상식열부종"/>
                                                <br>열부종<br/>(Heat edema)</span>
                                            </td>
                                            <td class="txtLeft">
                                                <span class="fcBlack">• 체온이 높아져 열을 외부로 발산하기 위해 체표면의 혈액량은 늘어나고 심부의 혈액량은 감소하여 이런 상태에서 오래 서 있거나 앉아있게 되면 혈액 내 수분이 혈관 밖으로 이동하면서 부종(몸이 붓는 증상)이 발생                                         <br>&nbsp ‣ 중추신경 기능장애(의식장애/혼수상태)
                                                <br>&nbsp ‣ 손, 발, 다리 등의 부종</span>
                                            </td>
                                            <td style="text-align: inherit;">
                                                <span class="fcBlack">○ 시원한 장소로 옮겨 평평한 곳에 눕힙니다.
                                                <br>&nbsp - 부종이 발생한 부위를 심장보다 높게 올립니다.
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="fcBlack" style="font-size:18px">
                                                <img id="Heatrash" src="" class="unload_rsc" alt="더위질병상식열발진,땀띠"/>
                                                <br>열발진/땀띠<br/>(Heat rash)</span>
                                            </td>
                                            <td class="txtLeft">
                                                <span class="fcBlack">• 땀관이나 땀관 구멍의 일부가 막혀서 땀이 원활히 표피로 배출되지 못하고 축적되어 작은 발진과 물집이 발생하는 질환                                             <br>&nbsp ‣ 중추신경 기능장애(의식장애/혼수상태)
                                                <br>&nbsp ‣ 여러 개의 붉은 뾰루지 또는 물집(목, 가슴상부, 사타구니, 팔, 다리 안쪽)</span>
                                            </td>
                                            <td style="text-align: inherit;">
                                                <span class="fcBlack">○ 환부를 시원하고 건조하게 유지합니다.
                                                <br>○ 발진용 분말가루 및 연고 등을 사용합니다.
                                                </span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                           </div> 
                        </div>
                    </div>
                </div>
                
                <div class="section02">
                  <h3 class="title_01">주요기관 연락처</h3>
                  <ul class="tablewrap">
                      <li>
                          <p>1. 위기상황, 긴급상황 시 신고전화</p>
                          <p>
                              ∙ 재난신고 119, 범죄신고 112, 민원 상담 110<br>
                              ∙ 행정안전부 중앙재난안전상황실 044)205-1541~3
                          </p>
                      </li>
                      <li>
                          <p>2. 행정안전부 국민행동요령, 임시주거실 등 안내</p>
                          <p>
                              ∙ 행정안전부 홈페이지 <a href="http://www.mois.go.kr" target="_blank" title="새창열기">http://www.mois.go.kr</a><br>
                              ∙ <e>행정안전부 국민재난안전포털</e> <a href="http://www.safekorea.go.kr" target="_blank" title="새창열기">http://www.safekorea.go.kr</a><br>
                              ∙ 스마트폰 어플리케이션 ‘안전디딤돌’
                          </p>
                      </li>
                      <li>
                          <p>3. 유관기관 연락처 및 홈페이지</p>
                          <p>
                              ∙ 행정안전부 044)205-6366, <a href="http://www.mois.go.kr" target="_blank" title="새창열기">http://www.mois.go.kr</a><br> 
                              ∙ 기상청 02)2181-0503, <a href="http://www.kma.go.kr" target="_blank" title="새창열기">http://www.kma.go.kr</a><br> 
                              ∙ 고용노동부 044)202-8895, <a href="http://www.moel.go.kr" target="_blank" title="새창열기">http://www.moel.go.kr</a><br> 
                              ∙ 보건복지부 044)202-2652, <a href="http://www.mohw.go.kr" target="_blank" title="새창열기">http://www.mohw.go.kr</a><br> 
                              ∙ 질병관리청 043)219-2953, <a href="http://www.kdca.go.kr" target="_blank" title="새창열기">http://www.kdca.go.kr</a><br> 
                              ∙ 농림축산식품부 044)201-1474, <a href="http://www.mafra.go.kr" target="_blank" title="새창열기">http://www.mafra.go.kr</a><br> 
                              ∙ 농촌진흥청 1544-8572, <a href="http://www.rda.go.kr" target="_blank" title="새창열기">http://www.rda.go.kr</a><br> 
                              ∙ 해양수산부 044)200-5617, <a href="http://www.mof.go.kr" target="_blank" title="새창열기">http://www.mof.go.kr</a><br> 
                              ∙ 교육부 044)203-6355, <a href="http://www.moe.go.kr" target="_blank" title="새창열기">http://www.moe.go.kr</a><br>
                          </p>
                      </li>
                  </ul>
              </div>
    
            <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
                <strong class="level4_title">소관부서 : 기후재난대응과 이정선(044-205-6362)</strong>
            </div>
    <!-- <h4 class="level2_title">국민행동요령</h4> 
    <h4 class="title_02" style="font-weight: bold;">폭염</h4>
    <div>
    <ul class="contextIndent_twoDepList">
        <li style="">
            <img id="img11" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="행정안전부 로고"/>
        </li>
    </ul>
    </div>
    <br>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img05" src="" class="unload_rsc" alt="TV, 인터넷, 라디오 등을 통해 무더위 기상상황을 수시로 확인합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- TV, 인터넷, 라디오 등을 통해 무더위 기상상황을 수시로 확인합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img06" src="" class="unload_rsc" alt="술이나 카페인이 들어간 음료보다는 물을 많이 마십니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 술이나 카페인이 들어간 음료보다는 물을 많이 마십니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img07" src="" class="unload_rsc" alt="가장 더운 오후 2시~5시에는 야외활동이나 작업을 되도록 하지 않습니다,"/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 가장 더운 오후 2시~5시에는 야외활동이나 작업을 되도록 하지 않습니다,</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img08" src="" class="unload_rsc" alt="냉방기기 사용 시, 실내외 온도차를 5℃ 내외로 유지하여 냉방병을 예방합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 냉방기기 사용 시, 실내외 온도차를 5℃ 내외로 유지하여 냉방병을 예방합니다.<br />※ 적정 실내 냉방온도 : 26~28℃</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img09" src="" class="unload_rsc" alt="현기증, 메스꺼움, 두통의 가벼운 증세가 있으면 무더위 쉼터 등 시원한 장소를 이용합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 현기증, 메스꺼움, 두통의 가벼운 증세가 있으면 무더위 쉼터 등 시원한 장소를 이용합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img10" src="" class="unload_rsc" alt="축사, 비닐하우스 등은 환기하거나 물을 뿌려 온도를 낮춥니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 축사, 비닐하우스 등은 환기하거나 물을 뿌려 온도를 낮춥니다.</strong> -->

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