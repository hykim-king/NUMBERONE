
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<title>사회재난행동요령</title>
<link href="/ehr/resources/css/common.css"  rel="stylesheet"/>
<link href="/ehr/resources/css/layout2.css" rel="stylesheet" />
<link href="/ehr/resources/css/content.css" rel="stylesheet" />
<link href="/ehr/resources/css/dp_sub.min.css" rel="stylesheet" />

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
        <h2 class="level1_title">사회재난시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 id="tbmainlab" class="level2_title">정보통신사고</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <!-- 텍스트 시작부분  -->
    
    <h4 class="title_02" style="display:none;">정보통신사고 국민행동요령</h4>
    
    <div class="contextIndent_twoDepList">
        <div class="dash_bulTxt_txtIndent">
        <img id="img01" alt="정보통신사고국민행동요령_1" class="img_hand_clean unload_rsc" src="" style="width:568px; height:820px;"><img id="img02" alt="정보통신사고국민행동요령_2" class="img_hand_clean unload_rsc" src="" style="width:568px; height:820px;"/>
        </div>
    </div>
    <div class="text_area">
    <div class="contextIndent_oneDepList">
        <strong class="title_03">긴급상황 발생 시 휴대폰 긴급전화</strong>
    </div>
    <div class="prevent02_img_GridWrap">
        <div class="prevent_text_grid">         
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">· 통신이 안되어도 긴급전화(119, 112 등) 연결은 가능합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">· 긴급전화 연결이 안 될 경우 휴대폰 단말기의 유심칩을 제거하면 이용할 수 있습니다.</span></li>
            </ul>
        </div>
    </div>  
    <div class="contextIndent_oneDepList">
        <strong class="title_03">정보통신기기 장애 시 자가 진단</strong>
    </div>
    <div class="prevent02_img_GridWrap">
        <div class="prevent_text_grid">         
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">· 휴대폰이 안 될 경우에 전원을 껐다 다시 켜거나, 데이터 네트워크 설정을 확인하거나,유심 분리 후 재장착을 합니다. </span></li>
                <li><span class="dash_bulTxt_txtIndent">· IPTV가 안 될 경우에 셋톱박스 전원을 껐다 다시 켜거나, 인터넷 연결을 확인합니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">· 인터넷이 안 될 경우에 인터넷 연결을 확인하거나, 제품 전원을 껐다 다시 켜거나,휴대폰 테더링을 이용합니다.</span></li>
            </ul>
        </div>
    </div>  
    <div class="contextIndent_oneDepList">
        <strong class="title_03">유선통신 장애로 결제시스템 오류 발생 시 백업서비스 이용</strong>
    </div>
    <div class="prevent02_img_GridWrap">
        <div class="prevent_text_grid">         
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">· 유선 인터넷 장애 시 소상공인께서 보유한 휴대폰의 USB/이더넷 테더링을 통해 결제서비스를 이용할 수 있습니다.</span></li>
                <li><span class="dash_bulTxt_txtIndent">· 휴대폰 설정 → 연결 → 모바일 핫스팟 및 테더링 → USB 또는 이더넷 테더링 선택하여 결제 서비스를 이용합니다.</span></li>
            </ul>
        </div>
    </div>  
    <strong class="title_03">대표번호 착신불가 시 착신전환</strong>
    <div class="prevent_text_grid"">
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 대표번호로 걸려오는 전화를 다른 전화나 휴대폰으로 수신하도록 착신전환을 합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 대표전화의 통신사로 전화하여 통화가 가능한 전화번호(휴대폰 포함)로 착신전환을 신청합니다.</span></li>
        </ul>
    </div>
    
    <div class="contextIndent_oneDepList">
    <strong class="title_03">재난 와이파이 개방 명령 발효 시 재난 와이파이 이용</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 통신재난 발생 시 이동통신 3사는 통신사 상관없이 인터넷을 이용할 수 있도록 재난 와이파이를 개방합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 재난 와이파이 개방 알림 문자를 받으신 후 휴대폰 Wi-Fi 설정에서 Public Wifi Emergency를 선택하여 재난 와이파이를 이용합니다.</span></li>
        </ul>
    </div>
    <div class="contextIndent_oneDepList">
    <strong class="title_03">이동통신 재난로밍 명령 발효 시 재난로밍 이용</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 통신재난 발생 지역에서 장애발생 통신사의 요청이 있을 경우, 과기정통부장관이 재난로밍을 명령합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· LTE, 5G 장애발생 통신사 이용자는 자동으로 타 통신사망의 이용이 가능합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 3G 장애발생 통신사 이용자는 타 통신사 대리점에서 3G 유심을 수령하여 개통하면 이용이 가능합니다. </span></li>
        </ul>
    </div>
    </div>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 과학기술정보통신부 디지털기반안전과 김수연(044-205-6435)</strong>
    </div>
</div>
    
    

<!-- Footer -->
<!--  <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>