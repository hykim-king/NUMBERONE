
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<title>자연재난행동요령</title>
<link href="/ehr/resources/css/common.css"  rel="stylesheet"/>
<link href="/ehr/resources/css/layout2.css" rel="stylesheet" />
<link href="/ehr/resources/css/layout.css" rel="stylesheet"/>
<link href="/ehr/resources/css/content.css" rel="stylesheet" />
<link href="/ehr/resources/css/dp_sub.min.css" rel="stylesheet" />

<!-- Header -->
<script src="/ehr/resources/js/jquery-1.11.1.min.js"></script>
<script src="/ehr/resources/js/common.js"></script>
<script src="/ehr/resources/js/idsi_safekorea_common.js"></script>    
<script src="/ehr/resources/js/content.js"></script>
<style type="text/css">
    #smallFont{
        font-size: 14px;
        margin-left: 10px;
    }
</style>

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
        <h3 id="tbmainlab" class="level2_title">사업장 대규모 인적사고</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    <h4 class="title_02">사업장 대규모 인적사고 발생 시 행동요령</h4>
    <div class="footnote_border">
        <div class="star_bulTxt_w">
            <span class="star_bulTxt">*자료제공 : 고용노동부</span>
        </div>
    </div>
    <br>
    <br>
    
    <!-- 텍스트 시작부분  -->
    
    <h4 class="title_02" style="display:none;">사업장 내 사고 발생시 국민행동요령(폭발사고)</h4>
    
    <div class="text_area">
        <h4 class="title_02">사업장 내 사고 발생시</h4>
        <strong class="title_03">폭발사고란?</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 물질의 상태변화(고체, 액체, 기체) 등 물리적 변화에 의한 것 또는 화학반응에 의한 폭발적인 연소현상</span></li>
            <li><span id="smallFont">&nbsp;[물리적 폭발] 증기폭발(감압), 수증기폭발, 전선(도선)폭발, 압력폭발(가압)</span></li>
            <li><span id="smallFont">&nbsp;[화학적 폭발] 분해폭발, 분진폭발, 중합폭발, 분해·중합폭발, 산화폭발, 촉매폭발</span></li>
        </ul>
    
        <strong class="title_03">폭발사고 발생 시 행동요령</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 사고가 발생하면 사내 방송 등으로 사고를 전파하고, 추가적인 폭발사고에 대비하여 작업자 및 인근 주민을 안전한 장소로 대피시킵니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 안전취약계층(여성, 고령자, 장애인, 외국인)의 작업위치는 동료작업자 등이 항시 파악하여 동료 작업자가 동반하여 대피토록 조치</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사업장 인근 취약시설(요양원, 병원, 학교, 유치원 등)과 비상연락체계 유지 및 대피를 지원합니다.</span></li>
        </ul>
    
        <strong class="title_03">사고 신고방법</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 신속히 소방서(119), 경찰서(112), 고용노동(지)청, 관할 지자체 등에 신고합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 화학물질 누출의 경우 보유화학물질 현황 및 물질 특성을 소방서에 전달</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 언제, 어디서, 어떻게 사고가 발생하였는지, 주요 피해상황 등 입수 가능한 상세 정보를 신고합니다.</span></li>
        </ul>

        <strong class="title_03">폭발사고 발생 시 비상조치</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 가스, 위험물질 공급 밸브류는 신속히 닫아 위험원 공급을 차단합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사고지역은 수습요원 이외에는 접근을 막고 출입을 통제합니다.</span></li>
        </ul>

        <strong class="title_03">사고수습 및 사후처리</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 현장에 출동한 소방서, 경찰관 등 초동조치 요원의 통제에 적극 협조하고 고용노동청(지청), 안전보건공단의 사고수습 활동에 적극 협력하여야 합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사용하고 있는 화학물질의 저장량, 저장위치, 저장방법, 물질특성 등에 대하여 초동조치 요원에게 상세히 안내합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 현장에서 사고수습 활동을 진행·동참하는 인원은 호흡용보호구 등 적정 보호 장비를 착용하여야 하며, 사고수습 후 목욕 등 위생관리를 철저히 해야 합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사업장 및 인근지역 피해현황 등을 파악하여 노동자 및 지역주민의 건강이상 유무를 확인합니다.</span></li>
        </ul>

        
        <h4 class="title_02">사업장 내 화학물질 누출사고 발생 시</h4>
        <strong class="title_03">화학적인자란?</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 누출 또는 화재·폭발로 인하여 건강상 피해를 줄 수 있는 화학물질</span></li>
        </ul>
    
        <strong class="title_03">화학물질 누출사고 시 행동요령</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 사내 방송 등으로 사고를 전파, 2차 피해 방지를 위해 작업자 및 인근 주민을 안전한 장소로 대피시킵니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 안전취약계층(청소년, 여성, 고령자, 장애인, 외국인)의 작업위치는 동료작업자 등이 항시 파악, 동료 작업자를 동반한 대피토록 조치합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사업장 인근 취약시설(요양원, 병원, 학교, 유치원 등)과 비상연락체계 유지 및 대피를 지원합니다.</span></li>
        </ul>
        <strong class="title_03">사고 신고방법</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 신속히 소방서(119), 경찰서(112), 고용노동(지)청, 관할 지자체 등에 신고합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 화학물질 누출의 경우 보유 화학물질 현황 및 물질 특성에 대하여 소방서에 전달</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 언제, 어디서, 어떻게 사고가 발생하였는지, 주요 피해상황 등 입수 가능한 상세 정보를 신고합니다.</span></li>
        </ul>
        <strong class="title_03">화학물질 누출사고 시 비상조치</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 공기호흡기(또는 송기마스크)를 착용하고 인명구조 활동을 하며, 발생원(또는 누출원)을 찾아 신속히 차단합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사고발생 장소는 발생원을 제거 또는 제독 완료 전까지 출입을 통제, 물질 제거작업 완료 후에는 반드시 농도를 측정하여 제거 완료여부를 확인합니다.</span></li>
        </ul>
        <strong class="title_03">사고수습 및 사후처리</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 현장에 출동한 소방서, 경찰관 등 초동조치 요원의 통제에 적극 협조하고 고용노동(지)청, 안전보건공단의 사고수습 활동에 적극 협력하여야 합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사용하고 있는 화학물질의 저장량, 저장위치, 저장방법, 물질특성 등에 대하여 초동조치 요원에게 상세히 안내합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 현장에서 사고수습 활동을 진행·동참하는 인원은 호흡용보호구 등 적정 보호 장비를 착용, 사고수습 후 목욕 등 위생관리 철저히 해야 합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사업장 및 인근지역 피해 현황 등을 파악하여 노동자 및 지역주민의 건강 이상 유무를 확인합니다.</span></li>
        </ul>
        

        

        
        
        <h4 class="title_02">사업장 내 산소결핍‧질식사고 발생 시</h4>
        <strong class="title_03">산소결핍이란?</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 공기 중 산소농도가 18% 미만인 상태</span></li>
            <li><span class="dash_bulTxt_txtIndent">&nbsp;&nbsp;※ 밀폐공간(한 면만 개방되어 환기가 불추운한 장소)은 유해가스 발생에 따라 산소농도가 낮아져 산소결핍 또는 유해가스에 의한 질식·중독위험이 있는 장소</span></li>
        </ul>
        <strong class="title_03">산소결핍‧질식사고 발생 시 행동요령</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 산소결핍이나 유해가스에 의한 질식·중독사고 의심상황 발생 시 즉시 119 또는 사내 안전보건관리팀에 연락합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 구조를 위해 긴급히 밀폐공간에 출입할 때에는 반드시 환기조치 및 호흡용보호구(송기마스크 등)를 착용합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사고발생장소는 수습요원 외 접근통제를 실시합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 밀폐공간 내부의 공기상태를 확인할 수 없거나, 적절한 호흡용보호구가 없을 경우 임의 진입을 금지합니다.</span></li>
        </ul>
        <strong class="title_03">사고 신고방법</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 신속히 소방서(119), 경찰서(112), 고용노동(지)청, 관할 지자체 등에 신고합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 언제, 어디서, 어떻게 사고가 발생하였는지, 주요 피해상황 등 입수 가능한 상세 정보를 신고합니다.</span></li>
        </ul>
        
        <strong class="title_03">밀폐공간 내 출입요령</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 밀페공간 출입 시 작업공간 외부에는 작업 중임을 표시하고 작업전‧중 산소‧유해가스 농도를 측정하고 환기를 실시합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 밀폐공간 외부에 관리감독자(감시인) 배치, 인명구조를 위한 수직구명줄 설치 및 근로자 안전대 착용, 여분의 호흡용보호구 구비</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 밀폐공간 외부에는 작업내용, 방법, 시간, 연락처 등을 게시</span></li>
        </ul>
        <strong class="title_03">사고수습 및 사후처리</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 현장에 출동한 소방서, 경찰관 등 초동조치 요원의 통제에 적극 협조하고 고용노동(지)청, 안전보건공단의 사고수습 활동에 적극 협력하여야 합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사용하고 있는 화학물질의 저장량, 저장위치, 저장방법, 물질특성 등에 대하여 초동조치 요원에게 상세히 안내합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 현장에서 사고수습 활동을 진행·동참하는 인원은 호흡용보호구 등 적정 보호 장비를 착용, 사고수습 후에는 목욕 등 위생관리를 철저히 해야 합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사업장 및 인근지역 피해현황 등을 파악하여 노동자 및 지역주민의 건강 이상 유무를 확인합니다.</span></li>
        </ul>


        
        
        <h4 class="title_02">사업장 내 구조물 붕괴사고 발생시</h4>
        <strong class="title_03">건설현장 구조물 붕괴사고란?</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 비계, 동바리, 흙막이가시설 등 가설구조물 붕괴가 상대적으로 많이 발생합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 본구조물 붕괴는 주로 기존 건물을 해체하거나 인접해 있는 굴착공사 현장의 영향으로 발생합니다.</span></li>
        </ul>
    
        <strong class="title_03">구조물 붕괴사고 발생 시 행동요령</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 주기적 현장점검을 통한 사전징후(구조물 균열, 인접 도로·인도 꺼짐 등) 포착</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 사전징후 포착 시 구조물 안전진다을 실시하고 그에 따른 보강조치 실시</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 붕괴사고 발생 시 건설현장 내 작업인원 및 대피인원, 매몰자현황 파악 후 119에 전달</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 추가 붕괴우려 있을 경우 위험반경 내 근로자·행인 등 접근급지조치 실시 </span></li>
        </ul>
    
        <strong class="title_03">사고 신고방법</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 신속히 소방서(119), 경찰서(112), 고용노동(지)청, 관할 지자체 등에 신고 합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 언제, 어디서, 어떻게 사고가 발생하였는지, 주요 피해상황 등 입수 가능한 상세 정보를 신고합니다.</span></li>
        </ul>

        <strong class="title_03">구조물 붕괴사고 시 비상조치</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 건설현장에서 구조물이 붕괴된 경우에는 지정된 대피장소(안전한 장소)로 이동 후 유관기관에 신고합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 붕괴된 자재, 파편 등 위험물에 접촉을 금지합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 현장 관계자에게 사고사실을 전파하고 사고현장 주변을 통제하는 등 조치를 실시합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 근로자가 매몰되어 구조의 필요성이 있는 경우 섣불리 구조하러 현장에 진입하지 말고 119 구급대에게 사고 상황을 및 피해현황을 설명합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 추가 붕괴에 따른 2차 피해 우려가 있으므로 사고현장에 근로자·행인 등 접근금지조치를 실시합니다.</span></li>
        </ul>

        <strong class="title_03">사고수습 및 사후처리</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 현장에 출동한 소방서, 경찰관 등 초동조치 요원의 통제에 적극 협조하고 고용노동(지)청, 안전보건공단의 사고수습 활동에 적극 협력하여야 합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 현장에서 사고수습 활동을 진행·동참하는 인원은 안전모, 안전대 등 적정 보호 장비를 착용, 사고수습 후 목욕 등 위생관리에 철저히 해야 합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사업장 및 인근지역 피해현황 등을 파악하여 노동자 및 지역주민의 건강이상 유무를 확입합니다.</span></li>
        </ul>
        
        <h4 class="title_02">사업장 내 화재사고 발생시</h4>
        <strong class="title_03">화재사고란?</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 사업장 내 위험물이 혼합된 공기가 점화원과 접촉하여 화재 발생 및 확산</span></li>
            <li><span class="dash_bulTxt_txtIndent">&nbsp;&nbsp;※ 위험물 : 인화성 가스, 인화성 액체의 증기, 인화성 고체</span></li>
            <li><span class="dash_bulTxt_txtIndent">&nbsp;&nbsp;※ 점화원 : 용접불티, 용단불티, 전기합선, 연마·절단작업에 따른 마찰열 및 스파크 등</span></li>
        </ul>
        <strong class="title_03">화재사고 발생 시 행동요령</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 화재 시 “불이야!”하고 큰소리로 외쳐 다른 사람에게 알리고 화재경보 비상벨을 눌러 사업장에 사고 전파를 실시합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 엘리베이터를 이용하지 말고 계단을 이용하여 낮은 자세로 대피합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 불길 속을 통과할 때에는 물을 적신 담요나 수건 등으로 몸과 얼굴을 감싸고 이동합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사업장 인근 취약시설(요양원, 병원, 학교, 유치원 등)과 비상연락체계를 유지 및 대피를 지원합니다.</span></li>
        </ul>
        <strong class="title_03">사고 신고방법</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 신속히 소방서(119), 경찰서(112), 고용노동(지)청, 관할 지자체 등에 신고합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 언제, 어디서, 어떻게 사고가 발생하였는지, 주요 피해상황 등 입수 가능한 상세 정보를 신고합니다.</span></li>
        </ul>
        <strong class="title_03">화재사고 발생 시 비상조치</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 소화기 등을 이용하여 초기진화를 노력, 초기 소화가 힘들 경우는 즉시 대피합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 침착하게 불이 난 장소의 위치, 화재상태, 갇힌 사람의 유무 등을 119로 신고하여야 합니다.</span></li>
        </ul>
        <strong class="title_03">사고수습 및 사후처리</strong>
        <ul class="contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">· 현장에 출동한 소방서, 경찰관 등 초동조치 요원의 통제에 적극 협조하고 고용노동(지)청, 안전보건공단의 사고수습 활동에 적극 협력하여야 합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사용하고 있는 화학물질 저장량, 저장방법, 물질특성 등에 대하여 초동조치 요원에게 상세히 안내합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 현장에서 사고수습 활동을 진행·동참하는 인원은 호흡용보호구 등 적정 보호 장비를 착용, 사고수습 후 목욕 등 위생관리를 철저히 해야 합니다.</span></li>
            <li><span class="dash_bulTxt_txtIndent">· 사업장 및 인근지역 피해현황 등을 파악하여 노동자 및 지역주민의 건강이상 유무를 확인합니다.</span></li>
        </ul>
    </div>
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">
            소관부서 : 고용노동부 화학사고예방과 김상범 전문위원 (044-202-8972)<br>
            소관부서 : 산업교통재난대응과 (044-205-6322)
        </strong>
    </div>
</div>
    
    

<!-- Footer -->
<!--  <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>