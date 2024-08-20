
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">">
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



<script>
// 이동
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
        <h2 class="level1_title">사회재난시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <H3 id="tbmainlab" class="level2_title">여름철 물놀이</H3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>


        <div class="section02" id = "sec1" style="display:none;">
                    <div class="tabarea2">
                        <div class="tabmenu02">
                           <div class="detail2">
                              <h3 class="title_02">물놀이 상황별 대처요령</h3> 
                              
                              <p>
                              <strong class="level4_title">1. 파도가 있는 곳에서 수영할 때는</strong>
                                - 체력의 소모가 적게 편안한 기분으로 수영한다. (긴장하면 그 자체로서 체력소모가 발생한다.)
                                <br>
                                - 머리는 언제나 수면상에 내밀고 있어야 한다.
                                <br>
                                - 물을 먹지 않으려고 기를 쓰고 참기보다 마시는 쪽이 오히려 편안할 수도 있다.
                                <br>
                                - 큰 파도가 덮칠 때는 깊이 잠수할수록 안전하다.
                                <br>
                                - 지쳐서 휴식을 할 때는 바람이 부는 방향에 따라 다르다.
                                <br>
                                - 큰 파도에 휩싸였을 때는 버둥대지 말고 파도에 몸을 맡기고 숨을 중지해 있으면 자연히 떠오른다.
                                <br>
                                - 파도가 크게 넘실거리는 곳은 깊고 파도가 부서지는 곳이나 하얀 파도가 있는 곳은 일반적으로 얕다. 또 색이 검은 곳은 깊고, 맑은 곳은 얕다.
                                <br>
                                - 간조와 만조는 대개 6시간마다 바뀌므로 간만 때의 조류변화 시간을 알아두는 것은 대단히 중요하다. 조류가 변할 때는 언제나 흐름이나 파도, 해저의 상태가 급격하게 변화하게 된다.
                                <br>
                                - 거센 파도에 밀려 나갔을 때에는 파도에 대항하지 말고 비스듬히 헤엄쳐 육지를 향한다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">2. 수초에 감겼을 때는</strong>
                                - 수초에 감겼을 때는 부드럽게 서서히 팔과 다리를 움직여 풀어야 하고 만약 물 흐름이 있으면 흐름에 맡기고 잠깐만 조용히 기다리면 감긴 수초가 헐거워지므로 이때 털어 버리듯이 풀고 수상으로 나온다.
                                <br>
                                - 놀라서 발버둥칠 경우 오히려 더 휘감겨서 위험에 빠질 수 있으므로 침착하게 여유를 가지고 호흡하며, 서서히 부드럽게 몸을 수직으로 움직이면서 꾸준히 헤어나오도록 한다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">3. 수영 중 경련이 일어났을 때는</strong>
                                - 경련은 물이 차거나 피로한 근육에 가장 일어나기 쉽고 수영하는 사람은 수영 중 그러한 상황에 항시 놓여 있으므로 흔히 발생할 수 있다.
                                <br>
                                - 경련이 잘 일어나는 부위는 발가락과 손가락이고 넓적다리 부위에서도 발생하며, 식사 후 너무 빨리 수영을 하였을 때에는 위경련이 일어날 수 있다.
                                <br>
                                - 경련이 일어나면 먼저 몸의 힘을 빼서 편한 자세가 되도록 하고(당황하여 벗어나려고 하면 더 심한 경련이 일어난다.) 경련 부위를 주무른다.
                                <br>
                                특히 위경련은 위급한 상황이므로 신속히 구급요청을 한다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">4. 하천이나 계곡물을 건널 때는</strong>
                                - 물결이 완만한 장소를 선정하여, 될 수 있으면 바닥을 끌듯이 이동한다.
                                <br>
                                - 시선은 건너편 강변 둑을 바라보고 건너야 한다.
                                <br>
                                - 이동 방향에 돌이 있으면 될 수 있으면 피해서 간다.
                                <br>
                                - 다른 물체를 이용 수심을 재면서 이동한다.(지팡이를 약간 상류 쪽에 짚는다)
                                <br>
                                - 물의 흐름에 따라 이동하되 물살이 셀 때는 물결을 약간 거슬러 이동한다.
                                <br>
                                - 건너편 하류 쪽으로 밧줄(로프)을 설치하고 한 사람씩 건넌다.
                                <br>
                                - 밧줄(로프)은 물 위로 설치한다. 밧줄이 없을 때 여러 사람이 손을 맞잡거나 어깨를 지탱하고 물 흐르는 방향과 나란히 서서 건넌다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">5. 물에 빠졌을 때는</strong>
                                - 흐르는 물에 빠졌을 때는 물의 흐름에 따라 표류하며 비스듬히 헤엄쳐 나온다.
                                <br>
                                - 옷과 구두를 신은 채 물에 빠졌을 때는 심호흡을 한 후 물속에서 새우등 뜨기 자세를 취한 다음 벗기 쉬운 것부터 차례로 벗고 헤엄쳐 나온다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">6. 침수ㆍ고립되었을 때는</strong>
                                - 부유물 등을 이용하며, 특히 배수구나 하수구에 빠지지 않도록 유의한다.
                                <br>
                                - 도로 중앙지점을 이용하고 될 수 있으면 침수 반대 방향이나 측면 방향으로 이동한다.
                                <br>
                                - 자기 체온 유지에 관심을 둬야 하며 무리한 탈출 행동을 삼간다.
                                <br>
                                - 가능한 모든 방법을 이용하여 구조 신호를 한다(옷이나 화염을 이용)
                                <br>
                                - 가능하다면 라디오나 방송을 청취하여 상황에 대처한다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">7. 보트를 탈 때는</strong>
                                - 보트에 들어갈 때는 배를 도크나 강변에 나란히 대놓고 안정시키고 배뒷 쪽에서 양손으로 뱃전을 잡고 배 위의 바닥으로 발을 천천히 옮긴다.
                                <br>
                                - 배 안에서 균형이 잡히면 중심을 낮춘 자세로 자리를 이동한다.
                                <br>
                                - 보트에서 나올 때는 보트에 들어갈 때와 반대로 하고 내릴 때 뒷발이 배를 강 쪽으로 밀지 않도록 유의한다.
                                <br>
                                - 물속으로 떨어졌을 때는 즉시 수면으로 올라와 배를 붙잡아야 하고 잠시 휴식한 후 배뒷 쪽으로 돌아와서 몸을 솟구쳐 상체부터 올려놓는다.
                                <br>
                                - 모든 승선자는 구명조끼를 착용해야 한다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">8. 계곡에서 야영지를 선택할 때는</strong>
                                - 계곡에서 야영지를 선택할 때는 물이 흘러간 가장 높은 흔적보다 위쪽에 있도록 하고, 대피할 수 있는 고지대와 대피로가 확보된 곳을 선정하며 또한 낙석 위험과 산사태 위험이 없는 곳이어야 한다.
                                　※ 물놀이 사고 및 안전사고 발생 때 즉시 119로 신고하시기 바랍니다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">9. 갯벌에서 물놀이를 할 때는</strong>
                                - 어민들이 갯벌 출입을 위해 만들어 놓은 진입로가 있는 경우에는 진입로를 이용해 출입하며, 진입로로부터 멀리 떨어진 곳은 출입하지 않는다.
                                <br>
                                - 갯벌에 갯골이 있는 경우 갯골을 넘어가지 않는다. 밀물시 갯골에 물이 먼저 차오르기 때문에 수심이 깊어져 넘어오지 못하는 경우가 있으며 갯골 주변의 갯벌은 물이 많이 머물고 있어 발이 빠지는 경우가 많으니 접근하지 않는다.
                                <br>
                                - 갯벌에는 절대로 어린이 혼자 들어가지 않도록 하며 어른도 혼자 들어가지 않는다.
                                <br>
                                - 갯벌에 발이 깊이 빠진 경우 빠지면 반대방향으로 엎드려 기어 나오며, 안내인의 도움을 받는다. 위급한 경우 119의 도움을 받는다.
                                <br>
                                - 갯벌에는 맨발로 들어가지 않는다. 발에 잘 맞는 장화를 착용하며 샌들을 착용할 때 반드시 양말을 착용한다. 갯벌에는 어패류의 패각 등이 있어 맨발로 출입하면 심한 상처를 입을 수 있다.
                                <br>
                                - 갯벌체험 시 되도록 긴소매의 옷을 착용하며 창이 넓은 모자로 자외선으로부터 보호하며 자외선 차단제를 발라 화상을 예방하고 식수를 준비해 탈수를 예방한다.
                                <br>
                                - 갯벌체험 시 갑자기 안개가 끼면 밀물 시간과는 관계없이 즉시 갯벌에서 나오고, 방향을 잃었을 때는 갯벌에 조류 때문에 생긴 물결모양 결(연흔)의 방향을 살펴보고 경사가 완만한 연흔의 직각 방향으로 나오면 육지 쪽으로 나올 수 있다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">10. 갯벌 해루질 사고예방 요령</strong>
                                - 구명조끼를 착용한다.
                                <br>
                                - 진입로로부터 멀리 떨어진 곳은 출입하지 않는다.
                                <br>
                                - 절대로 혼자 들어가지 않는다.
                                <br>
                                - 들물 시간을 확인하고 휴대폰 등에 알람을 설정하여 미리 대응할 수 있도록 한다.
                                <br>
                                - 갑자기 안개가 끼면 밀물 시간과는 관계없이 즉시 갯벌에서 나온다.
                                <br>
                                - 갯골을 넘어가지 않는다.
                                <br>
                                - 갯벌에 발이 깊이 빠진 경우 반대방향으로 엎드려 기어 나오며, 옆 사람의 도움을 받는다.
                                <br>
                                - 맨발로 들어가지 않는다.
                              </p>
                           </div> 
                        </div>
                    </div>
                </div>
    
    <!-- 행동요령 본문 -->
    <div id = "sec2">
        <h3 class="title_01">장소별 행동요령</h3>
        <ul class="tablist">
            <li class="on" style="width: 14%;">
                <a class="tabindexBtn" onclick="return false" title="선택됨">계곡</a>
            </li>
            <li style="width: 14%;">
                <a class="tabindexBtn" onclick="return false">저수지</a>
            </li>
            <li style="width: 14%;">
                <a class="tabindexBtn" onclick="return false">갯벌</a>
            </li>
            <li style="width: 14%;">
                <a class="tabindexBtn" onclick="return false">바다ㆍ해수욕장</a>
            </li>
            <li style="width: 14%;">
                <a class="tabindexBtn" onclick="return false">낚시터</a>
            </li>
            <li style="width: 14%;">
                <a class="tabindexBtn" onclick="return false">얼음(물)</a>
            </li>
            <li style="width: 14%;">
                <a class="tabindexBtn" onclick="return false">기타</a>
            </li>
        </ul>
    
                 <div class="tabarea">
                     <div class="tabmenu01 on">
                        <div class="detail">
                           <p>
                           <strong class="level4_title">1. 계곡에 들어가야 한다면(입수 전)</strong>
                    <h3>□ 미리 수온을 체크하고 천천히 들어가며, 다이빙은 절대 하지 않습니다.</h3>
                        &nbsp; ○ 얕고 불규칙한 수심에 의해 물속 바위에 부딪히거나 낮은 수온으로 인한 심장마비 등 사고위험이 큽니다.
                        <br>
                        &nbsp; ○ 수심이 깊은 장소라 하더라도 물속에 눈에 보이지 않는 소용돌이(와류)가 있을 수 있기 때문에 다이빙은 하지 않도록 합니다.
                        <br>
                        <br>
                        
                    <h3>□ 물의 깊이와 물살을 확인합니다.</h3>
                        &nbsp; ○ 관리자가 설치한 ‘수심제한선’이 있는지 확인합니다.
                        <br>
                        &nbsp; ○ 계곡물은 육안으로 그 깊이를 가늠할 수 없는 경우가 많아 위험하므로 들어갈 때 주의가 필요합니다.
                        <br>
                        &nbsp; ○ 물이 흐려서 깊이를 알 수 없거나, 폭포처럼 물거품이 보일 정도로 빠르게 흐르는 경우에는 물에 들어가지 않도록 합니다.
                        <br>
                        &nbsp; ○ 긴 나뭇가지를 활용하거나, 물 위로 떠다니는 나뭇잎이나 풀들을 관찰하여 수심이나 유속확인에 참고합니다.
                        <br>
                        <br>
                    
                    <h3>□ 기상조건과 함께 주변이 안전한지 확인합니다.</h3>
                        &nbsp; ○ 일기예보를 미리 확인하고(비가 올 경우 들어가지 않도록 함), 휴대폰으로 통신이 가능한 장소인지 확인합니다.
                        <br>
                        &nbsp; ○ 주변에 지자체나 소방서에서 설치한 구명튜브와 같은 안전 장비가 있는지, 어디에 있는지 미리 확인합니다.
                        <br>
                        &nbsp; ○ 비가 오면 계곡물이 순식간에 불어나 사고위험이 높으므로 비가 올 경우 즉시 물에서 나와 안전한 곳으로 잠시 피하고 기상상황을 지켜봅니다.
                        <br>
                        &nbsp; ○ 비가 내린 뒤라면 낙석과 산사태의 위험성이 있으므로 물놀이와 야영을 자제합니다.
                        <br>
                        <br>
                    
                    <h3>□ 미끄러짐 사고와 “머리”를 다치는 것을 유의해야 합니다.</h3>
                        &nbsp; ○ 계곡에서는 넘어지면서 자신의 의지와 관계없이 깊은 곳에 빠지는 경우가 많아 아쿠아슈즈 착용 등을 통해 미끄러짐 사고를 방지하도록 합니다.
                        <br>
                        &nbsp; ○ 바위에서 미끄러지거나 급류에 휩쓸릴 경우 뇌진탕으로 인한 사고가 많으므로 “머리”를 다치지 않도록 항상 조심합니다.
                           </p>
                           
                           <p>
                           <strong class="level4_title">2. 계곡에 빠졌을 때는(익수 시)</strong>
                    <h3>□ 당황하지 않고 가슴과 허리를 펴고 시선은 하늘을 응시하며 수면에 누워 물에 뜨는 데 집중합니다.</h3>
                        &nbsp; ○ 당황하여 몸부림 칠 경우 오히려 가라앉거나 지칠 가능성이 크기 때문에, 침착하게 체력을 아끼며 구조를 기다리도록 합니다.
                        <br>
                        <br>
                        
                    <h3>□ 몸이 떠내려갈 때는 흐르는 물살 반대방향(상류방향)이 아닌, 물의 흐름대로 떠내려가면서 가까운 물가(육지)를 향해 대각선 방향으로 이동합니다.</h3>
                        &nbsp; ○ 가능한, 다리를 떠내려가는 방향(하류)으로 하여 바위·나무 등으로부터 머리를 보호하고 충격에 대비합니다.
                        <br>
                        <br>
                        
                    <h3>□ 물길이 세지 않은 깊은 물웅덩이(沼)와 같은 곳에 빠졌을 때</h3>
                        &nbsp; ○ 당황하지 않고 최대한 양 팔과 다리를 벌려 누워 하늘을 보는 자세(누워뜨기 자세)를 취해 물에 가라앉지 않도록 합니다.
                        <br>
                        &nbsp; ○ 잠수에 자신이 있다면, 수심을 확인한 뒤 그대로 잠수하여 바닥을 차고(보빙동작) 수면 위로 떠올라 호흡을 유지하고, 누워서 떠 있거나 발차기 또는 보빙동작을 반복하여 얕은 쪽으로 나올 수 있습니다.
                           </p>
                        </div> 
                     </div>
                     
                      <div class="tabmenu02">
                    <div class="detail">
                        <p>
                            <strong class="level4_title">1.저수지 주변에 있다면</strong>
                            <h3>□ 저수지 주변에서는 혼자 다니지 않도록 합니다.</h3>
                                &nbsp; ○ 저수지는 행인이 없어 혼자 물에 들어갔다가 빠질 경우, 구조가 매우 어렵습니다.
                                <br>
                                &nbsp; ○ 부득이 입수 필요 시에는 안전보호구 착용 후 입수하도록 합니다.
                                <br>
                                <br>
                                
                            <h3>□ 실족에 유의하여 저수지 수면 근처로 가지 말아야 합니다.</h3>
                                &nbsp; ○ 특히, 안전펜스가 없는 저수지의 경우에는 산책 중 미끄러짐 등으로 물에 의도치 않게 빠질 수도 있어 조심해야 합니다.
                                <br>
                        </p>
                        
                        <p>
                            <strong class="level4_title">2. 저수지에 빠졌을 때는</strong>
                            <h3>□ 크게 소리 질러 주위 사람에게 알려야 합니다.</h3>
                                &nbsp; ○ 근처 인명구조함 장비를 이용하여 구조를 받거나, 소방서나 경찰서에 구조요청을 할 수 있도록 합니다.
                                <br>
                                &nbsp; ○ 동행이 있는 경우, 빠진 사람을 구하기 위해 섣불리 물 속에 뛰어들지 않아야 합니다. 대신 주변의 인명구조함 또는 긴 나뭇가지, 밧줄 등을 이용하여 구조를 시도해야 합니다.
                                <br>
                                <br>
                                
                            <h3>□ 당황하지 않고 숨을 참고 수면에 누워 물에 뜨는 데 집중합니다.</h3>
                                &nbsp; ○ 당황하여 몸부림칠 경우 오히려 가라앉거나 지칠 가능성이 크기 때문에, 침착하게 체력을 아끼며 구조를 기다리거나 천천히 탈출을 시도합니다.
                                <br>
                                &nbsp; ○ 주변에 도움을 받을 수 없는데 수영을 할 줄 모르는 경우, 물에 누워 뜬 채로 손만 움직여 육지로 천천히 이동합니다.
                                <br>
                                <br>
                            
                            <h3>□ 주위에 도움을 요청할 사람이 없는 경우, 주변 사물을 이용합니다.</h3>
                                &nbsp; ○ 저수지 내 구조물 또는 부유물(나무, 스티로폼 등)을 붙잡고 몸을 지지하며 물에 떠 있거나 탈출을 시도합니다.
                                <br>
                                &nbsp; ○ 주변에 도구가 없는 경우, 최대한 양 팔과 다리를 벌려 누워 하늘을 보는 자세를 취해 물에 가라앉지 않도록 합니다.
                                <br>
                                <br>
                        </p>
                    </div>
                </div><!-- tabmenu02 -->
                
                
                      <div class="tabmenu03">
                    <div class="detail">
                        <p>
                            <strong class="level4_title">1.갯벌에 들어가기 전에</strong>
                            <h3>□ 출입로를 잘 확인하고, 정해진 진입로를 통해 출입합니다.</h3>
                            &nbsp; ○ 갯골(갯벌 물이 빠지는 수로)에 접근하거나 넘어가지 않아야 합니다.
                            <br>
                            <br>
                            
                            <h3>□ 들어가기 전 미리 들물(밀물) 시간을 확인하며, 밀물 2시간 전에는 갯벌에 나가지 않도록 합니다.</h3>
                            &nbsp; ○ 절대 혼자 들어가지 않아야 합니다.
                            <br>
                            &nbsp; ○ 맨발로 들어가지 않도록 합니다.
                            <br>
                            <br>
                            <h3>□ 구명조끼를 꼭 착용하고, 가슴장화에 유의합니다.</h3>
                            <br>
                            
                            <strong class="level4_title">2. 갯벌에 빠졌을 때는</strong>
                            <h3>□ 갯벌에 있다가 갑자기 안개(해무)가 끼는 경우에는</h3>
                            &nbsp; ○ 밀물 시간과는 관계없이 즉시 갯벌에서 나와야 합니다.
                            <br>
                            &nbsp; ○ 휴대폰의 지도나 나침반 앱을 통해 육지로 빠져 나오도록 합니다.
                            <br>
                            &nbsp; ○ 나가는 방향을 잃었을 때는 갯벌에 조류 때문에 생긴 물결모양 결(연흔)의 방향을 살펴보고, 경사가 완만한 연흔의 직각 방향으로 나와야 육지 쪽으로 나올 수 있습니다.
                            <br>
                            <br>
                            
                            <h3>□ 갯벌에 발이 무릎 이하로 빠진 경우</h3>
                            &nbsp; ○ 무게중심 반대쪽 다리를 빼내어 무릎을 꿇은 뒤 나머지 발도 빼내어 무릎을 꿇은 자세로 기어서 빠르게 빠져나오도록 합니다.
                            <br>
                            <br>
                            
                            <h3>□ 갯벌에 발이 무릎 이상으로 깊이 빠진 경우</h3>
                            &nbsp; ○ 무릎 이상 발이 빠진 경우, 다리를 앞뒤로 움직여 공간을 만든 다음, 등을 대고 누워 한 다리씩 뽑아내고 엎드린 포복자세로 기어 나오도록 합니다.
                            <br>
                            <br>
                            
                            <h3>□ 이탈이 어렵거나 고립된 경우, 신속히 119 구조요청을 하도록 합니다.</h3>
                            &nbsp; ○ 자신의 위치정보가 바로 전송되는 '해로드 앱'으로 SOS 신고를 할 수 있습니다.
                            <br>
                            &nbsp; ○ 구조를 기다릴 때는 정확한 구조요청 장소 표시를 위해 호루라기, 랜턴, 휴대폰 등을 이용하고, 물에 빠지거나 젖었을 때는 구조 전까지 체온유지(보온)가 중요합니다.
                            <br>
                            <br>
                        </p>
                    </div>
                </div><!-- tabmenu03 -->
                
                
                      <div class="tabmenu04">
                    <div class="detail">
                        <p>
                            <strong class="level4_title">1.바다ㆍ해수욕장에 들어가기 전에(입수 전)</strong>
                            <h3>□ 이상 파도가 있어 보인다면 물에 들어가지 않아야 합니다.</h3>
                            &nbsp;○ 너울(사람을 끌고 가는 파도)＊, 이안류(거꾸로 치는 파도)＊＊ 등 물놀이 시 위험할 수 있는 이상파도가 있는지 잘 살펴봅니다.<br>
                            &nbsp;＊먼 바다에서 잔잔하게 밀려오다 수심이 얕은 해안에서 갑자기 솟구치는 파도<br>
                            &nbsp;＊＊수면 아래에서 바다 쪽으로 나가는 강한 역류성 흐름(최고 3m/sec)<br><br>
                            
                            <h3>□ 조류가 변할 때는 언제나 흐름이나 파도, 해저의 상태가 급격하게 변화하기 때문에 조류변화시간을 파악해 둡니다.</h3>
                            &nbsp;○ 간조와 만조는 대개 6시간마다 바뀌므로, 간만 때의 조류변화시간을 미리 알아두는 것이 필요합니다.(바다타임 등 조수타임 앱 설치)<br>
                            &nbsp;○ 아이들이 위험해지지 않도록 늘 신경써야 합니다.<br><br>
                        </p>
                        <p>
                            <strong class="level4_title">2. 바다·해수욕장에 빠졌다면(익수 시)</strong>
                            <h3>□ 당황하지 않고 구조대 도착 이전까지 견디는 것이 가장 중요합니다.</h3>
                            <br>
                            <h3>□ 파도에 휩쓸렸다면</h3>
                            &nbsp;○ 버둥대지 말고 파도에 몸을 맡기고 숨을 깊이 마신 상태로 숨을 참고 있으면 자연히 떠오릅니다.<br>
                            &nbsp;○ 큰 파도가 덮칠 때는 깊이 잠수할수록 안전합니다.<br>
                            &nbsp;○ 거센 파도에 밀려 나갔을 때에는, 파도에 대항하지 말고 비스듬히 헤엄쳐 모래나 자갈이 있는 육지를 향해야 합니다.<br><br>
                            
                            <h3>□ 이안류를 만났다면</h3>
                            &nbsp;○ 이안류에 휩쓸려 계속 먼 바다로 떠내려갈 때는 물살을 거슬러 다시 육지로 오려고 필사적으로 수영하기보다, 물살에 표류하여 이안류의 흐름이 없는 곳에서 대각선(해변의 45도)이나 직각 방향 해안 쪽으로 헤엄쳐 나옵니다.<br>
                            &nbsp;○ 튜브나 구명조끼를 착용하고 있고, 수영을 하지 못한다면 힘을 다해 빠져나오기보다는 흐름에 따라 표류하면서 점차 물살 밖으로 빠져나온 후 해안가로 이동하는 것이 바람직합니다.<br><br>
                            
                            <h3>□ 수초에 감겼을 때는</h3>
                            &nbsp;○ 놀라서 발버둥 칠 경우, 오히려 더 휘감겨서 위험에 빠질 수 있으므로 침착하게 여유를 가지고 호흡하며, 서서히 부드럽게 몸을 수직으로 움직이면서 꾸준히 헤엄쳐야 합니다.<br>
                            &nbsp;○ 서서히 팔과 다리를 움직여 풀어야 하고, 만약 물 흐름이 있으면 흐름에 맡기고 조용히 기다리면 감긴 수초가 헐겁게 되므로 이때 털어버리듯이 풀고 수상으로 나오도록 합니다.<br><br>

                            <h3>※ 해파리에 쏘였을때 대처방법</h3>
                            <h3>□ 해파리의 가시가 피부에 박혀있기 때문에 손으로 문지르거나 만지면 안됩니다.</h3>
                            &nbsp;① 우선, 바닷물(또는 생리 식염수)로 쏘인 부위를 충분히 세척해서 가시를 제거해야 한다.<br>
                            &nbsp;② 핀셋, 조개껍질, 카드나 칼의 무딘 면으로 긁어 남아있는 가시를 제거한다.<br>
                            &nbsp;③ 원칙적으로 몸이 붓거나 열이 나는 경우나, 어느정도 진정이 된 경우, 냉찜질을 하는 것이 통증 완화에 도움이 되지만, 사람 체질, 해파리 종류에 따라 찜질 방법(냉·온)을 특정하기 어려워, 세척 후 가까운 병원을 방문한다.<br>
                            &nbsp;④ 독소가 강한 해파리는 위험하기 때문에 통증이 심해지거나 온몸이 아픈 경우 병원으로 가서 의사의 치료를 받아야 한다.<br><br>
                            &nbsp;○ 해파리가 보이면 즉시 물 밖으로 나온다.<br>
                            &nbsp;○ 죽은 해파리도 독침이 박힐 수 있으므로 신발을 착용하고 해변을 걷는다.<br>
                            &nbsp;○ 피부에 달라붙은 해파리는 젓가락이나 장갑을 끼고 떼어낸다.<br><br>
                        </p>
                    </div>
                </div><!-- tabmenu04 -->
                
                      <div class="tabmenu05">
                    <div class="detail">
                        <p>
                            <strong class="level4_title">1.낚시터에 입장할때</strong>
                            <h3>□ 미리 구명설비를 확인하고 구명조끼를 착용하도록 합니다.</h3>
                            <h3>□ 주변 날씨를 미리 확인합니다.</h3>
                            <h3>□ 정해진 낚시터 이외의 장소(갯바위, 테트라포드, 저수지 등)에서는 낚시를 하지 않도록 합니다.</h3>
                        </p>
                        <p>
                            <strong class="level4_title">2. 낚시터에 빠졌을때</strong>
                            <h3>□ 낚시터에 빠졌다면, 당황하지 않고 구조대 도착 이전까지 견디는 것이 가장 중요합니다.</h3>
                            &nbsp;○ 온몸에 힘을 빼고 가슴에 숨을 채운 채로 뒤로 자연스럽게 누우면 몸은 물에 살짝 잠겨있어도 얼굴은 물 밖으로 나오기 때문에 호흡을 유지할 수 있습니다.<br><br>
                            <h3>□ 풍랑·해일이 있는 경우에는</h3>
                            &nbsp;○ 거센 파도에 밀려 나갔을 때는 육지로 나오려고 하면 파도에 의해 바위 등에 충돌위험이 발생할 수 있으므로 오히려 육지에서 멀리 벗어나 생존수영을 하며 체력을 아끼도록 합니다.<br>
                            &nbsp;○ 수영이 가능한 경우, 파도에 대항하지 말고 비스듬히 헤엄쳐 육지를 향해 나아가도록 합니다.<br>
                        </p>
                    </div>
                </div><!-- tabmenu05 -->
                
                
                      <div class="tabmenu06">
                    <div class="detail">
                        <p>
                            <strong class="level4_title">1. 얼음주변에 있을 때</strong>
                            <h3>□ 결빙기(12월~1월 초), 해빙기(2월 중순~3월 초) 시기에는 절대 들어가서는 안됩니다.</h3>
                            &nbsp;○ 특히, 2~3월은 얼음이 녹아내리는 시기로 겉으로 단단해 보이는 얼음이어도 물에 빠지기 쉬우므로 절대 들어가지 않도록 합니다.<br>
                            <br>                                        
                            <h3>□ 얼음 두께와 관련하여 아래 사항을 유의토록 합니다.</h3>
                            &nbsp;○ 강변에서 강의 중심부로 갈수록 얼음 두께가 더 얇아지기 때문에 함부로 강 중심부로 나아가지 않아야 합니다.<br>
                            &nbsp;○ 얼음의 강도는 소리와 색 등으로 어느정도 참고할 수 있습니다.<br>
                            &nbsp;※ 얼음은 결빙 상태에 따라 다르나, 일반적으로 최소 10cm이상 되어야 모여있지 않은 소수인원(1~2명)의 무게를 버틸 수 있음<br>
                            ①소리 : 얼음을 두드렸을 때 돌을 두드리는 느낌과 단단한 소리(명쾌하고 높은 음)가 나면 두꺼운 얼음입니다. 그렇지 않고 퍽퍽하는 소리(둔탁하고 낮은 음)와 얼음이 무른 것처럼 느낌이 들면 절대 들어가면 안됩니다.<br>
                            ②색 : 맑은 색의 얼음일수록 단단합니다. 불투명한 얼음은 눈이 켜켜이 얼어붙은 형태이므로 얼음에 빈 공간이 생기고 얼음이 약한 것이므로 조심해야 합니다.<br><br>
                        </p>
                        <p>
                            <strong class="level4_title">2. 얼음 위에 있을 때</strong>
                            <h3>□ 얼음을 밟았을 때 스폰지를 밟는 느낌처럼 무른 느낌이 들거나 얼음에 금이 가는 경우에는</h3>
                            &nbsp;○ 방금 왔던 방향으로 몸을 돌린 후, 천천히 위험지역을 탈출합니다.<br>
                            &nbsp;○ 얼음에 금이 가서 갈라질 위험이 있으면 바닥에 천천히 그리고 안전하게 드러누워 체중을 넓게 분산시키고, 몸을 통나무 굴리듯이 옆으로 굴리면서 위험지역을 탈출합니다.<br>
                            <br>
                            <h3>□ 절대 얼음 밑으로 들어가지 않도록 합니다. (잠수하지 않기)</h3><br>
                            <h3>□ 빠진 경우 무리하게 얼음 위로 올라오려고 하지 않아야 합니다.</h3><br>
                            <h3>□ 얼음물에 오래 있으면 저체온증이 올 수 있으니 주위에 도움을 요청할 사람이 없는 경우, 수영하듯 발로 물장구를 쳐서 몸을 띄우고 얼음판 위로 올라갈 시도를 합니다.</h3>
                            <br><br>
                        </p>
                    </div>
                </div><!-- tabmenu06 -->
                
                
                      <div class="tabmenu07">
                    <div class="detail">
                        <p>
                            <strong class="level4_title">1. 강하〮천에서 다슬기를 채취하고자 할 경우</strong>
                            <h3>□ 수심이 깊지 않은 곳이라도 구명조끼를 반드시 착용하도록 합니다.</h3>
                            <br>
                            <h3>□ 물 속을 가까이 볼 경우, 굴절로 인해 정확한 수심파악이 어렵습니다.</h3>
                            <br>
                            <h3>□ 허리를 숙이거나 주저앉아서 채취하다 일어설 때 어지럼증으로 인한 사고를 예방하기 위해 고개를 천천히 들면서 일어나도록 합니다.</h3>
                            <br>
                            <h3>□ 모자, 팔토시, 자외선 차단제 등으로 자외선을 차단하도록 합니다.</h3>
                            <br>
                            <h3>□ 가슴장화를 착용하지 않도록 합니다.</h3>
                            &nbsp;○ 가슴장화 착용 시 물에 빠졌을 때 옷 안으로 물이 들어와 몸이 무거워져 다시 일어나기 어려워집니다.<br>
                            <br>
                            <h3>□ 미끄러짐에 유의하고, 밤에 다슬기를 채취하지 않도록 합니다.</h3>
                            <br>
                            <h3>□ 두 명 이상 함께 다니도록 합니다.</h3>
                            <br>
                            <br>
                        </p>
                        <p>
                            <strong class="level4_title">2. 테트라포드에서 실족상황 발생 시</strong>
                            <h3>□ 테트라포드에 빠지게 되었다면, 당황하지 않고 구조대가 도착할 때까지 체온유지를 하는 것이 가장 중요합니다.</h3>
                            &nbsp;○ 테트라포드는 높고 미끄러워 붙잡고 올라올 수 없습니다. 무모하게 올라 오려다 찰과상이나 절상이 생기면 삼투압으로 인하여 출혈이 멈추지 않아 과다출혈로 위험에 이를 수 있어 주의해야 합니다.<br>
                            &nbsp;○ 먼저 휴대폰으로 해로드 앱이나 119로 신고하고 가까운 주변에 사람이 있을 경우 소리쳐 도움을 요청하고 구조대가 올 때까지 체온유지를 합니다.<br>
                            &nbsp;○ 파도로 인하여 테트라포드에 부딪힐 수 있으므로 상처가 나지 않도록 조심해야 합니다.<br>
                            <br>
                        </p>
                    </div>
                </div><!-- tabmenu07 -->
                 </div>
                 </div>
        
    <h4 class="level2_title">국민행동요령</h4> 
    <h3 class="title_02">물놀이 안전</h3> 
    <div>
    <ul class="contextIndent_twoDepList">
        <li style="">
            <img id="img10" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="행정안전부 로고"/>
        </li>
    </ul>
    </div>
    <br>
    <br>
<h4 class="level3_title">• 물놀이 전</h4>
        <br/>
        <div id="signature_div" style="font-size:10pt;float: left; width:35%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;text-align:center;">
                                <img id="img03" src="" class="unload_rsc" alt="물에 들어가기 전 준비운동 및 구명조끼 착용 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">물에 들어가기 전에는 충분한 준비운동을 하고 구명조끼 착용 후 들어갑니다.</td>
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
                                <img id="img04" src="" class="unload_rsc" alt="어린이가 물놀이 중 보호자와 함께하는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">어린이 물놀이는 반드시 보호자와 함께해야 합니다.</td>
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
                                <img id="img05" src="" class="unload_rsc" alt="안전구역이탈금지, 음주수영금지 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">해수욕장, 하천 등에서는 안전구역을 벗어나지 않도록 주의하고 음주 후 수영은 절대 하지 말아야 합니다.</td>
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
                                <img id="img06" src="" class="unload_rsc" alt="어린이가 안전요원의 안내에 따라 물놀이를 하는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">안전요원의 안내에 따라 물놀이 합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br/>
        <br/>
        <h4 class="level3_title">• 물놀이 사고 대처요령</h4>
        <br />
        <div id="signature_div" style="font-size:10pt;float: left;width:30%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList">
                            <li style="width:318px;">
                                <img id="img07" src="" class="unload_rsc" alt="익수사고 발생에 따른 구조신고 중인 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">익수사고 발생 시 주위에 소리쳐 알리고(즉시 119에 신고) 구조하려고 함부로 물속에 뛰어 들지 않아야 합니다.</td>
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
                            <li style="width:318px;text-align:center;">
                                <img id="img08" src="" class="unload_rsc" alt="구명안전장비를 통해 익수자를 구조하는 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">수영에 자신이 있더라도 물놀이 현장에 비치된 안전장비 (구명환, 구명조끼, 구명 로프 등)를 활용하여 안전하게 구조합니다.</td>
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
                                <img id="img09" src="" class="unload_rsc" alt="심폐소생술중인 이미지"/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">물에 빠진 사람을 구조할 때에는 인공호흡이나 심폐소생술 등 응급처치를 실시합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br/>
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 재난안전점검과 감영규 (044-205-4248)</strong>
        </div>
        </div>
    </div>
</div>

<!-- Footer -->
<!--  <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>
</body>
</html>