
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
        <h2 class="level1_title">사회재난시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">미세먼지</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
        <h4 class="title_02">미세먼지가 인체에 미치는 영향</h4>
        <ul class="contextIndent_oneDepList">
            <li><span class="dot_bulTxt_txtIndent">· 미세입자들은 먼지 핵에 여러 종류의 오염물질이 엉겨 붙어 구성된 것으로 호흡기를 통하여 인체 내에 유입될 수 있다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">· 장기간 흡입 시, 입자가 미세할수록 코점막을 통해 걸러지지 않고 흡입 시 허파꽈리까지 직접 침투하기에 천식이나 폐 질환의 유병률, 조기사망률 증가에 영향을 줄 수 있다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">· 대부분의 연구를 따르면 장기적, 지속적 노출 시 건강영향이 나타나며 단시간 흡입으로 갑자기 신체변화가 나타나지는 않는다고 알려졌다. 그러나 어린이·노인·호흡기 질환자 등 민감 군은 일반인보다 건강영향이 클 수 있어 더 각별한 주의가 필요하다.</span></li>
        </ul>
        <div class="contextIndent_oneDepList">
            <img id="img01" class="unload_rsc" alt="미세먼지의 상대적 크기비교 :  머리카락 50~70마이크로미터, 미세먼지 PM10 - 10마이크로미터, 미세먼지 2.5 - 2.5마이크로미터 / 미세먼지가 인체에 미치는 영향 :  눈 - 알레르기성 결막염, 각막염 코 - 알레르기성 비염 기관지 - 기관지염, 폐기종, 천식 / 2.5마이크로미터 미만 미세먼지는 폐 속 깊이 침투해 허파꽈리에 흡착, 허파꽈리를 손상" src=""/>
        </div>
        <h4 class="title_02">미세먼지 많은 날 생활수칙</h4>
        <strong class="title_03">미세먼지 예보 등급</strong>
        <div class="boardList_boxWrap">
            <table class="minCell_four infoType_table">
                <caption>미세먼지 예보 등급으로 예보구간, 상태별 농도로 구성되어있습니다.</caption>
                <colgroup>
                    <col style="width:20%">
                    <col style="width:20%">
                    <col style="width:20%">
                    <col style="width:20%">
                    <col style="width:20%">
                </colgroup>
                <thead>
                    <tr>
                        <th scope=col><span>예보구간</span></th>
                        <th scope=col><span>좋음</span></th>
                        <th scope=col><span>보통</span></th>
                        <th scope=col><span>나쁨</span></th>
                        <th scope=col><span>매우나쁨</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><span>예측농도(㎛/㎥) - PM<sub>10</sub></span></td>
                        <td><span>0~30㎛/㎥</span></td>
                        <td><span>31~80㎛/㎥</span></td>
                        <td><span>81~150㎛/㎥</span></td>
                        <td><span>151㎛/㎥ 이상</span></td>
                    </tr>
                    <tr>
                        <td><span>예측농도(㎛/㎥) - PM<sub>2.5</sub></span></td>
                        <td><span>0~15㎛/㎥</span></td>
                        <td><span>16~35㎛/㎥</span></td>
                        <td><span>36~75㎛/㎥</span></td>
                        <td><span>76㎛/㎥ 이상</span></td>
                    </tr>
                    <tr>
                        <td><span>예측농도(ppm) - O<sub>3</sub></span></td>
                        <td><span>0~0.030</span></td>
                        <td><span>0.031~0.090</span></td>
                        <td><span>0.091~0.150</span></td>
                        <td><span>0.151 이상</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <h5 class="level4_title">미세먼지 행동요령 - 민감군</h5>
        <ul class="contextIndent_oneDepList contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">- 보통 : 실외활동 시 특별히 행동에 제약을 받을 필요는 없지만 몸 상태에 따라 유의하여 활동</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 나쁨 : 장시간 또는 무리한 실외활동 제한, 특히 천식을 앓고 있는 사람이 실외에 있는 경우 흡입기를 더 자주 사용할 필요가 있음</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 매우나쁨 : 가급적 실내활동, 실외 활동 시 의사와 상의</span></li>
        </ul>
        <h5 class="level4_title">미세먼지 행동요령 - 일반인</h5>
        <ul class="contextIndent_oneDepList contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">- 나쁨 : 장시간 또는 무리한 실외활동 제한, 특히 눈이 아픈 증상이 있거나, 기침이나 목의 통증으로 불편한 사람은 실외활동을 피해야 함</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 매우나쁨 : 장시간 또는 무리한 실외 활동제한, 목의 통증과 기침 등의 증상이 있는 사람은 실외활동을 피해야 함</span></li>
        </ul>
        <h5 class="level4_title">오존 행동요령 - 민감군</h5>
        <ul class="contextIndent_oneDepList contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">- 보통 : 실외활동시 특별히 행동에 제약을 받을 필요는 없지만 몸상태에 따라 유의하여 활동</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 나쁨 : 장시간 또는 무리한 실외활동 제한</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 매우나쁨 : 가급적 실내활동</span></li>
        </ul>
        <h5 class="level4_title">오존 행동요령 - 일반인</h5>
        <ul class="contextIndent_oneDepList contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">- 나쁨 : 장시간 또는 무리한 실외활동 제한 특히 눈이 아픈 증상이 있는 사람은 실외활동을 피해야 함</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 매우나쁨 : 실외에서의 활동을 제한하고 실내생활 권고</span></li>
        </ul>
        <div class="contextIndent_twoDepList star_fcRed_bulTxt_w">
            <span class="star_bulTxt">*</span>
            <span>민감군 : 어린이, 노인, 천식 같은 폐질환 및 심장질환을 앓고 있는 어른</span>
        </div>
        <h4 class="title_02">미세먼지 발생 시 국민행동요령</h4>
        <strong class="title_03">경보기준 및 행동요령</strong>
        <div class="boardList_boxWrap">
            <ul class="infoType_listWrap">
                <li class="infoType_listCell">
                    <span class="insrance03_listTitle">PM<sub>10</sub> 주의보 발령</span>
                    <div class="oneArea_listCont insrance01_oneArea_listCont">
                        <span class="dot_bulTxt_txtIndent">· 시간당 평균 농도가 150㎛/㎥ 이상 2시간 이상 지속인 때</span>
                    </div>
                </li>
                <li class="infoType_listCell">
                    <span class="insrance03_listTitle">PM<sub>10</sub> 주의보 해제</span>
                    <div class="oneArea_listCont insrance01_oneArea_listCont">
                        <span class="dot_bulTxt_txtIndent">· 시간당 평균 농도가 100㎛/㎥ 미만인 때</span>
                    </div>
                </li>
                <li class="infoType_listCell">
                    <span class="insrance03_listTitle">PM<sub>10</sub> 경보 발령</span>
                    <div class="oneArea_listCont insrance01_oneArea_listCont">
                        <span class="dot_bulTxt_txtIndent">· 시간당 평균 농도가 300㎛/㎥ 이상 2시간 이상 지속인 때</span>
                    </div>
                </li>
                <li class="infoType_listCell">
                    <span class="insrance03_listTitle">PM<sub>10</sub> 경보 해제</span>
                    <div class="oneArea_listCont insrance01_oneArea_listCont">
                        <span class="dot_bulTxt_txtIndent">· 시간당 평균 농도가 150㎛/㎥ 미만인 때</span>
                    </div>
                </li>
                <li class="infoType_listCell">
                    <span class="insrance03_listTitle">PM<sub>2.5</sub> 주의보 발령</span>
                    <div class="oneArea_listCont insrance01_oneArea_listCont">
                        <span class="dot_bulTxt_txtIndent">· 시간당 평균 농도가 90㎍/㎥ 이상 2시간 이상 지속인 때</span>
                    </div>
                </li>
                <li class="infoType_listCell">
                    <span class="insrance03_listTitle">PM<sub>2.5</sub> 주의보 해제</span>
                    <div class="oneArea_listCont insrance01_oneArea_listCont">
                        <span class="dot_bulTxt_txtIndent">· 시간당 평균 농도가 50㎍/㎥ 미만인 때</span>
                    </div>
                </li>
                <li class="infoType_listCell">
                    <span class="insrance03_listTitle">PM<sub>2.5</sub> 경보 발령</span>
                    <div class="oneArea_listCont insrance01_oneArea_listCont">
                        <span class="dot_bulTxt_txtIndent">· 시간당 평균 농도가 180㎍/㎥ 이상 2시간 이상 지속인 때</span>
                    </div>
                </li>
                <li class="infoType_listCell">
                    <span class="insrance03_listTitle">PM<sub>2.5</sub> 경보 해제</span>
                <div class="oneArea_listCont insrance01_oneArea_listCont">
                    <span class="dot_bulTxt_txtIndent">· 시간당 평균 농도가 90㎍/㎥ 미만인 때</span>
                </div>
                </li>
            </ul>
        </div>
        <h5 class="level4_title">주의보 시 행동요령</h5>
        <ul class="contextIndent_oneDepList contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">- 민감군(어린이·노인·폐질환 및 심장질환자)은 실외활동 제한 및 실내생활 권고</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 일반인은 장시간 또는 무리한 실외활동을 줄임(특히, 눈이 아프거나, 기침 또는 목의 통증이 있는 경우 실외활동 자제)</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 부득이 외출 시 황사(보호) 마스크 착용(폐 기능 질환자는 의사와 충분한 상의 후 사용권고)</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 교통량이 많은 지역 이동 자제</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 유치원·초등학교 실외수업 자제</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 공공기관 운영 야외 체육시설 운영 제한</span></li>
            <li><p class="dash_bulTxt_txtIndent">- 공원·체육시설·고궁·터미널·철도 및 지하철 등을 이용하는 시민에게 과격한 실외활동 자제 홍보</p></li>
        </ul>
        <h5 class="level4_title">경보 시 행동요령</h5>
        <ul class="contextIndent_oneDepList contextIndent_twoDepList">
            <li><span class="dash_bulTxt_txtIndent">- 민감군(어린이·노인·폐질환 및 심장질환자)은 실외활동 금지(실외활동 시 의사와 상의)</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 일반인은 장시간 또는 무리한 실외활동 자제(기침 또는 목의 통증이 있는 경우 실내생활 유지)</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 부득이 외출 시 황사(보호) 마스크 착용</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 교통량이 많은 지역 가급적 이동 금지</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 유치원·초등학교 실외수업 금지, 수업단축 또는 휴교</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 중·고등학교 실외수업 자제</span></li>
            <li><span class="dash_bulTxt_txtIndent">- 공공기관 운영 야회 체육시설 운영 중단</span>
                <span class="dash_bulTxt_txtIndent">- 공원·체육시설·고궁·터미널·철도 및 지하철 등을 이용하는 시민에게 과격한 실외활동 자제 홍보</span></li>
        </ul>
        <div class="contextIndent_oneDepList star_bulTxt_w">
            <span class="star_bulTxt">*</span>
            <span>관련근거 &nbsp;: 대기환경보전법 시행규칙 [별표7]대기오염경보단계별 대기오염물질의 농도기준(제14조 관련)</span>
        </div>
        <h4 class="title_02">미세먼지의 특성</h4>
        <ul class="contextIndent_oneDepList">
            <li><span class="dot_bulTxt_txtIndent">· &nbsp;대기 중 입자가 미세한 크기로 탄소성분(유기 탄소, 원소 탄소), 이온성분(황산염, 질산염, 암모늄), 광물성분 등 종류의 성분이 다양한 혼합물입니다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">· &nbsp;PM<sub>10</sub> : 1,000분의 10mm보다 작은 먼지</span></li>
            <li><span class="dot_bulTxt_txtIndent">· &nbsp;PM<sub>2.5</sub> : 1,000분의 2.5mm보다 작은 먼지, 머리카락 지름(약 60㎛)의 1/20 ~ 1/30</span></li>
        </ul>
        <p class="star_bulTxt_w">
            <span class="star_bulTxt">*</span>
            <span>1㎛ = 1/10<sup>6</sup>m</span>
        </p>
        <h4 class="title_02">미세먼지의 정보 확인</h4>
        <ul class="contextIndent_oneDepList">
            <li><strong class="dot_bulTxt_txtIndent">· &nbsp;대기 중 입자가 미세한 크기로 탄소성분(유기 탄소, 원소 탄소), 이온성분(황산염, 질산염, 암모늄), 광물성분 등 종류의 성분이 다양한 혼합물입니다.</strong>
                <ul class="contextIndent_twoDepList">
                    <li>
                        <span class="dash_bulTxt_txtIndent">- <a href="http://www.airkorea.or.kr" class="windowBlank_link" target="_blank" title="새창열림">에어코리아(환경부 전국 실시간 대기오염도 사이트, www.airkorea.or.kr<i class="windowBlank_imgSet_icon"></i></a></span>
                        <span class="dash_bulTxt_txtIndent">- <a href="http://www.kma.go.kr"      class="windowBlank_link" target="_blank" title="새창열림">기상청 사이트</a></span>
                        <span class="dash_bulTxt_txtIndent">- 일기예보, 대기오염 옥외전광판</span>
                        <span class="dash_bulTxt_txtIndent">- 우리 동네 대기질 어플리케이션(안드로이드 다운로드, 아이폰 다운로드)</span>
                    </li>
                </ul></li>
        </ul>
        <div class="footnote_border">
            <div class="contextIndent_oneDepList star_bulTxt_w">
                <span class="star_bulTxt">*</span>
                <span>자료제공 : 에어코리아(환경부 전국 실시간대기오염도 사이트,
                    <a href='http://www.airkorea.or.kr' class='windowBlank_link' target='_blank' title='새창열림'>www.airkorea.or.kr<i class='windowBlank_imgSet_icon'></i></a>)
                </span>
            </div>
        </div>
        <img id="img02" class="unload_rsc" style="width: 70%;margin-left: 20%;" alt="고농도 미세먼지 7가지 대응요령" src=""/>
        
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">
                소관부서 : 기후재난대응과 이진호 (044-205-6368)<br>
                소관부서 : 국무조정실 미세먼지개선기획단 김세필 (044-200-2925)<br>
                소관부서 : 환경부 대기환경정책과 이필용 (044-201-6871)
            </strong>
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