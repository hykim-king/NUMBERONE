
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

<div class="content">

    <div class="level1_titleWrap">
        <h2 class="level1_title">사회재난시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">화재</h3>

        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>

    <h4 class="title_02">화재발생시 국민행동요령</h4>
    <div class="know_how_w">
        
        <ul class="contextIndent_oneDepList">
        <img id="img02" class="prevent_img05 unload_rsc" alt="" src=""/>
        <div class="ir">
        <h3>국민행동요령 화재</h3><span>소방청</span>
        <h4>화재대비</h4>
        <span>안전을 위한 사전점검과 대피훈련을 해야 합니다.</span>
            <dl>
                <dt>1. 사전점검</dt>
                <dd><h5>눈으로는</h5><span>사용하지 않는 전열기국 코드 확인</span><span>가스레인지 중간벨브 잠금확인</span></dd>
                <dd><h5>귀로는</h5><span>평소에 나지 않던 이상한 소리 확인</span></dd>
                <dd><h5>코로는</h5><span>타는 냄새 확인</span></dd>
                <dd><h5>손으로는</h5><span>만져보거나 두들겨 보거나</span></dd>
                <dd><h5>행동으로는</h5><span>조리 중에는 자리를 비우지 않습니다.</span><span>난방기구 등 전열기구 사용시 주변에 탈 수 있는 물건을 두지 않습니다.</span></dd>
            </dl>
            <dl>
                <dt>2. 대피훈련 (무엇을 해야 하는지 알고 신속히 움직인다면 소중한 인명과 재산을 보호할 수 있습니다.)</dt>
                <dd>배워보자! 소화기 사용법, 표시해보자! 2곳이상의 비상통로, 찾아보자 대피장소, 막아보자! 문틈, 전화해보자! 우리가족, 정해보자! 만날장소, 어디있을까? 경량칸막이</dd>
            </dl>
            <span>가족 모두 모여서 평면도를 간단하게 그리고 표시해봅시다.</span>
            <h4>챙겨야할 내용 Tip</h4>
            <ul>
            <li>대피방법과 대피해서 만나는 장소 사전약속</li>
            <li>대피할때 가져가야할 중요물건 목록작성과 챙길 사람선정</li>
            <li>비상연락 전화번호 및 연락해야 할 대상 선정</li>
            <li>문틈을 막아야할 경우 청테이프 또는 수건</li>
            <li>외부 대피 시 사용할 수건등 대피에 사용할 물건</li>
            <li>긴급 대피한 경우 만날 장소와 비상연락망</li>
            </ul>
            <span>옥상출입문은 항상 열려있는지, 자동개폐장치가 설치되어 있는지 확인합니다.</span>
            <span>방문을 닫아두면 불과 연기가 퍼지는 속도를 늦출 수 있습니다.</span>
        </div>
        <img id="img03" class="prevent_img05 unload_rsc" alt="" src=""/>
        <div class="ir">
            <h3>국민행동요령 화재</h3><span>소방청</span>
            <h4>화재대처-화재가 울릴때</h4>
            <h5>1. 주변사람에게 알립니다.</h5>
                <p>자고 있을때 화재 경보가 울리면 불이 났는지 확인하려 하기 보다는 소리를 질러 주변 사람에게 알립니다.</p>
            <h5>2. 대피방법을 결정합니다.</h5>
                <p>- 손등으로 출입문 손잡이를 만져보아 손잡이가 따뜻하거나 뜨거우면 문 반대쪽에 불이 난 것이므로 문을 열지 않습니다.</p>
                <p>- 연기 들어오는 방향과 출입문 손잡이를 만져 보아 계단으로 나갈지 창문으로 구조를 요청할지 결정합니다.</p>
            <h5>3. 신속히 대피합니다.</h5>
                <p>- 대피할 때는 엘리베이터를 절대 이용하지 않고 계단을 통하여 지상으로 안전하게 대피합니다.</p>
                <p>- 대피가 어려운 경우에는 창문으로 구조요청을 하거나 대피공간 또는 경량칸막이를 이용하여 대피합니다.</p>
            <h5>4. 119로 신고합니다.</h5>
                <p>- 안전하게 대피한 후 119에 신고합니다.</p>
                <p>- 휴대폰이 있어서 신고가 가능하다면 속히 해주시고 신고하느라 대피시간을 놓치지 않도록 합니다.</p>
            <h5>5. 대피 후 인원을 확인합니다.</h5>
                <p>- 놀이터 등 사전에 약속한 안전한 곳으로 대피한 후 인원을 확인합니다.</p>
                <p>- 주변에 보이지 않는 사람이 있다면 출동한 소방관에게 알려줍니다.</p>
        </div>

        <div class="ir">
            <h3>국민행동요령 화재</h3><span>소방청</span>
            <h4>화재대처-불을 발견했을때</h4>
            <h5>1. 연기가 발생하거나 불이 난 것을 보았을때</h5>
                <p>불이 난 것을 발견하면 불이야라고 소리치거나 비상벨을 눌러 주변에 알리도록 합니다.</p>
            <h5>2. 불을 끌 것인지 대피할 것인지 판단합니다.</h5>
                <p>- 불길이 천정까지 닿지 않은 작은 불이라면 소화기나 물양동이 등을 활요하여 신속히 끄도록 합니다.</p>
                <p>- 불길이 커져서 대피가 어려운 경우 젖은 수건 또는 담요를 활용하여 계단을 통해 밖으로 대피합니다.</p>
                <p>- 세대 밖으로 대피가 어려운 경우 경량칸막이를 이용하여 이웃집으로 대피하거나 완강기를 이용하여 창문으로 나가는 방법, 실내대피 공간으로 대피하였다가 불이 꺼진 후 나오는 방법 등을 활용합니다.</p>
                <p>비상구 활용, 완강기 활용, 경량칸막이 활용, 실내대피공간 활용</p>
                <p>1992년 10월 이전에 허가받아 지어진 아파트는 피난시설과 기구가 없으므로 주의하여야 하며 안전을 위하여 설치를 권장하고 있습니다.</p>
            <h5>알아둡시다! 완강기 사용법</h5>
                <p>1. 지지대 고리에 완강기 고리를 걸고 잠근다.</p>
                <p>2. 지지대를 창밖으로 밀고 릴(줄)을 던진다.</p>
                <p>3. 완강기 벨트를 가슴높이까지 걸고 조인다.</p>
                <p>4. 벽을 짚으며 안전하게 내려간다.</p>
            <h5>완강기 통 안의 구성품을 먼저 확인합니다.</h5>
                <p>1. 지지대 고리에 완강기 고리를 걸고 잠근다.</p>
                <p>2. 지지대를 창밖으로 밀고 릴(줄)을 던진다.</p>
                <p>3. 완강기 벨트를 가슴 높이까지 걸고 조인다.</p>
                <p>4. 벽을 짚으며 안전하게 내려간다.</p>
        </div>

        <div class="ir">
            <h3>국민행동요령 화재</h3><span>소방청</span>
            <h4>화재진압</h4>
            <h5>소화기 사용법</h5>
                <p>1. 안전핀을 뽑니다.</p>
                <p>2. 노즐을 잡고 불쪽을 향한다.</p>
                <p>3. 손잡이를 움켜쥔다.</p>
                <p>4. 분말을 골구루 쏜다.</p>
            <h5>실내에서 사용할 때는 밖으로 대피 할 때를 대비하여 문을 등지고</h5>
                <p>1. 소화기를 가져와서 몸통을 단단히 잡고 안전핀을 뽑니다.</p>
                <p>2. 노즐을 잡고 불쪽을 향해 가까이 이동한다.</p>
                <p>3. 손잡이를 꽉 움켜쥔다.</p>
                <p>4. 분말이 골고루 불을 덮을 수 있도록 쏩니다.</p>
            <h5>소화전 사용법</h5>
                <p>1. 문을연다.</p>
                <p>2. 호스를 빼고 노즐을 잡는다.</p>
                <p>3. 벨브를 돌린다.</p>
                <p>4. 불을 향해 쏜다.</p>
            <h5>2인 1조로 사용할 경우</h5>
                <p>1. 2명 중 1명이 먼저 소화전함의 문을 열고 호스와 노즐이 연결되어 있는지 확인한 후</p>
                <p>2. 호스를 밖으로 꼬이지 않도록 불이 난 곳까지 길게 늘어뜨린 후 노즐(관창)을 잡고 방수자세를 취한다.</p>
                <p>3. 다른 한사람이 밸브를 돌려 물이 나오는 것을 확인 한 후 뛰어가서 호스를 잡는 것을 도와줍니다.</p>
                <p>4. 노즐의 끝을 돌려 물의 양을 조절해가면 불을 끕니다.</p>
            <h5>옷에 불이 붙었을 때</h5>
                <p>1. 멈춘다</p>
                <p>2. 눈과 코와 입보호</p>
                <p>3. 엎드린다</p>
                <p>4. 뒹군다</p>
            <h5>얼굴 화상방지와 연기가 폐로 들어가지 않도록</h5>
                <p>1. 옷에 불이 붙었을 때는 하던 일을 멈추고</p>
                <p>2. 얼굴(눈,코,입)에 화상을 입지 않도록 두손으로 감싸도록 합니다.</p>
                <p>3. 바닥에 엎드린 후</p>
                <p>4. 몸을 뒹굴어서 불이 꺼지도록 합니다.</p>
        </div>

        <div class="ir">
            <h3>국민행동요령 화재</h3><span>소방청</span>
            <h4>소방관이 전하는 안전상식</h4>
            <h5>119신고절차</h5>
                <p>본인의 위치(주소)> 현대상화 > 부상여부> 상황요원 안내에 따라 행동</p>
                <dl>
                <dt>일반전화</dt>
                <dd>1. 수화기를 들어 발신을 확인</dd>
                <dd>2. 순서대로 119숫자를 누르기</dd>
                <dd>3. 소방대원의 질문에 대답</dd>
                </dl>
                <dl>
                <dt>119 휴대전화</dt>
                <dd>1. 119숫자를 누르기</dd>
                <dd>3. 소방대원의 질문에 대답</dd>
                </dl>
                <dl>
                <dt>www.119.go.kr 인터넷</dt>
                <dd>1. 인터넷 접속</dd>
                <dd>2. 신고하기 버튼 누르기</dd>
                <dd>3. 성명 등 필수인적사항 기록</dd>
                <dd>4. 사고개요 정확히 기록</dd>
                <dd>5. 등록여부 확인</dd>
                </dl>
                <dl>
                <dt>긴급버튼 공중전화</dt>
                <dd>1. 수화기 들기</dd>
                <dd>2. 긴급버튼(적색)누르기</dd>
                <dd>3. 119숫자 누르기</dd>
                <dd>4. 소방대원의 질문에 대답</dd>
                </dl>
            <h5>연기를 피해 대피하는 자세(대류현상에 따라 뜨거운 연기는 천장으로 올라가고 차가운 공기는 아래로 내려 옵니다.)</h5>
                <p>1. 손수건, 옷 등을 이용하여 호흡기(코와 입)보호한다</p>
                <p>2. 자세를 낮춘다</p>
                <p>3. 다른손으로는 벽을 짚는다</p>
                <p>4. 한 방향으로 신속하게 밖으로 대피한다</p>
            <h5>4분의 기적, 심폐소생술(심폐소생술은 외우기 쉽도록 4단계 절차로 기억합니다.)</h5>
                <p>1. 반응확인</p>
                <p>2. 119신고 및 AED 요청</p>
                <p>3. 가슴 압박 30회</p>
                <p>4. 인공호흡 2회</p>
            <h5>알아 둡시다! 은영중에 나를 지켜주고 있는 소방시설</h5>
                <p>제연설비</p>
                <p>화재감지기</p>
                <p>스프링쿨러</p>
                <p>주방용자동소화기</p>
        </div>
    </div>

    <h4 class="level2_title">국민행동요령</h4> 
    <h4 class="title_02" style="">화재</h4>
    <div>
    <ul class="contextIndent_twoDepList">
        <li style="">
            
        </li>
    </ul>
    </div>
    <br>
    <h4 class="title_02" style="">화재가 울릴 때</h4>
    <br>
    <h4 class="title_03" style="">1. 주변 사람에게 알립니다.</h4>
<!--    <br> -->
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 자고 있을 때 화재경보가 울리면 불이 났는지 확인하려고 하기보다는 소리를 질러 주변 사람에게 알립니다.</strong>
    
    <h4 class="title_03" style="">2. 대피방법을 결정합니다.</h4>
<!--    <br> -->
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 손등으로 출입문 손잡이를 만져보아 손잡이가 따뜻하거나 뜨거우면 문 반대쪽에 불이 난 것이므로 문을 열지 않습니다.<br>- 연기 들어오는 방향과 출입문 손잡이를 만져보아 계단으로 나갈지 창문으로 구조를 요청할지 결정합니다</strong>
    
    <h4 class="title_03" style="">3. 신속히 대피합니다.</h4>
<!--    <br> -->
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 대피할 때는 엘리베이터를 절대 이용하지 않고 계단을 통하여 지상으로 안전하게 대피합니다.<br>- 대피가 어려운 경우에는 창문으로 구조요청을 하거나 대피공간 또는 경량칸막이를 이용하여 대피합니다.</strong>
    
    <h4 class="title_03" style="">4. 119로 신고합니다.</h4>
<!--    <br> -->
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img11" src="" class="unload_rsc" alt="안전하게 대피한 후 119에 신고합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 안전하게 대피한 후 119에 신고합니다.<br>- 휴대폰이 있어서 신고가 가능하다면 속히 해주시고 신고하느라 대피시간을 놓치지 않도록 합니다.</strong>
    
    <h4 class="title_03" style="">5. 대피 후 인원을 확인합니다.</h4>
<!--    <br> -->
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img12" src="" class="unload_rsc" alt="놀이터 등 사전에 약속한 안전한 곳으로 대피한 후 인원을 확인합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 놀이터 등 사전에 약속한 안전한 곳으로 대피한 후 인원을 확인합니다.<br>- 주변에 보이지 않는 사람이 있다면 출동한 소방관에게 알려줍니다.</strong>
    
    <h4 class="title_01" style="">화재대처</h4>
    <br>
    <h4 class="title_02" style="">불을 발견했을 때</h4>
    <br>
    <h4 class="title_03" style="">1. 연기가 발생하거나 불이 난 것을 보았을 때</h4>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img13" src="" class="unload_rsc" alt="불이 난 것을 발견하면 “불이야!”라고 소리치거나 비상벨을 눌러 주변에 알리도록 합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 불이 난 것을 발견하면 “불이야!”라고 소리치거나 비상벨을 눌러 주변에 알리도록 합니다.</strong>
    
    <h4 class="title_03" style="">2. 불을 끌 것인지 대피할 것인지 판단합니다.</h4>
    <br>
    <strong class="level4_title">- 불길이 천장까지 닿지 않은 작은 불이라면 소화기나 물양동이 등을 활용하여 신속히 끄도록 합니다.<br>- 불길이 커져서 대피해야 할 경우 젖은 수건 또는 담요를 활용하여 계단을 통해 밖으로 대피합니다.<br>- 세대 밖으로 대피가 어려운 경우 경량칸막이를 이용하여 이웃집으로 대피하거나 완강기를 이용하여 창문으로 나가는 방법, 실내대피 공간으로 대피하였다가 불이 꺼진 후 나오는 방법 등을 활용합니다.</strong>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img14" src="" class="unload_rsc" alt="비상구 활용"/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">비상구 활용</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img15" src="" class="unload_rsc" alt="완강기 활용"/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">완강기 활용</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img16" src="" class="unload_rsc" alt="경량칸막이 활용"/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">경량칸막이 활용</strong>
    
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img17" src="" class="unload_rsc" alt="실내대피공간 활용"/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">실내대피공간 활용</strong>
    
    <br>
        <h4 class="level3_title" style="">※ 1992년 10월 이전에 허가받아 지어진 아파트는 피난시설과 기구가 없으므로 주의하여야 하며 안전을 위하여 설치를 권장하고 있습니다.</h4>
    <br>
    <br>
        <h4 class="title_02" style="">알아둡시다! 완강기 사용법</h4>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img18" src="" class="unload_rsc" alt="1. 지지대 고리에 완강기 고리를 걸고 잠근다."/>
            </li>
        </ul>
    </div>
    <strong class="title_03">1. 지지대 고리에 완강기 고리를 걸고 잠근다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img19" src="" class="unload_rsc" alt="2. 지지대를 창밖으로 밀고 릴(줄)을 던진다."/>
            </li>
        </ul>
    </div>
    <strong class="title_03">2. 지지대를 창밖으로 밀고 릴(줄)을 던진다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img20" src="" class="unload_rsc" alt="3. 완강기 벨트를 가슴 높이까지 걸고 조인다."/>
            </li>
        </ul>
    </div>
    <strong class="title_03">3. 완강기 벨트를 가슴 높이까지 걸고 조인다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img21" src="" class="unload_rsc" alt="4. 벽을 짚으며 안전하게 내려간다."/>
            </li>
        </ul>
    </div>
    <strong class="title_03">4. 벽을 짚으며 안전하게 내려간다.</strong>
    <br>
        <h4 class="title_01" style="">화재진압</h4>
    <br>
    <br>
        <h4 class="title_02" style="">소화기 사용법</h4>
    <br>
    <br>
        <h4 class="title_03" style="">실내에서 사용할 때는 밖으로 대피할 때를 대비하여 문을 등지고</h4>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img22" src="" class="unload_rsc" alt="1. 소화기를 가져와서 몸통을 단단히 잡고 안전핀을 뽑는다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">1. 소화기를 가져와서 몸통을 단단히 잡고 안전핀을 뽑는다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img23" src="" class="unload_rsc" alt="2. 노즐을 잡고 불쪽을 향해 가까이 이동한다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">2. 노즐을 잡고 불쪽을 향해 가까이 이동한다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img24" src="" class="unload_rsc" alt="3. 손잡이를 꽉 움켜쥔다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">3. 손잡이를 꽉 움켜쥔다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img25" src="" class="unload_rsc" alt="4. 분말이 골고루 불을 덮을 수 있도록 쏜다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">4. 분말이 골고루 불을 덮을 수 있도록 쏜다.</strong>
    
    <br>
        <h4 class="title_03" style="">2인 1조로 사용할 경우</h4>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img26" src="" class="unload_rsc" alt="1. 2명 중 1명이 먼저 소화전함의 문을 열고 호스와 노즐이 연결되어 있는지 확인한 후"/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">1. 2명 중 1명이 먼저 소화전함의 문을 열고 호스와 노즐이 연결되어 있는지 확인한 후</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img27" src="" class="unload_rsc" alt="2. 호스를 밖으로 꼬이지 않도록 불이 난 곳까지 길게 늘어뜨린 후 노즐(관창)을 잡고 방수자세를 취한다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">2. 호스를 밖으로 꼬이지 않도록 불이 난 곳까지 길게 늘어뜨린 후 노즐(관창)을 잡고 방수자세를 취한다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img28" src="" class="unload_rsc" alt="3. 다른 한사람이 밸브를 돌려 물이 나오는 것을 확인한 후 뛰어가서 호스를 잡는 것을 도와준다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">3. 다른 한사람이 밸브를 돌려 물이 나오는 것을 확인한 후 뛰어가서 호스를 잡는 것을 도와준다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img29" src="" class="unload_rsc" alt="4. 노즐의 끝을 돌려 물의 양을 조절해가며 불을 끈다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">4. 노즐의 끝을 돌려 물의 양을 조절해가며 불을 끈다.</strong>
    <br>
        <h4 class="title_02" style="">옷에 불이 붙었을 때</h4>
    <br>
    <br>
        <h4 class="title_03" style="">얼굴 화상방지와 연기가 폐로 들어가지 않도록</h4>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img30" src="" class="unload_rsc" alt="1. 옷에 불이 붙었을 때는 하던 일을 멈추고"/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">1. 옷에 불이 붙었을 때는 하던 일을 멈추고</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img31" src="" class="unload_rsc" alt="2. 얼굴(눈, 코, 입)에 화상을 입지 않도록 두 손으로 감싸도록 합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">2. 얼굴(눈, 코, 입)에 화상을 입지 않도록 두 손으로 감싸도록 합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img32" src="" class="unload_rsc" alt="3. 바닥에 엎드린 후"/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">3. 바닥에 엎드린 후</strong>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img33" src="" class="unload_rsc" alt="4. 몸을 뒹굴어서 불이 꺼지도록 합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">4. 몸을 뒹굴어서 불이 꺼지도록 합니다.</strong>
    

    
    
    <h4 class="title_02" style="margin-top:50px">아파트(공동주택) 화재 발생 시 국민행동요령</h4>
    
    <h4 class="title_03" style="">(자기집 화재 시) 대피가 가능한 경우</h4>
    <strong class="level4_title">1. 화재 사실을 집에 있는 사람에게 알린다.</strong>
    <strong class="level4_title">2. 계단을 이용해 낮은 자세로 지상층, 옥상 등 안전한 장소로 대피한다.</strong>
    <strong class="level4_title">3. 대피 시 출입문은 반드시 닫고, 엘리베이터를 타지 않는다.</strong>
    <strong class="level4_title">4. 비상벨을 누르고 119에 신고한다.</strong>
    
    <h4 class="title_03" style="margin-top:50px">(자기집 화재 시) 현관 입구 등의 화재로 대피가 어려운 경우</h4>
    <strong class="level4_title">1. 화재 사실을 집에 있는 사람에게 알린다.</strong>
    <strong class="level4_title">2. 대피공간, 경량칸막이, 하향식피난구 등이 설치된 곳으로 이동하여 대피한다.</strong>
    <strong class="level4_title">3. 대피공간 등이 없는 경우 화염·연기로부터 멀리 이동해 문을 닫고, 젖은 수건 등으로 틈새를 막는다.</strong>
    <strong class="level4_title">4. 119로 현재 위치, 상황을 알리고 구조를 요청한다.</strong>
    
    <h4 class="title_03" style="margin-top:50px">(다른 곳* 화재 시) 자기 집으로 화염·연기가 들어오지 않는 경우 <br/>* 다른 곳 : 아파트의 다른 세대, 복도, 계단실, 엘리베이터홀, 주차장 등</h4>
    <strong class="level4_title">1. 화재 사실을 집에 있는 사람에게 알린다.</strong>
    <strong class="level4_title">2. 세대 내에서 대기하며 화재 상황을 주시한다.</strong>
    <strong class="level4_title">3. 연기가 들어오지 못하게 창문을 닫는다.</strong>
    <strong class="level4_title">4. 119로 신고하고 안내방송에 따라 행동한다.</strong>
    
    <h4 class="title_03" style="margin-top:50px">(다른 곳* 화재 시) 자기 집으로 화염·연기가 들어오는 경우 <br/>* 다른 곳 : 아파트의 다른 세대, 복도, 계단실, 엘리베이터홀, 주차장 등</h4>
    <strong class="level4_title">1. 화재 사실을 집에 있는 사람에게 알린다.</strong>
    <strong class="level4_title">2. 복도, 계단에 화염·연기가 없어 대피가 가능한 경우</strong>
    <ul>
    <li>- 계단을 이용하여 낮은 자세로 지상층, 옥상 등 안전한 장소로 대피한다.</li>
    <li>- 대피 시 출입문은 반드시 닫고, 엘리베이터를 타지 않는다.</li>
    </ul>
    <strong class="level4_title">3. 복도, 계단에 화염·연기가 있어 대피가 어려운 경우</strong>
    <ul>
    <li>- 대피공간, 경량칸막이, 하향식피난구 등이 설치된 곳으로 이동하여 대피한다.</li>
    <li>- 대피공간 등이 없는 경우 화염 또는 연기로부터 멀리 이동하여, 문을 닫고 젖은 수건 등으로 틈새를 막는다.</li>
    <li>- 119에 현재 위치, 상황을 알리고 구조를 요청한다.</li>
    </ul>
    
    <div style="margin-top:20px">
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img">
                <img id="img35" src="" class="unload_rsc" alt="아파트 입주자 화재 피난행동요령"/>
            </li>
        </ul>
    </div>
    
    
    

    <div style="border-top: solid 1.5px #dadada;margin-top:50px">
        <strong class="level4_title">소관부서 : 산업교통재난대응과 (044-205-6338) <br>
            소관부서 : 소방청 생활안전과 김미진(044-205-7666)</strong>
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