<%--
/**
	Class Name: 
	Description:
	Author: user
	Modification information
	
	수정일     수정자      수정내용
    -----   -----  -------------------------------------------
    2024. 7. 30        최초작성 
    
    NUMBERONE TEAM
    since 2024-07-18
    Copyright (C) by KandJang All right reserved.
*/


--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
<title>자연재난행동요령</title>
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
        <h3 class="level2_title">침수</h3>
        <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    <div class="mediaContent_box unload_rsc">
        <div class="media_w" style="width: 500px;">
        </div>
        <div class="media_relation_w">
            <ul class="menuSmall_tabWrap" id="genJanan" >
                <li>
                    <a class="tabS_Link" id="atynm">침수</a>
                </li>
            </ul>
            <div class="tabContentS_boxWrap">
<!--                <a class="moreView_imgSet_btn" id="ajananmoreView_imgSet_btn" title="재난상식 더보기" style="vertical-align:top;"><span class="ir">재난상식 더보기</span> -->
<!--                </a> -->
                <div class="tabS_scrollWrap">
                    <div id="tbTobDc" class="tabS_caption" style="" onclick=""></div>
                    
                </div>
            </div>
            <div class="reperence_boxWrap">
                <h4 class="level3_title">침수관련 자료실</h4>
                <a class="moreView_imgSet_btn" id="ateamoreView_imgSet_btn" style="vertical-align:top;"><span class="ir">재난관련 자료 더보기</span></a>
                <ul class="linkType_listWrap" id="genDic" >
<!--                    <li class="linkType_listCell"> -->
<!--                        <a class="fireGuide_link" id="adic"><span>침수 국민행동요령</span><i class="arrowGray_imgSet_icon"></i> -->
<!--                        </a> -->
<!--                    </li> -->
                </ul>
            </div>
        </div>
    </div>
    <!-- 행동요령 본문내용 -->
    <div class="section01">
        <h3 class="title_01">진행별 행동요령</h3>
        <ul class="tablist" >
            <li class="on" title="">
                <a class="tabindexBtn"  onclick="return false" title="선택됨">호우 예보 시</a>
            </li>
            <li>
                <a class="tabindexBtn" onclick="return false">호우 주의보･경보 시</a>
            </li>
        </ul>   
        <div class="tabarea">
            <div class="tabmenu01 on">
                <h3 class="title_02">상세 행동요령</h3>
                <div class="know_how_w">
                    <div class="contextIndent_oneDepList leftW70">
                        <strong class="level4_title">＜ 취약지역 거주자 ＞</strong>
                        <ul class="contextIndent_twoDepList">
                            <li><div class="dash_bulTxt_txtIndent">ㆍ (지역주민) 저지대, 상습침수지역에 거주하고 있는 주민은 기상정보를 수시로 확인하고, 대피를 준비합니다.</div></li>
                            <li><div class="dash_bulTxt_txtIndent">　※ 사전대피가 필요할 경우 전기, 가스를 차단하고 대피합니다.</div></li>
                            <li><div class="dash_bulTxt_txtIndent">ㆍ (상가) 많은 비가 예보되면 음식점 등 상가에서는 거리에 비치한 간판 등 전기 시설물을 건물 안으로 옮겨둡니다.</div></li>
                            <li><div class="dash_bulTxt_txtIndent">ㆍ (마을관리자) 마을 이장, 통·반장 등 관리자는 마을방송 또는 비상연락망 등을 통해 외출 자제를 당부하고, 비상시 마을 주변 대피 장소를 사전에 안내합니다.</div></li>
                        </ul>
                    </div>
                    <div class="contextIndent_oneDepList leftW70">
                        <strong class="level4_title">＜ 지하공간 거주･관리･이용자 ＞</strong>
                        <ul class="contextIndent_twoDepList">
                            <li><div class="dash_bulTxt_txtIndent">ㆍ 비상상황에 대비해 방범창 등을 절단할 수 있는 공구(절단기 등)를 사전에 준비합니다.</div></li>
                            <li><div class="dash_bulTxt_txtIndent">ㆍ 침수 공간에서 탈출이 불가능할 경우를 대비하여 물에 뜰 수 있는 부유용품(구명조끼, 튜브, 대형스티로폼 등)을 준비합니다.</div></li>
                            <li><div class="dash_bulTxt_txtIndent">ㆍ 지하역사, 지하주차장 등 공동으로 이용하는 시설의 비상구 위치를 수시로 파악하고, 비상상황을 대비한 대피경로를 익혀둡니다.</div></li>
                        </ul>
                    </div>
                    <div class="contextIndent_oneDepList leftW70">
                        <strong class="level4_title">＜ 공동주택 관리자 ＞</strong>
                        <ul class="contextIndent_twoDepList">
                            <li><div class="dash_bulTxt_txtIndent">ㆍ (평상시) 물막이 판 설치, 모래주머니 및 양수기 등을 비치하고 물막이 판·모래주머니를 신속히 설치할 수 있도록 수방자재 설치자를 사전에 지정합니다.</div></li>
                            <li><div class="dash_bulTxt_txtIndent">　- 지하공간으로 비가 유입되기 시작하면 5∼10분 만에 지하공간이 침수되기 때문에 입구가 여러 개인 경우 가급적 1인씩 지정하여 관리합니다.</div></li>
                            <li><div class="dash_bulTxt_txtIndent">ㆍ 침수 피해가 예상되는 경우 대피장소를 사전에 안내하고, 차량 이동은 호우 전에만 가능토록 안내합니다.</div></li>
                            <li><div class="dash_bulTxt_txtIndent">　- 물막이 판 설치 시간을 안내하고, 물막이 판 설치 이후에는 차량이동이 불가함을 안내합니다.</div></li>
                            <li><div class="dash_bulTxt_txtIndent">ㆍ 독거노인, 장애인, 기타 도움이 필요한 안전취약계층에 대해서는 대피 시 필요정보를 사전에 공지하고 안전상 문제가 없는지 인터폰, 전화 등을 활용하여 수시로 확인합니다.</div></li>
                        </ul>
                    </div>
                    <div class="contextIndent_oneDepList leftW70">
                        <strong class="level4_title">＜ 차량 이용자 ＞</strong>
                        <ul class="contextIndent_twoDepList">
                            <li><div class="dash_bulTxt_txtIndent">ㆍ 비상시 탈출을 위한 차량용 망치 등을 구비합니다.</div></li>
                            <li><div class="dash_bulTxt_txtIndent">ㆍ 침수가 예상되는 지하공간 주차는 금지하고, 하천변, 해변가, 저지대 등에 주차된 자동차는 안전한 곳으로 이동시킵니다.</div></li>
                            <li><div class="dash_bulTxt_txtIndent">　- 지역 당국이 대피를 권고하거나 명령하는 경우 둔치 주차장에 주차한 차량을 이동시켜야 하며, 대피 안내 수신을 위해 차량에 연락처를 남겨두어야 합니다.</div></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="tabmenu02">
                <h3 class="title_02">상세 행동요령</h3>
                <!-- <div class="contextIndent_oneDepList leftW70"> -->
                <div class="contextIndent_oneDepList leftW70">
                    <strong class="level4_title">＜ 보행자 ＞</strong>
                    <ul class="contextIndent_twoDepList">
                        <li><div class="dash_bulTxt_txtIndent">ㆍ 침수된 지역은 절대 접근하지 않습니다.</b></div></li> 
                        <li><div class="dash_bulTxt_txtIndent">　- 침수된 지역은 물의 깊이나 도로의 상태 등을 확인할 수 없고, 밤에는 시야가 확보되지 않아 더욱 위험합니다.</div></li>
                        <li><div class="dash_bulTxt_txtIndent">　- 물이 혼탁한 경우 시야 확보가 불가능하여 뾰족한 물건이나 무거운 물건 등 위험한 물건이 신체를 해칠 수 있습니다.</div></li>
                        <li><div class="dash_bulTxt_txtIndent">ㆍ 침수 시 보행이 가능한 수위 기준은 무릎(약 50cm)까지이며, 약 15cm 정도로 수위가 낮아도 물살이 거세어 움직일 수 없게 될 위험성이 있으므로 물이 흘러오면 즉시 근처 건물 2층 이상이나 높은 곳으로 대피합니다.</b></div></li> 
                        <li><div class="dash_bulTxt_txtIndent">　※ 물이 빠지는 것(2∼3시간 후)을 보고 안전이 확보되면 이동합니다.</b></div></li>
                        <li><div class="dash_bulTxt_txtIndent">ㆍ 하수도, 맨홀 근처는 추락으로 인한 휩쓸림 사고가 발생할 수 있으므로 접근을 금지합니다.</b></div></li> 
                        <li><div class="dash_bulTxt_txtIndent">　- 침수된 도로 보행 시 느리고 안정적인 걸음으로 이동하며, 도로 중심보다는 건물 외벽을 붙잡고 이동합니다.</b></div></li>
                        <li><div class="dash_bulTxt_txtIndent">　- 침수된 도로 보행 시 긴 막대기를 활용하여 맨홀이나 장애물 여부 등을 확인합니다.</div></li>
                        <li><div class="dash_bulTxt_txtIndent">　※ 물이 강하게 흐르거나 소용돌이를 일으키는 경우 맨홀 뚜껑이 열려있을 수 있어 피해서 이동합니다.</div></li>
                        <li><div class="dash_bulTxt_txtIndent">　※ 맨홀 뚜껑에서 기포가 나온다면 뚜껑이 갑자기 열릴 수 있다는 신호이므로 즉시 먼 곳으로 벗어나야 합니다.</div></li>
                        <li><div class="dash_bulTxt_txtIndent">ㆍ 침수된 도로 보행 시 신호등, 가로등, 입간판 등 옥외 전기시설물에서 최소 2∼3m 떨어져서 보행합니다.</b></div></li> 
                        <li><div class="dash_bulTxt_txtIndent">　- 전기선 및 전기설비, 전봇대, 가로등, 입간판 등 도로시설물, 금속 구조물, 파이프, 철조망 등은 감전 위험이 있으므로 주의합니다.</b></div></li>
                    </ul>
                </div>
                <div class="contextIndent_oneDepList leftW70">
                    <strong class="level4_title">＜ 지하공간 이용자 ＞</strong>
                    <ul class="contextIndent_twoDepList">
                        <li><div class="dash_bulTxt_txtIndent">ㆍ (반지하주택, 지하 역사·상가) 지하주택(반지하), 지하철, 상가 등 지하공간 바닥에 물이 조금이라도 차오르거나 하수구에서 역류 시 즉시 대피합니다.</div></li> 
                        <li><div class="dash_bulTxt_txtIndent">　- 물이 집 안으로 들어오고 있는 상황이라면 출입문부터 개방합니다.</div></li>
                        <li><div class="dash_bulTxt_txtIndent">　- 외부수심이 <b style="color: black; font-weight:bold;">무릎 이상(약 50cm)</b>일 경우 혼자서 개방이 불가하므로, 전기전원 차단 후 여러 명이 힘을 합쳐 문을 열고 신속히 대피합니다.</div></li>
                        <li><div class="dash_bulTxt_txtIndent">　- 이동 시에는 난간 등 신체 지지에 도움이 되는 것을 잡고 이동하고, 갑작스러운 정전이 발생될 수 있으니 승강기는 이용하지 않습니다.</div></li>
                        <li><div class="dash_bulTxt_txtIndent">◇ 문을 통해 대피 불가능 시 다른 대피로 확보</b></div></li> 
                        <li><div class="dash_bulTxt_txtIndent">　- (반지하주택) 방범창이 안 열릴 경우 가능하다면 절단기 등을 이용해 방범창을 자르고 탈출합니다.</b></div></li>
                        <li><div class="dash_bulTxt_txtIndent">　- (지하 역사ㆍ상가) 우회하여 탈출할 수 있는 비상통로 및 출구로 이동하여 신속히 지하공간에서 벗어납니다.</b></div></li>
                        <li><div class="dash_bulTxt_txtIndent">　- 탈출에 실패했을 경우 전기와 가스 차단 후 119나 외부에 즉시 도움을 요청하고, 침수가 진행될 것으로 예상되면 구명조끼, 튜브 등 물에 뜰 수 있는 물건을 활용하여 구조를 기다립니다.</b></div></li>
                        <li><div class="dash_bulTxt_txtIndent">ㆍ (지하계단) 지하계단은 정강이 높이(약 30∼40cm) 정도로만 물이 유입되어도 성인이 올라가기 어렵기 때문에 조금이라도 흘러들어오면 즉시 대피합니다.</b></div></li> 
                        <li><div class="dash_bulTxt_txtIndent">　- 특히, 계단에 유입되는 물이 발목 높이라도 어린이나 노약자는 올라갈 수 없으니 조금이라도 유입이 되면 즉시 대피합니다.</b></div></li>
                        <li><div class="dash_bulTxt_txtIndent">　※ 무릎 높이인 50cm 이상은 성인도 이동이 어렵습니다.</div></li>
                    </ul>
                </div>
                <div class="description_box">
                    <p class="description_fcBlue_txt">지하공간 대피요령</p>
                    <a>▪ 대피 시에는 미끄러운 구두, 하이힐이나 슬리퍼보다는 <b style="color: black; font-weight:bold;">운동화가 대피에 용이</b>하고, 특히 장화는 안으로 물이 차 대피가 어려우니 가급적 피합니다.</a><br> 
                    <a>▪ 마땅한 신발이 없을 시, 맨발로 대피하며 이동 시에는 난간을 잡고 이동합니다.</a> 
                </div>
                <div class="contextIndent_oneDepList leftW70">
                    <ul class="contextIndent_twoDepList">
                        <li><div class="dash_bulTxt_txtIndent">ㆍ (지하주차장) 물이 조금이라도 차오르면 차량은 두고 즉시 탈출하고 주차장으로 빗물이 들어오면 차량을 밖으로 이동하지 말고 몸만 탈출합니다.</div></li> 
                        <li><div class="dash_bulTxt_txtIndent">　- 경사로를 따라 물이 들어오기 시작하면 차량은 수압으로 움직일 수 없어 사람만 신속하게 대피해야 하고, 특히 차량확인 등을 위한 지하주차장 진입은 절대 금지합니다.</div></li>
                    </ul>
                </div>
                <div class="contextIndent_oneDepList leftW70">
                    <strong class="level4_title">＜ 공동주택 관리자 ＞</strong>
                    <ul class="contextIndent_twoDepList">
                        <li><div class="dash_bulTxt_txtIndent">ㆍ (호우 시) 기상청 특보를 예의주시하고 많은 양의 비가 예상되는 경우에는 신속하게 물막이 판과 모래주머니를 설치합니다.</div></li> 
                        <li><div class="dash_bulTxt_txtIndent">ㆍ (대피안내) 물막이 판·모래주머니를 설치 후 반지하 등 지하공간에 빗물 유입 시 즉시 대피를 안내하고, 지하주차장 등은 진입을 금지합니다.</div></li> 
                        <li><div class="dash_bulTxt_txtIndent">　- 대피 시에는 건물 내 높은 공간이나 가까운 대피시설로 이동케 하고, 지하주차장 차량 이동 등을 위한 지하공간 진입은 철저히 차단합니다.</div></li>
                        <li><div class="dash_bulTxt_txtIndent">　- 대피약자가 있는 경우 주변에 도움을 요청하여 함께 대피합니다.</div></li>
                    </ul>
                </div>
                </br>
                <div class="contextIndent_oneDepList leftW70">
                    <strong class="level4_title">＜ 차량 이용자 ＞</strong>
                    <ul class="contextIndent_twoDepList">
                        <li><div class="dash_bulTxt_txtIndent">ㆍ (차량침수) 차량이 침수되기 시작하면 타이어 높이의 2/3 이상 잠기기 전에 차량을 안전한 곳으로 이동시키고, 이동이 불가능한 경우에는 시동이 꺼지기 전에 탈출을 위해 창문 또는 썬루프를 열어둡니다.</div></li>
                    </ul>
                </div>
                <div class="description_box">
                    <p class="description_fcBlue_txt">차량침수 대응요령</p>
                    <a>▪ 차량이 침수된 상황에서 외부 수압으로 문이 열리지 않을 때는 좌석 목받침 하단 철재봉을 이용하여 유리창을 깨서 대피합니다.</a><br> 
                    <a>▪ 유리창을 깨지 못한 경우 차량 내·외부 수위 차이가 30cm 이하가 될 때까지 기다렸다가 차량 문이 열리는 순간 탈출합니다.</a><br>
                    <a>▪ 탈출 후 물보다 높은 곳으로 대피하고, 마땅치 않을 경우 차량 지붕 위로 올라가 119에 연락 후 대기합니다.</a> 
                </div>
                <div class="contextIndent_oneDepList leftW70">
                    <ul class="contextIndent_twoDepList">
                        <li><div class="dash_bulTxt_txtIndent">ㆍ (침수도로 운전) 저단 기어로 운전해 빠르게 벗어납니다.</div></li> 
                        <li><div class="dash_bulTxt_txtIndent">　- 주행 중 차를 두고 대피해야 하는 경우에는 차 열쇠를 잘 보이는 곳에 두고, 문을 잠그지 않은 채 귀중품 등을 가지고 대피합니다.</div></li>
                        <li><div class="dash_bulTxt_txtIndent">ㆍ (지하차도) 침수가 시작된 지하차도는 절대 진입하지 않으며, 진입한 경우에는 차량을 두고 신속히 밖으로 대피합니다.</div></li> 
                        <li><div class="dash_bulTxt_txtIndent">　- 침수된 지하차도 진입/탈출 시 차량의 비상점멸등을 켜서 뒤 차량에게 위험을 전달합니다.</div></li>
                        <li><div class="dash_bulTxt_txtIndent">ㆍ (세월교 횡단) 급류가 있는 교량에서 차량은 수압에 의해 하천으로 밀릴 수 있어 절대 진입하지 마시고 우회하거나 안전한 곳에서 대기합니다.</div></li> 
                        <li><div class="dash_bulTxt_txtIndent">　- 만약, 급류에 차량이 고립되면 급류가 밀려오는 반대쪽 문을 열고 탈출하고 문이 열리지 않으면 창문을 깨고 탈출합니다.</div></li>
                        <li><div class="dash_bulTxt_txtIndent">　※ 물이 흘러오는 방향은 유속으로 인한 외력이 작용하여 차량의 문을 열기 어렵습니다.</div></li>
                    </ul>
                </div>
                <br>
                <div>
                </div>
            </div>
        </div>
    </div>
    
    <br>
    <div style="border-top: solid 1.5px #dadada;">
        <strong class="level4_title">소관부서 : 자연재난대응과 신지윤(044-205-5233)</strong>
    </div>
</div>

</body>
</html>

<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>

</body>
</html>