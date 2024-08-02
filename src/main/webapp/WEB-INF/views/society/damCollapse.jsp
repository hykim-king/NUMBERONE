
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
        <h3 class="level2_title">댐붕괴</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    

    <h4 class="title_02">댐 붕괴 발생 시 국민행동요령</h4>
    <ul class="contextIndent_oneDepList">
        <strong class="title_03">댐 붕괴 우려 시</strong>
        <ul class="prevent02_img_GridWrap">
            <li class="prevent_text_grid">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">- 댐 붕괴 징후(대규모 홍수 및 지진 발생시)가 발생할 경우, 댐관리기관-지자체-정부에서 경고방송 및 <br/>재난방송을 실시하므로 TV, 라디오, 인터넷 등을 통해 재난상황을 지속적으로 주의 깊게 확인합니다.</span></li>
                </ul>
            </li>
        </ul>
        <img id="img01" class="unload_rsc" style="width: 50%;" alt="집 주변의 댐과 하천 위치를 확인하고 가까운 대피장소 및 대피경로를 확인" src=""/>
        <ul class="prevent02_img_GridWrap">
            <li class="prevent_text_grid">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">- 침수에 대비하여 가스를 잠그고 전기제품의 전원을 끄고, 집 주변에 있는 물건을 치우거나 고정시켜<br/>두며, 중요한 물건은 높은 곳으로 옮깁니다.</span></li>
                </ul>
            </li>
        </ul>
        <img id="img02" class="unload_rsc" style="width: 50%;" alt="TV, 인터넷, 라디오 등 재난방송을 확인하고 가스·전기를 차단" src=""/>
        <ul class="prevent02_img_GridWrap">
            <li class="prevent_text_grid">
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">- 지역 재난안전대책본부 및 경찰서, 소방서 등 주요기관들의 전화번호를 확인하고 온 가족이 알 수 <br/>있는 곳에 두고, 지역 주민(마을대표 등)간의 비상연락망을 유지합니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">- 지역 재난안전대책본부를 통하 댐 붕괴 시 해당지역의 비상대피장소를 미리 확인하고 동선(대피로)<br/>과 대피방법을 확인합니다.</span></li>
                </ul>
            </li>
        </ul>
        
        <div class="title_02">Q & A</div>
        <div class="qna_wrap">
            <strong class="level4_title">Q. 댐 붕괴가 발생할 경우, 관련정보는 어떻게 확인할 수 있습니까?</strong>
            <div class="qna_anser">
                <div class="txt_q">A</div>
                <div class="contextIndent_twoDepList">
                    <span class="dash_bulTxt_txtIndent">- 댐 관리 기관에서는 댐 상황을 모니터링하고, 붕괴 가능성이 있을 경우 기관별로 다중화하여 아래와 같이 정보를 제공하고 있습니다. 대규모 홍수 및 지진 발생 시에는 신속히 내용을 확인하시고 지역 재난안전대책본부의 지시에 따라 대피하셔야 합니다.</span>
                    <span class="dash_bulTxt_txtIndent">- 댐 관리기관 : 댐 직하류 경보방송 실시, </span>
                    <span class="dash_bulTxt_txtIndent">- 지자체 : 방송사 및 언론사를 통한 재난방송(자막) 송출</span>
                    <span class="dash_bulTxt_txtIndent">- 정부(행정안전부) : 대국민 재난온라인방송 및 재난문자서비스 전송</span>
                </div>
            </div>
        </div>
        
        <strong class="title_03">댐 붕괴 발생 시</strong>
        <ul class="contextIndent_twoDepList">
            <li><strong class="dash_bulTxt_txtIndent">- 댐 붕괴가 발생시 지역재난안전대책본부의 통제에 따라 지정된 장소로 즉시 대피합니다.</strong></li>
            <li><strong class="dash_bulTxt_txtIndent">- 대피장소로 이동할 시간적 여유가 없을 경우에는 주변의 고지대로 비상대피하고 지역재난안전대책본부 또는 소방서, 경찰서 등에 구조를 요청합니다.</strong></li>
        </ul>
        <img id="img03" class="unload_rsc" style="width: 50%;" alt="지자체 통제에 따라, 지정된 장소로 즉시 대피하고 시간이 없을 때는 가까운 고지대로 대피하여 구조 요청" src=""/>

        <ul class="contextIndent_twoDepList">
            <li><strong class="dash_bulTxt_txtIndent">- 댐 붕괴로 인한 홍수에는 붕괴된 구조물 조각들과 토석류들이 쓸려서 내려오므로, 절대 하천에 접근하지 않도록 합니다.</strong></li>
        </ul>
        <img id="img04" class="unload_rsc" style="width: 50%;" alt="댐과 하천 주변 접근 금지" src=""/>
        <ul class="contextIndent_twoDepList">
            <li><strong class="dash_bulTxt_txtIndent">- 대규모 지진으로 인한 댐 붕괴시에는, 추가 여진등으로 인한 2차 피해가 발생할 수 있으므로, 건물이나 제방 인근으로 접근하지 않도록 합니다.</strong></li>
            <li><strong class="dash_bulTxt_txtIndent">- 강우가 지속될 경우에는 신속한 피해복구 및 물자지원가 어려울 수 있으므로, 확보하고 있는 물자는 아껴서 사용합니다.</strong></li>
        </ul>
        <strong class="title_03">물이 빠진 후</strong>
        <ul class="contextIndent_twoDepList">
            <li><strong class="dash_bulTxt_txtIndent">- 침수로 인하여 지반 및 도로가 약해져서 붕괴위험이 있으므로, 재난안전본부 등의 별도 안내가 있기 전까지 무분별한 이동을 자제하며, 안전이 확인된 이후 이동 및 귀가합니다.</strong></li>
            <li><strong class="dash_bulTxt_txtIndent">- 집에 도착한 후에도 붕괴 가능성을 사전에 점검하고 들어가야 하며, 이상이 의심될 경우에는 재난안전본부 및 소방서 등에 점검을 요청합니다.</strong></li>
            <li><strong class="dash_bulTxt_txtIndent">- 집이 파손되었을 경우에는 임시대피소로 이동하고 재난관리기관에 복구지원을 요청합니다.</strong></li>
            <li><strong class="dash_bulTxt_txtIndent">※ 그림 출처 : 댐붕괴 위기관리 표준매뉴얼</strong></li>
        </ul>
    </ul>
    
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 산업교통재난대응과 (044-205-6340) <br> 소관부서 : 환경부 수자원개발과 김지원 (044-201-7688)</strong>
        </div>
</div>

<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>