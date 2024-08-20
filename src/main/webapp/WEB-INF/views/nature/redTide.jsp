
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
<!-- -------------------------------------------------------- -->
<!-- 컨텐츠 시작                                              -->
<!-- -------------------------------------------------------- -->

<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">자연재난행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">적조</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <div>
        <div class="ir">
        </div>
            <h4 class="title_02" style="">적조 발생 전 행동요령</h4>
            
            <strong class="title_03">해상가두리 양식어업인</strong>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">         
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">· 적조발생 및 진행상황 정보수집, 대응체제 사전 준비를 합니다.<br>- 국립수산과학원 적조정보시스템(<a href ="https://www.nifs.go.kr/board/actionRedtideInfoList.do" style="color: #0000ff; text-decoration: underline;" target="_blank" title="국립수산과학원 적조정보시스템">https://www.nifs.go.kr/board/actionRedtideInfoList.do</a>) 적조속보 참고 </span></li>
                        <li><span class="dash_bulTxt_txtIndent">· 액화산소 공급시설, 콤프레샤, 현미경 등 적조대응 장비를 점검하고 조류제거물질을 사전에 준비합니다.</span></li>
                        <li><span class="dash_bulTxt_txtIndent">· 적조진행 상황에 따라 대응할 수 있는 선박, 예비그물 등을 준비 합니다.</span></li>
                    </ul>
                </div>
            </div>  
            <strong class="title_03" >육상 해수양식 어업인</strong>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">         
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">· 적조발생 및 진행상황 정보수집, 대응체제 사전 준비를 합니다.<br>- 국립수산과학원 적조정보시스템(<a href ="https://www.nifs.go.kr/board/actionRedtideInfoList.do" style="color: #0000ff; text-decoration: underline;" target="_blank" title="국립수산과학원 적조정보시스템">https://www.nifs.go.kr/board/actionRedtideInfoList.do</a>) 적조속보 참고 </span></li>
                        <li><span class="dash_bulTxt_txtIndent">· 적조경보기, 해수 여과시설, 산소발생기, 액화산소공급기 등 적조대응장비 사전점검 및 정비를 철저히 합니다.</span></li>
                        <li><span class="dash_bulTxt_txtIndent">· 양식장 취수구 및 배출구 주변에 조류제거물질을 비치합니다.</span></li>
                        <li><span class="dash_bulTxt_txtIndent">· 예비 사육수를 최대한 비축합니다.</span></li>
                    </ul>
                </div>
            </div>  
            <h4 class="title_02">적조 발생 시 행동요령</h4>
                <strong class="title_03">해상가두리 양식어업인</strong>
                <div class="prevent02_img_GridWrap">
                    <div class="prevent_text_grid">         
                        <ul class="contextIndent_twoDepList">
                            <li><span class="dash_bulTxt_txtIndent">· 적조 진행상황에 따라 필요할 경우, 조류제거물질을 사용하여 초동방제를 합니다.</span></li>
                            <li><span class="dash_bulTxt_txtIndent">· 적조발생 및 진행상황 정보수집, 비상체제에 들어갑니다.</span></li>
                            <li><span class="dash_bulTxt_txtIndent">· 유관기관, 단체 적조 방제선을 양식단지에 집중 배치합니다.</span></li>
                            <li><span class="dash_bulTxt_txtIndent">· 양식장에 적조 유입 시 방제선 등으로 조류제거물질 살포 등 방제를 합니다.</span></li>
                            <li><span class="dash_bulTxt_txtIndent">· 액화산소 공급시설, 콤프레샤 등 적조 대응장비를 가동합니다.</span></li>
                            <li><span class="dash_bulTxt_txtIndent">· 적조 진행상황에 사전방류 및 사전대피(이동)를 실시합니다. </span></li>
                            <li><span class="dash_bulTxt_txtIndent">· 적조 진행상황에 따라 입체적 대응 방제체제를 확립합니다.</span></li>
                        </ul>
                    </div>
                </div>  
                <strong class="title_03">육상 해수양식 어업인</strong>
                <div class="prevent02_img_GridWrap">
                    <div class="prevent_text_grid">         
                        <ul class="contextIndent_twoDepList">
                            <li><span class="dash_bulTxt_txtIndent">· 적조발생 및 진행상황 정보수집, 대응체제 사전 준비를 철저히 합니다.</span></li>
                            <li><span class="dash_bulTxt_txtIndent">· 양식장 주변 해역에서 적조 시료를 수시로 채집, 관찰합니다.</span></li>
                            <li><span class="dash_bulTxt_txtIndent">· 적조경보기, 해수 여과시설, 산소발생기, 액화산소공급기 등 적조대응장비를 가동합니다.</span></li>
                            <li><span class="dash_bulTxt_txtIndent">· 양식장 취수구 및 배출구 주변에 조류제거물질을 비치하고 필요할 경우 살포합니다.</span></li>
                            <li><span class="dash_bulTxt_txtIndent">· 야간에 고밀도 적조가 양식장 주변에 접근 시 가능하면 환수를 중단하고, 액화산소 공급 등 비상체제에 들어갑니다.</span></li>
                            <li><span class="dash_bulTxt_txtIndent">· 적조가 내습하면 먹이 공급을 일시 중단합니다.</span></li>
                        </ul>
                    </div>
                </div>  
            
            <h4 class="title_02">적조 소멸 시 행동요령</h4>
            <div class="prevent02_img_GridWrap">
                <div class="prevent_text_grid">         
                    <ul class="contextIndent_twoDepList">
                        <li><span class="dash_bulTxt_txtIndent">· 어류 폐사 등 피해가 발생하였다면 시·군·구청이나 읍·면·동 센터에 피해 신고를 합니다.</span></li>
                        <li><span class="dash_bulTxt_txtIndent">· 사유시설 등 피해 현장은 반드시 사진을 찍어 두십시오.</span></li>
                        <br>
                    </ul>
                </div>
            </div>
            
            
            
        <img alt="양식어장 사육관리 요령 관리" id="img01" class="unload_rsc" margin="auto;" src="" style="width: 647px;height:812px;"/> 
    </div>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 해양수산부 어촌양식정책과 손혜원(044-200-5622)</strong>
    </div>
    
</div>
    
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>