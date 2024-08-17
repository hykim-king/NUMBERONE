
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

<!-- font css -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">
<link href="/ehr/resources/css/behavior.css" rel="stylesheet" />

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


<!-- 정보통신사고 사고 -->
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
        <h2 class="level1_title">자연재난행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 id="tbmainlab" class="level2_title">우주전파재난</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <!-- 텍스트 시작부분  -->
    
    <h4 class="title_02" style="display:none;">우주전파재난시 국민행동요령</h4>
    
    <div class="contextIndent_twoDepList">
        <img id="img01" alt="우주전파재난사고국민행동요령_1" class="img_hand_clean unload_rsc" src=""/>
        <img id="img02" alt="우주전파재난사고국민행동요령_2" class="img_hand_clean unload_rsc" src=""/>
    </div>
    <div class="text_area">
    
    <div class="contextIndent_oneDepList">
        <strong class="title_03">일반 행동요령</strong>
    </div>
    <div class="prevent02_img_GridWrap">
        <div class="prevent_text_grid">         
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">· 스마트폰(“RRA Space Weather”앱), 인터넷(우주전파센터), 재난안전방송, TV, 라디오 등으로 </span></li>
                <li><span class="dash_bulTxt_txtIndent">&nbsp;우주전파재난 상황을 파악하여 주변 사람들과 관련 사항을 공유합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">· 관련 기관은 우주전파재난이 발생하여 위성, 항공, 항법, 전력, 방송통신 분야에 영향을 받을 경우 </span></li>
                <li><span class="dash_bulTxt_txtIndent">&nbsp;실무·행동매뉴얼에 따라 해당 지역에 신속히 상황을 전파하고 대응합니다.</span></li>
            </ul>
        </div>
    </div>  
    
    <strong class="title_03">방송(위성·단파·DMB·UHD) 시청자 행동요령</strong>
    <div class="prevent_text_grid"">
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 위성·단파 방송이 간헐적으로 끊기거나 두절되는 경우 장애가 해소될 때까지 지상 방송을 시청하시고</span></li>
            <li><span class="dash_bulTxt_txtIndent">&nbsp;재난 상황이 해소된 후 위성·단파 방송을 재수신합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· GPS 신호를 기준 동기신호를 사용하는 DMB, UHD 방송 등의 경우 해당 방송의 직접 수신에 장애가 발생할 수 </span></li>
            <li><span class="dash_bulTxt_txtIndent">&nbsp;있으며, 재난 상황이 해소된 후 방송을 재수신합니다.</span></li>
        </ul>
    </div>
    
    <div class="contextIndent_oneDepList">
    <strong class="title_03">항공기 이용객 행동요령</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 북극항로를 운항하는 항공기의 우주방사선 피폭선량이 증가하거나, 항공기 통신에 장애가 발생할 수 있으니</span></li>
            <li><span class="dash_bulTxt_txtIndent">&nbsp;승무원의 브리핑에 귀를 기울여주시고, 항공사의 우회 운항 조치 등 승무원의 안내에 따라주셔야 합니다.</span></li>
        </ul>
    </div>
    <div class="contextIndent_oneDepList">
    <strong class="title_03">항법 수신기기 이용자 행동요령</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· (차량 운전자) 네비게이션의 경로 오차 발생 가능성이 커지므로 안전운전에 유의합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· (핸드폰 사용자) 위치기반서비스에 오차 발생 가능성이 커지므로 이용에 주의를 기울입니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· (드론 사용자) 드론의 비행 상태에 오류가 발생할 수 있으므로 사용을 자제합니다.</span></li>
        </ul>
    </div>
    <div class="contextIndent_oneDepList">
    <strong class="title_03">선박 운항 시 행동요령</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· (선박 출항 전) 단파통신이 간헐적으로 끊기거나 두절될 수 있으므로 단파 통신만 가능한 선박은 출항을 자제합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· (선박 출항 중) 단파 통신 장애 또는 GPS 장비의 수신 오류가 증가될 수 있으니, 레이더 또는 지문항법(지형지물) 등을 활용하여 가능한 빠른 시간 내엥 귀항하며, 필요시 통신장비 또는 휴대폰을 이용하여 해양경찰에 도움을 요청합니다.</span></li>
        </ul>
    </div>
    <div class="contextIndent_oneDepList">
    <strong class="title_03">정전 발생 시 행동요령</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 가정 내 손전등, 비상식음료, 휴대용 라디오, 무선전력기기, 비상 충전기 등을 사전에 준비해두며, 컴퓨터 등 정밀기기를 사용하는 곳에서는 무정전전원공급장치(UPS)를 설치하면 피해를 예방할 수 있습니다.</span></li>
        </ul>
    </div>
    </div>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 과학기술정보통신부 디지털기반안전과 문석주(044-202-6439)</strong>
    </div>
</div>
    
    

<!-- Footer -->
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>