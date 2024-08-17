
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
<link href="/ehr/resources/css/layout.css" rel="stylesheet"/>
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
        <h2 class="level1_title">자연재난행동요령</h2>

    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">경기장 안전</h3>

        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <div>
        <div class="ir" style="margin: 36px;">
        </div>
        
           <ul class="tablist">
               <li class="on">
                   <a class="tabindexBtn" onclick="return false" title="일상적 행동요령" tabindex="0">일상적 행동요령</a>
               </li>
               <li>
                   <a class="tabindexBtn" onclick="return false" title="상황별 행동요령" tabindex="0">상황별 행동요령</a>
               </li>
           </ul>
           
        <div class="tabarea">
            <div class="tabmenu01 on">
            <h3 class="title_02">1. 일상적 행동요령</h3>
            <!-- 1-1. 경기장 진입 전 Start -->
            <img id="img01" class="unload_rsc" margin="auto;" src="" style="width: 60%;" alt="1-1. 경기장 진입 전"/>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">
                <strong class="level4_title">1-1. 경기장 진입 전</strong>
                <h4 class="title_03">경기장 진입 전에는, 이렇게 행동하고 대처합니다.</h4>
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">Step01. 차량 주차 시에는 정해진 구역 내 라인에 맞춰 주차하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 경기장 내 불법 주차하게 되면 출차 지연 등 혼란이 발생될 수 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step02. 도보 또는 주차 후에는 보행로로 안전하게 이동하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 경기장 내 불법 주차하게 되면 출차 지연 등 혼란이 발생될 수 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step03. 장애인 주차구역에는 해당되는 차량만 주차하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 장애인 주차구역은 항시 공간이 확보될 수 있도록 매너를 발휘해주세요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step04. 지정된 주차 공간에는 접근하지 않기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 해당 공간은 경기 관련 VIP 및 관계자의 주차공간임으로 다른 곳에 주차해주세요 !</span></li>
                    </ul>
                </div>
            </div>
            <!-- 1-1. 경기장 진입 전 End -->
            <br/><br/>
            <!-- 1-2. 경기장 입장, 퇴장 시 Start -->
            <img id="img02" class="unload_rsc" margin="auto;" src="" style="width: 60%;" alt="1-2. 경기장 입장, 퇴장 시"/>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">
                <strong class="level4_title">1-2. 경기장 입장, 퇴장 시</strong>
                <h4 class="title_03">경기장 입장, 퇴장 시에는 이렇게 행동하고 대처합니다.</h4>
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">Step01. 경기장 입장, 퇴장 시에는 뛰거나 밀지 않고 천천히 이동하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 질서있게 입장, 퇴장하면 압사 등 다치지 않고 좀 더 안전하게 이동할 수 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step02. 출입구역에 배치된 운영스텝 안내에 적극적으로 협조하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 눈에 띄는 피복 또는 조끼나 관계자용 목걸이를 착용하고 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step03. 정해진 출입문을 통해서만 입장, 퇴장하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 허가되지 않은 출입문은 접근이 금지되며, 초행길의 경우에는 길을 잃을 수도 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step04. 경기장 입장 시 금지된 물품 반입하지 않기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 경기장 내 허가되지 않은 금지된 물품을 소지하고 있으면 출입이 제한됩니다 !</span></li>
                    </ul>
                </div>
            </div>
            <!-- 1-2. 경기장 입장, 퇴장 시 End -->
            <br/><br/>
            <!-- 1-3. 경기장 내 이동 시 Start -->
            <img id="img03" class="unload_rsc" margin="auto;" src="" style="width: 60%;" alt="1-3. 경기장 내 이동 시"/>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">
                <strong class="level4_title">1-3. 경기장 내 이동 시</strong>
                <h4 class="title_03">경기장 내 이동 시에는, 이렇게 행동하고 대처합니다.</h4>
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">Step01. 경기장 내에서는 안전요원, 운영스텝의 지시에 따라 적극 협조하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 경기장 안전을 위해 노력하고 있는 분들입니다. 적극적으로 협조해주세요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step02. 좌석 착석 전, 인근에 설치되어 있는 비상구, 소화기 위치 확인하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 인근에 배치된 운영스텝에게 문의 또는 경기장 내 전광판, 안내문 등을 확인하세요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step03. 장애인 관람구역에 머물거나 타 관람객 등에게 방해행위 하지 않기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 장애인 관람구역은 항시 공간이 확보될 수 있도록 센스 있게 매너를 발휘해주세요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step04. 통제구역에는 임의로 출입하지 않으며, 흡연은 지정된 곳에서 하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 관계자가 설정한 통제구역에는 출입하지 않고 접근가능 구역에서만 활동해 주세요 !</span></li>
                    </ul>
                </div>
            </div>
            <!-- 1-3. 경기장 내 이동 시 End -->
            <br/><br/>
            <!-- 1-4. 경기장 내 관람 시 Start -->
            <img id="img04" class="unload_rsc" margin="auto;" src="" style="width: 60%;" alt="1-4. 경기장 내 관람 시"/>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">
                <strong class="level4_title">1-4. 경기장 내 관람 시</strong>
                <h4 class="title_03">경기장 내 관람 시에는, 이렇게 행동하고 대처합니다.</h4>
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">Step01. 경기 관람 시 좌석에서 일어나는 행동 자제하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 경기 상황에 따라 심리적인 흥분 유발, 시야 방해 등으로 안전사고가 발생될 수 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step02. 시야 확보를 위해 허가되지 않은 시설물 위에 올라가지 않기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 임시 건축물 등에 올라가면 추락 위험 등 안전사고가 발생될 수 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step03. 관람구역 내에서는 뛰지 않고 천천히 걸어서 이동하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 앞 쪽의 관람객이 뛰기 시작하면 심리적으로 뒤 쪽의 관람객도 뛰게 될 수 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step04. 관람석 앞 난간, 펜스 등에 기대어 관람하지 않기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 경기/관람구역 간 거리가 밀접한 경우, 경기에 방해되지 않도록 조심해주세요 !</span></li>
                    </ul>
                </div>
            </div>
            <!-- 1-4. 경기장 내 관람 시 End -->
            <br/><br/>
            <!-- 1-5. 경기장 내 도움이 필요할 때 Start -->
            <img id="img05" class="unload_rsc" margin="auto;" src="" style="width: 60%;" alt="1-5. 경기장 내 도움이 필요할 때"/>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">
                <strong class="level4_title">1-5. 경기장 내 도움이 필요할 때</strong>
                <h4 class="title_03">경기장 내 도움이 필요할 때에는, 이렇게 행동하고 대처합니다.</h4>
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">Step01. 경기장 내 설치되어 있는 의료부스 확인하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 관람객 등이 다쳤을 경우를 대비하여 의료부스 내 및 의료진이 항시 대기하고 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step02. 경기장 인근 종합안내소 위치 확인하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 미아 방지 또는 기타 편의 제공을 위해 자원봉사자 등이 항시 대기하고 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step03. 화장실 이용 중 문제 발생 시 부착되어 있는 안내문 확인하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 성희롱 등 불법 촬영 및 기타 안전사고 발생 시 도움을 요청할 수 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step04. 경기장 내 배치되어 있는 안전요원, 운영스텝에게 도움 요청하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 눈에 띄는 피복 또는 조끼나 관계자용 목걸이를 착용하고 있어요 !</span></li>
                    </ul>
                </div>
            </div>
            <!-- 1-5. 경기장 내 도움이 필요할 때 End -->
            </div><!-- end tabmenu01 -->
            
            
            <!-- tabmenu02 start -->
            <div class="tabmenu02">
            <h3 class="title_02">2. 상황별 행동요령</h3>
            <!-- 2-1. 비상 시 행동요령 Start -->
            <img id="img06" class="unload_rsc" margin="auto;" src="" style="width: 60%;" alt="2-1. 비상 시 행동요령"/>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">
                <strong class="level4_title">2-1. 비상 시 행동요령</strong>
                <h4 class="title_03">경기장 내 비상 시에는, 이렇게 행동하고 대처합니다.</h4>
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">Step01. 개별 행동 안돼요 ! 침착하게 경기장 안전요원 등 관계자 지시 따르기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 관람객 간 잘못된 정보 전달로 인해 혼란이 발생될 수 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step02. 대피 시 앞사람을 따라 차례대로 질서있게 이동하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 앞사람을 밀치거나 서두르면 압사사고 우려가 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step03. 장애인, 노약자, 어린이 등 취약계층에게 우선 대피하도록 배려하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 취약계층은 비상 상황 시 혼자 대처하기 어려우니 우선적으로 배려해주세요 ! </span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step04. 대피 중이거나 대피 후에는 원래 자리로 다시 돌아가지 않기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 놓아둔 물건이나 사람을 찾으려고 다시 들어가면 더 큰 혼란이 발생될 수 있어요 !</span></li>
                    </ul>
                </div>
            </div>
            <!-- 1-1. 경기장 진입 전 End -->
            <br/><br/>
            <!-- 2-2. 화재 시 행동요령 Start -->
            <img id="img07" class="unload_rsc" margin="auto;" src="" style="width: 60%;" alt="2-2. 화재 시 행동요령"/>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">
                <strong class="level4_title">2-2. 화재 시 행동요령</strong>
                <h4 class="title_03">경기장 내 화재 시에는, 이렇게 행동하고 대처합니다.</h4>
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">Step01. 화재 발생 시 비상벨 누름 또는 “불이야” 라고 소리쳐 주변에 알리기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 위험 상황이 발생하면 즉시 주변에 알려 빠르게 대피할 수 있도록 해주세요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step02. 불을 끌 것인지, 대피할 것인지 판단하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 작은 불이라면 경기장 내 소화기를 활용하여 불을 신속히 꺼주세요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step03. 젖은 손수건, 옷 등을 이용해 코와 입을 막고 이동하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 유독 가스는 대부분 위 쪽으로 올라가니 최대한 낮은 자세로 움직이세요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step04. 옷에 불이 붙었을 시 얼굴을 보호하고 바닥에 몸을 뒹굴어 대처하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 얼굴 화상방지 및 연기가 폐로 들어가지 않도록 몸을 보호해주세요 !</span></li>
                    </ul>
                </div>
            </div>
            <!-- 2-2. 화재 시 행동요령 End -->
            <br/><br/>
            <!-- 2-3. 지진 시 행동요령 Start -->
            <img id="img08" class="unload_rsc" margin="auto;" src="" style="width: 60%;" alt="2-3. 지진 시 행동요령"/>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">
                <strong class="level4_title">2-3. 지진 시 행동요령</strong>
                <h4 class="title_03">경기장 내 지진 시에는, 이렇게 행동하고 대처합니다.</h4>
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">Step01. 지진 감지 시 옷, 가방 등 소지품으로 몸을 보호하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 지진으로 크게 흔들리는 시간은 길어야 1~2분 정도로 잠시동안 자리에 머물러 주세요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step02. 낙하물이 없는 넓은 공간으로 대피하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 떨어지는 물건에 주의하며 신속하게 경기장 밖 등 탁 트인 공간으로 대피해주세요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step03. 건물 난간, 펜스, 끊어진 전선 등으로부터 떨어져 대피하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 지진으로 인해 파손된 구역, 감전 등으로 2차 안전사고가 발생될 수 있어요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step04. 갇혔을 경우에는 딱딱한 물건을 이용하여 소리쳐 구조 요청하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 주변에 있는 물건 등을 이용해 두드리며 소리를 나게 해 현재 처한 상황을 알려주세요 !</span></li>
                    </ul>
                </div>
            </div>
            <!-- 2-3. 지진 시 행동요령 End -->
            <br/><br/>
            <!-- 2-4. 테러 시 행동요령 Start -->
            <img id="img09" class="unload_rsc" margin="auto;" src="" style="width: 60%;" alt="2-4. 경기장 내 관람 시"/>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">
                <strong class="level4_title">2-4. 경기장 내 관람 시</strong>
                <h4 class="title_03">경기장 내 테러 시에는, 이렇게 행동하고 대처합니다.</h4>
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">Step01. 테러, 폭발물 의심물품 발견 시 손대지 말고 대피 후 경찰에 신고하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 대피 시에는 반드시 폭발물 반대 방향 쪽 비상 계단을 이용해주세요 ! (엘리베이터 X)</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step02. 폭발 시 바닥에 엎드려 양팔-팔꿈치를 붙이고 손으로 귀, 머리 감싸기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 폭발이 종료되어도 연쇄 폭발이 날 수 있어, 좀 더 엎드리다가 신속히 대피해주세요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step03. 오염공기가 감지되면 손수건, 휴지 등으로 코, 입을 가리고 호흡하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 화학 물질에 노출되었을 경우에는 얼굴, 손 등을 깨끗이 씻고 응급치료를 받으세요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step04. 경기장 내에서 수상한 행동을 목격하는 경우 신속히 대피 후 신고하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 경기장 등 다중이용시설이 테러 목표가 되기 쉬우므로 이점 유의해주세요 !</span></li>
                    </ul>
                </div>
            </div>
            <!-- 2-4. 경기장 내 관람 시 End -->
            <br/><br/>
            <!-- 2-5. 취약계층에 대한 배려 Start -->
            <img id="img10" class="unload_rsc" margin="auto;" src="" style="width: 60%;" alt="2-5. 취약계층에 대한 배려"/>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">
                <strong class="level4_title">2-5. 취약계층에 대한 배려</strong>
                <h4 class="title_03">경기장 내 취약계층이 있는 경우에는, 이렇게 행동하고 대처합니다.</h4>
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">Step01. 경기장 주변에 어린이, 노인, 장애인 등 취약계층이 없는지 확인하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 어린이, 노인, 장애인 등은 재난에 취약한 계층이므로 우선적으로 도움을 줘야 해요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step02. 동행인은 취약계층을 배려해, 사전에 비상상황 시 대처 행동 정하기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 상호 간에 행동요령을 미리 정한다면 상황 발생 시 빠른 대피가 가능해요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step03. 경기장 내 전파되는 방송이나 안전요원의 안내사항에 따르기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 현재 상황을 명확히 인지한다면 나를 포함한 취약계층까지의 안전 확보가 가능해요 !</span></li>
                        <li><span class="dash_bulTxt_txtIndent">Step04. 비상 시 방황하는 취약계층을 발견할 때 주변 사람과 함께 도와주기</span></li>
                        <li><span class="dash_bulTxt_txtIndent">　　☞ 극도의 불안감과 공포 등으로 패닉 상태에 빠지면 사고력이 급격히 떨어질 수 있어요 !</span></li>
                    </ul>
                </div>
            </div>
            
        </div><!-- end tabarea -->
    </div>
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
    <strong class="level4_title">
        소관부서 : 문화체육관광부 스포츠산업과 임주영 (044-203-3120)
    </strong>
    </div>
</div>
    
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>