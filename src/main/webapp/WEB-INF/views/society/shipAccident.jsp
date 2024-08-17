
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
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
        <h3 id="tbmainlab" class="level2_title">해양 선박사고</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>

    <style>.section01 img{width:800px}.section01 ul li{text-align:justify}</style>
    <div class="section01">
                              <h3 class="title_02">해양 선박사고 시 국민행동요령</h3>
                              <h4 class="level4_title">사고종류별에 따른 대처방안 </h4>
                                  <ul>
                                    <li class="level4_title">출항시, 항해 중 국민행동요령</li>
                                    <li>1. 뛰거나 장난치지 않고 질서를 지키며 승선합니다.</li>
                                    <li>2. 계단 이용 시 손잡이를 잡고 이용합니다.</li>
                                    <li>3. 승선 후 선내객실 등 지정장소로 이동합니다.</li>
                                    <li>4. 대피로를 숙지하고 구명조끼 위치와 작용법을 확인합니다.</li>
                                    <li>5. 탑승 후 안내방송을 경청합니다.</li>
                                    <li>6. 기계, 장비를 임의로 작동해선 안됩니다.</li>
                                  </ul>
                                  <!-- 아래 div 이미지 보기 때 활성 -->
                                 <div style="margin-top:15px">
                                     <span>※ 시각장애인 등 취약자의 보호자(조력자)께서는 상단 우측 QR코드(음성안내)를 스캔하여 도움을 주시기 바랍니다.</span>
                                     <img id="img01" alt="" class="img_hand_clean unload_rsc" src=""/>
                                 </div>
                                 <ul>
                                    <li class="level4_title">선박 침수 시 국민행동요령</li>
                                    <li>1. 승무원의 안내에 따라 행동합니다.</li>
                                    <li>2. 얇은 옷을 겹쳐 입은 후 구명조끼를 소지합니다.</li>
                                    <li>3. 화재가 발생하거나 부상자가 있는 경우 승무원에게 알립니다.</li>
                                    <li>4. 승무원의 안내에 따라 비상탈출로를 이용해 대피하되, 인파에 휩쓸리지 않도록 주의합니다.</li>
                                    <li>5. 승무원의 안내에 따라 구명정, 구명뗏목에 탑승합니다.</li>
                                    <li>6. 뛰어내려야 하는 경우, 다리를 편 후, 한 손으로 입과 코를 막고 최대한 멀리 뛰어내립니다.</li>
                                 </ul>
                                 <div style="margin-top:15px">
                                     <span>※ 시각장애인 등 취약자의 보호자(조력자)께서는 상단 우측 QR코드(음성안내)를 스캔하여 도움을 주시기 바랍니다.</span>
                                     <img id="img02" alt="" class="img_hand_clean unload_rsc" src=""/>
                                 </div>
                                 <ul>
                                    <li class="level4_title">선박 내 화재 발생 시 국민행동요령</li>
                                    <li>1. "불이야"라고 크게 외치고 비상벨을 눌러 화재를 알립니다.</li> 
                                    <li>2. 소화기로 초기 화재진압을 합니다.(위험이 큰 경우 즉시 대피합니다.)</li> 
                                    <li>3. 승무원의 안내에 따라 탈출로를 통해 이동하며, 연기 발생 시 입과 코를 가리고 대피합니다.</li> 
                                    <li>4. 노약자를 도와 함께 대피합니다.
                                 </ul>
                                 <div style="margin-top:15px">
                                     <span>※ 시각장애인 등 취약자의 보호자(조력자)께서는 상단 우측 QR코드(음성안내)를 스캔하여 도움을 주시기 바랍니다.</span>
                                     <img id="img03" alt="" class="img_hand_clean unload_rsc" src=""/>
                                 </div>
                              <h3 class="title_02">알아두면 좋은 재난정보</h3> 
                                 <!-- <ul>
                                    <li class="level4_title">1. 수난사고</li>
                                    <li>준비운동을 한 다음 다리부터 서서히 들어가 몸을 순환시키고 수온에 적응시켜 수영하기 시작한다. 초보자는 수심이 얕다고 안심해서는 안된다. 배 혹은 떠 있는 큰 물체 밑을 헤엄쳐 나간다는 것은 위험하므로 하지 않는다. 통나무 같은 의지물이나 부유구, 튜브 등을 믿고 자신의 능력 이상 깊은 곳으로 나가지 않는다. 자신의 체력과 능력에 맞게 물놀이를 한다.</li>
                                 </ul>
                                 <ul>
                                    <li class="level4_title">2. 물에 빠진 경우</li>
                                    <li class="level4_title">2-1. 선박(보트) 전복 등으로 물에 빠진 경우</li>
                                    <li>- 물 밖으로 나온다.(공기 중에서 보다 물속에서의 체온손실이 많다.)</li>
                                    <li>- 옷을 많이 입는다. (물에 빠졌을 때 옷을 벗어서는 안된다. 모직 옷을 두겹 정도 더 껴입으면 열손실이 속옷만 입었을 때보다 1/4감소한다.)</li>
                                    <li>- 체온유지를 위해 수영이나 불필요한 동작은 하지 않는다.</li>
                                    <li>- 수온 ℃에서 보통 정상적인 성인일 경우 수영가능 거리는 약 1해리(1,852m) 정도이다.</li>
                                 </ul>
                                 <ul>
                                    <li class="level4_title">2-2. 파도가 갑자기 높아져 위험할 때</li>
                                    <li>- 물을 안 먹으려고 애쓰기 보다는 다소 마시게 되더라도 체력소모를 줄이도록 편안한 상태를 유지하는것이 안전하다.</li>
                                    <li>- 머리는 수면상 위에 내밀고 큰 파도가 덮칠 때는 깊이 잠수 할 수록안전하다.</li>
                                    <li>- 체력이 다하여 움직일 수 없거나 지쳤을 때 배영, 선헤엄 등으로 휴식을 취하면서 파도에 몸을 맡기는 것이 안전하다.</li>
                                 </ul>
                                 <ul> -->
                                    <li class="level4_title">의식없는 사고자를 구했을 경우</li>
                                    <li class="level4_title">1. 구조직후 응급처치</li>
                                    <li>- 구조요원 또는 119에 아직 신고 되어 있지 않다면 즉시 신고한다.</li>
                                    <li>- 가장먼저 인공호흡을 실시한다.(구조하면서 수중에서도 곧바로 실시해야 한다.)</li>
                                    <li>- 물을 빼고자 복부나 등을 누르는 행위는 하지 않는다.</li>
                                    <li>※ 사고자의 위속에 있는 물과 음식물을 오히려 역류시켜 기도를 막을 수 있으며, 구토물이 기도를 통해 페에 흡수될 가능성이 있기 때문에 물을 빼는 것이 더 위험 할 수 있다. 또한 인공호흡이 늦어지게 되므로 그만큼 사고자의 소생가능성이 작아지며, 이후의 응급처치 요령은 일반적인 심폐소생술과 동일하다.</li>
                                 </ul>
                                 <ul>
                                     <li class="level4_title">2. 체온손실 응급처치</li>
                                     <li>- 체온손실에 따른 신체증상</li>
                                     <li>&#62; 체온이 떨어지면 피부에서 차가운 기운을 느끼기 시작하며, 혈액순환이 감소되고 신체의 주요 기관의 활동이 저하된다. 혈액순환이 잘 되지 않으면 먼저 손과 발이 차가워지는 것을 느끼게 된다. 무의식적으로 근육의 떨림이 시작되고, 몸에서 열이 발산된다.</li>
                                     <li>&#62; 체온이 더 떨어지면 신체내부가 추워지기 시작하고, 신체외부의 혈액의 흐름이 더욱 감소되면 살아있는 기관의 온도유지를 위해 신체는 격렬한 방법을 택하게 된다. 떨림이 감소되거나 정지되며 내부기관 조직에 영향을 미치기 시작한다. 뇌가 차가워 지면 신체조종이 곤란하며, 의식을 잃게되고 즉각적이고 정확한 처치를 하지 않으면 생명을 잃게 된다.</li>
                                     <li>- 머리, 목 , 가슴, 사타구니 등의 체온 손실이 많다.</li>
                                     <li>- 환자를 마른상태의 따뜻한 곳으로 옮긴다.</li>
                                     <li>- 젖은 옷을 벗기고 따뜻한 물병이나 따뜻한 물에 적신 수건으로 가슴부위를 따뜻하게 해준다.</li>
                                     <li>- 몸을 담요나 슬리핑백으로 감싸주고 추운 곳에 노출되지 않도록 하며 머리와 목을 따뜻하게 감싸준다.</li>
                                 </ul>
                <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
                    <strong class="level4_title">소관부서 : 산업교통재난대응과 (044-205-6343)<br>소관부서 : 해양수산부 해사안전관리과 김동규 (044-200-5856)</strong>
                </div>
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