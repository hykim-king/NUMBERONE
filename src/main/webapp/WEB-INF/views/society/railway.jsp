
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
        <h3 id="tbmainlab" class="level2_title">철도, 지하철 사고</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    

    <h4 class="title_02">지하철 사고 발생시 국민행동요령</h4>
    <div class="know_how_w">
        <img id="img01" class="prevent_img01 unload_rsc" alt="비상구로 신속히 대피하세요!" src=""/>
        <div class="contextIndent_oneDepList leftW70">
            <strong class="title_03">· 지하철 화재발생시 대피요령</strong>
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">- 노약자·장애인석 옆에 있는 비상버튼을 눌러 승무원과 연락합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 여유가 있다면 객차마다 2개씩 비치된 소화기를 이용하여 불을 끕니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 출입문이 자동으로 열리지 않으면 수동으로 문을 열고, 여의치 않으면 비상용 망치를 이용하여 유리창을 깨고, 망치가 없으면 소화기로 유리창을 깹니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 스크린도어(PSD)가 열리지 않을 경우는 스크린도어에 설치된 빨간색 바를 밀고 나갑니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 코와 입을 수건, 티슈, 옷소매 등으로 막고 비상구로 신속히 대피합시다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 정전 시에는 대피유도 등을 따라 출구로 나가고, 유도등이 보이지 않을 때는 벽을 짚으면서 나가거나 시각장애인 안내용 보도블록을 따라 나갑시다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">- 지상으로 대피가 여의치 않을 때는 전동차 진행방향 터널로 대피합시다.</span></li>
            </ul>
        </div>
    </div>
    <h4 class="title_02">Q & A</h4>
    <div class="qna_wrap">
        <strong class="title_03">Q. 출입문을 수동으로 어떻게 열 수 있나요 ?</strong>
        <div class="qna_anser">
            <div class="txt_q">A</div>
            <div class="contextIndent_twoDepList">
                <span class="dot_bulTxt_txtIndent">
                    <span class='bg_imgSet_numberTxt'>1</span> 출입문 쪽 의자아래 또는 벽면에 있는 조그만 뚜껑을 여세요.</span>
                <span class="dot_bulTxt_txtIndent">
                    <span class='bg_imgSet_numberTxt'>2</span> 뚜껑 속의 비상 코크를 잡아당기거나, 빨간색 비상핸들을 시계방향으로 90도 돌립니다.</span>
                <span class="dot_bulTxt_txtIndent">
                    <span class='bg_imgSet_numberTxt'>3</span> 공기 빠지는 소리가 멈출 때까지 3~10초간 기다립니다.</span>
                <span class="dot_bulTxt_txtIndent">
                    <span class='bg_imgSet_numberTxt'>4</span> 출입문을 양쪽으로 밀어서 여세요.</span>
            </div>
        </div>
    </div>
    <h4 class="title_02">고속철도사고 및 테러(독가스) 발생시 국민행동요령</h4>
    <div class="know_how_w">
        <img id="img03" class="prevent_img01 unload_rsc" alt="노약자나 임산부부터 대피하세요!" src=""/>
        <div class="contextIndent_oneDepList leftW70">
            <p class="title_03">· 고속철도 탈선·충돌사고 발생시 대피요령</p>
            <ul class="contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">- 기관사 및 승무원의 안내방송에 따라 대피합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 승무원이 승강문을 개방하면 질서 있게 대피합시다.(필요시, 비상사다리 설치)</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 부상자, 노약자, 임산부가 먼저 대피할 수 있도록 배려하고 도와줍니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 승강문이 열리지 않으면 비상용 망치를 이용하여 비상창문을 깨고 탈출할 수 있습니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 반대편 선로로 절대 대피하지 않도록 하고, 선로변내에 머무르지 않습니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 터널내에서는 비상 유도등을 따라 가까운 터널 입구 및 비상대피소로 이동합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 안전한 장소에서 구급차, 구원열차, 버스 등 연계수송 교통수단을 기다립니다.</p></li>
            </ul>
            <p class="title_03">· 고속철도 테러(독가스) 발생시 대피요령</p>
            <ul class="contextIndent_twoDepList">
                <li><p class="dash_bulTxt_txtIndent">- 차량 출입문 옆에 있는 인터폰을 이용하여 승무원에게 연락합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 코와 입을 수건, 티슈, 옷소매 등으로 막고 사고가 발생하지 않은 다른 객차로 이동합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 기관사 및 승무원의 안내방송에 따라 대피합니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 승무원이 승강문을 개방하면 질서 있게 대피합시다.(필요시, 비상사다리 설치)</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 부상자, 노약자, 임산부가 먼저 대피할 수 있도록 배려하고 도와줍니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 승강문이 열리지 않으면 비상용 망치를 이용하여 비상창문을 깨고 탈출할 수 있습니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 반대선 선로에는 절대로 대피하지 않도록 하고, 선로변내에 머무르지 않습니다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 터널내에서는 비상 유도등을 따라 가까운 터널 입구 및 비상대피소로 대피합시다.</p></li>
                <li><p class="dash_bulTxt_txtIndent">- 안전한 장소에서 구급차, 구원열차, 버스 등 연계수송 교통수단을 기다립니다.</p></li>
            </ul>
        </div>
    </div>
    <div class="title_02">Q & A</div>
    <div class="qna_wrap">
        <div class="title_03">Q : 고속열차 승강문을 수동으로 어떻게 열 수 있나요 ?</div>
        <div class="qna_anser">
            <div class="txt_q">A</div>
            <div class="contextIndent_twoDepList">
                <div class="dot_bulTxt_txtIndent"><span class='bg_imgSet_numberTxt'>1</span> 승강문 왼쪽 상단 에어제거 버튼을 내립니다.</div>
                <div class="dot_bulTxt_txtIndent"><span class='bg_imgSet_numberTxt'>2</span> 공기 빠지는 소리와 함께 승강문 쇄정버튼이 밖으로 나옵니다.</div>
                <div class="dot_bulTxt_txtIndent"><span class='bg_imgSet_numberTxt'>3</span> 승강문 쇄정버튼을 잡아당깁니다.</div>
                <div class="dot_bulTxt_txtIndent"><span class='bg_imgSet_numberTxt'>4</span> 승강문이 밖으로 튀어나가면 승강문 손잡이를 옆으로 잡아당겨 문을 엽니다.</div>
            </div>
        </div>
    </div>
    <div class="footnote_border">
        <div class="contextIndent_oneDepList star_bulTxt_w">
            <span class="star_bulTxt">*</span>
            <span>자료제공 : 국토교통부 044-201-4825(철도안전정책과), 4614(철도운행안전과)</span>
        </div>
    </div>

    <h4 class="level2_title">국민행동요령</h4> 
    <h4 class="title_02" style="float:left;">지하철 사고</h4>
    <br>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li style="">
                <img id="img13" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="국토교통부 로고"/>
            </li>
        </ul>
    </div>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img04" src="" class="unload_rsc" alt="객실 양 끝에 있는 인터폰으로 승무원에게 알립니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 객실 양 끝에 있는 인터폰으로 승무원에게 알립니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img05" src="" class="unload_rsc" alt="화재 발생 시 119에 신고하고 여유가 있다면 객실 양 끝에 비치된 소화기로 불을 끕니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 화재 발생 시 119에 신고하고 여유가 있다면 객실 양 끝에 비치된 소화기로 불을 끕니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img06" src="" class="unload_rsc" alt="입과 코를 젖은 천으로 막고 화재가 발생하지 않은 다른 객실로 이동합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 입과 코를 젖은 천으로 막고 화재가 발생하지 않은 다른 객실로 이동합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img07" src="" class="unload_rsc" alt="안내방송과 승무원의 안내에 따라 질서있게 대피합시다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 안내방송과 승무원의 안내에 따라 질서있게 대피합시다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img08" src="" class="unload_rsc" alt="부상자, 노약자, 임산부가 먼저 대피할 수 있도록 배려하고 돕습니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 부상자, 노약자, 임산부가 먼저 대피할 수 있도록 배려하고 돕습니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img09" src="" class="unload_rsc" alt="문이 열리지 않으면 열차가 멈춘 후에 안내방송에 따라 비상핸들이나 비상콕크를 돌려 문을 열고 탈출합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 문이 열리지 않으면 열차가 멈춘 후에 안내방송에 따라 비상핸들이나 비상콕크를 돌려 문을 열고 탈출합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img10" src="" class="unload_rsc" alt="스크린도어는 손잡이를 양쪽으로 밀거나 빨간색 바를 밀고 탈출합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 스크린도어는 손잡이를 양쪽으로 밀거나 빨간색 바를 밀고 탈출합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img11" src="" class="unload_rsc" alt="선로로 대피할 때에는, 감전위험이 있으므로 반드시 대피안내에 따라 반대편 선로의 열차 진입에 유의하며 대피합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 선로로 대피할 때에는, 감전위험이 있으므로 반드시 대피안내에 따라 반대편 선로의 열차 진입에 유의하며 대피합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img12" src="" class="unload_rsc" alt="대피할 때에는 대피 유도등을 따라 침착하게 비상구로 대피합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 대피할 때에는 대피 유도등을 따라 침착하게 비상구로 대피합니다.</strong>
    <br>
    <h4 class="level2_title">국민행동요령</h4> 
    <h4 class="title_02" style="float:left;">고속철도 사고</h4>
    <br>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li style="">
                <img id="img23" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="국토교통부 로고"/>
            </li>
        </ul>
    </div>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img14" src="" class="unload_rsc" alt="차량 출입문 옆에 있는 인터폰을 이용하여 승무원에게 알립니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 차량 출입문 옆에 있는 인터폰을 이용하여 승무원에게 알립니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img15" src="" class="unload_rsc" alt="화재 발생 시 119에 신고하고, 여유가 있다면 객실 연결통로에 비치된 소화기로 불을 끕니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 화재 발생 시 119에 신고하고, 여유가 있다면 객실 연결통로에 비치된 소화기로 불을 끕니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img16" src="" class="unload_rsc" alt="코와 입을 젖은 천으로 막고 화재가 발생하지 않은 다른 객실로 이동합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 코와 입을 젖은 천으로 막고 화재가 발생하지 않은 다른 객실로 이동합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img17" src="" class="unload_rsc" alt="안내방송과 승무원의 안내에 따라 질서있게 대피합시다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 안내방송과 승무원의 안내에 따라 질서있게 대피합시다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img18" src="" class="unload_rsc" alt="부상자, 노약자, 임산부가 먼저 대피할 수 있도록 배려하고 돕습니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 부상자, 노약자, 임산부가 먼저 대피할 수 있도록 배려하고 돕습니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img19" src="" class="unload_rsc" alt="문이 열리지 않으면 비상망치로 객실 양 끝의 비상창문을 깨고 탈출합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 문이 열리지 않으면 비상망치로 객실 양 끝의 비상창문을 깨고 탈출합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img20" src="" class="unload_rsc" alt="선로로 대피할 때에는 반대편 선로의 열차 진입에 유의합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 선로로 대피할 때에는 반대편 선로의 열차 진입에 유의합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img21" src="" class="unload_rsc" alt="터널 내에서는 자세를 낮추고 비상 유도등을 따라 가까운 터널 입구나 비상대피소로 이동합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 터널 내에서는 자세를 낮추고 비상 유도등을 따라 가까운 터널 입구나 비상대피소로 이동합니다.</strong>

    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img22" src="" class="unload_rsc" alt="안전한 곳에서 구급차, 구원열차, 버스 등 연계 수송 교통수단을 기다립니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">- 안전한 곳에서 구급차, 구원열차, 버스 등 연계 수송 교통수단을 기다립니다.</strong>

     
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 산업교통재난대응과 박승용(044-205-6333)<br>소관부서 : 국토교통부 철도안전정책과 문성배 (044-201-4609)</strong>
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