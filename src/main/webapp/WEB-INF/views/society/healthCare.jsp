
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
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


<style type="text/css">
    #tdName{ 
        text-align : center; 
        padding : 82px 0; 
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
        <h3 id="tbmainlab" class="level2_title">보건의료재난</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <!-- 텍스트 시작부분  -->
    
    <div class="text_area">
        <div class="contextIndent_oneDepList">
            <strong class="title_03">의료기관·약국 집단휴진·파업 시</strong>
        </div>
        <div class="contextIndent_twoDepList">
            <div>           
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">○ 의료기관 종사자 파업 시에도 응급환자 진료, 중환자실 운영 등 필수진료는 중단 없이 계속됩니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent">○ 외래진료나 의약품 처방이 필요한 경우에는 의료기관(약국) 방문 전 지역 보건소 또는 아래 기관에 전화나 인터넷 등을 통해 진료(처방)가능 여부를 미리</span></li>
                    <li><span class="dash_bulTxt_txtIndent">&nbsp;&nbsp;&nbsp;&nbsp;확인하시기 바랍니다.</span></li>
                </ul>
            </div>
        </div>  
        <table class="tbl-type01 type01-1 mt10 text_indent_0">
            <caption>구분, 기관명, 연락처</caption>
            <colgroup>
                <col style="width : 25%" /><col /><col />
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">구분</th>
                    <th scope="col">기관명</th>
                    <th scope="col">연락처</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td rowspan='3' id="tdName">전화</td>
                    <td>보건복지부 콜센터</td>
                    <td>129</td>
                </tr>
                <tr>
                    <td>건강보험공단</td>
                    <td>1577-1000</td>
                </tr>
                <tr>
                    <td>건강보험심사평가원</td>
                    <td>1644-2000</td>
                </tr>
                <tr>
                    <td rowspan='2' id="tdName" style="padding:50px 0;">인터넷</td>
                    <td>응급의료포털</td>
                    <td>www.e-gen.or.kr/egen</td>
                </tr>
                <tr>
                    <td>건강보험심사평가원</td>
                    <td>www.hira.or.kr</td>
                </tr>
            </tbody>
        </table>
        <br>
        <div class="contextIndent_twoDepList">
            <div class="prevent_text_grid">         
                <ul class="contextIndent_twoDepList">
                    <li><span class="dash_bulTxt_txtIndent">○ 의사 집단행동으로 인한 피해상담은 피해신고지원센터로 연락하시기 바랍니다.</span></li>
                    <li><span class="dash_bulTxt_txtIndent2">* (이용방법) 보건복지상담센터(129) - 안내멘트 후 8번 버튼 누르면 연결</span></li>
                </ul>
            </div>
        </div>
        <div class="contextIndent_twoDepList"">
            <div class="prevent_text_grid">
                <ul class="contextIndent_twoDepList" style="padding-top: 12px;">
                    <li><span class="dash_bulTxt_txtIndent">○ 아래 13개 품목의 안전상비의약품은 24시간 운영하는 일부 편의점 등 약국 이외의 장소에서 구매 가능합니다.</span></li>
                </ul>
            </div>
        </div>
        <table class="tbl-type01 type01-1 mt10 text_indent_0">
            <caption>효능군, 품목명</caption>
            <colgroup>
                <col style="width : 25%" /><col />
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">효능군</th>
                    <th scope="col">품목명</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>해열진통제</td>
                    <td>타이레놀정 500mg, 타이레놀정 160mg, 어린이용타이레놀정 80mg, 어린이타이레놀현탁액, 어린이부루펜시럽</td>
                </tr>
                <tr>
                    <td>감기약</td>
                    <td>판콜에이내복액, 판피린티정</td>
                </tr>
                <tr>
                    <td>소화제</td>
                    <td>베아제정, 닥터베아제정, 훼스탈골드정, 훼스탈플러스정</td>
                </tr>
                <tr>
                    <td>파 스</td>
                    <td>제일쿨파프, 신신파스아렉스</td>
                </tr>
            </tbody>
        </table>    
        
        <div class="contextIndent_oneDepList">
            <strong class="title_03">혈액 수급 부족 시</strong>
            <li><span class="dash_bulTxt_txtIndent">○ 가까운 헌혈의 집에 방문하여 헌혈에 동참해 주시기 바랍니다.</span></li>
        </div>      
        <table class="tbl-type01 type01-1 mt10 text_indent_0">
            <caption>혈액원, 연락처, 주소</caption>
            <colgroup>
                <col style="width : 18%" /><col style="width : 10%; text-align: center;"/><col style="width : 44%"/>
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">혈액원</th>
                    <th scope="col">연락처</th>
                    <th scope="col">주소</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>서울중앙혈액원</td>
                    <td>02-6711-0152</td>
                    <td>서울특별시 강서구 공항대로 591</td>
                </tr>
                <tr>
                    <td>서울남부혈액원</td>
                    <td>02-570-0633</td>
                    <td>서울특별시 강남구 개포로31길 48</td>
                </tr>
                <tr>
                    <td>서울동부혈액원</td>
                    <td>02-2092-9344</td>
                    <td>서울특별시 노원구 동일로  1329</td>
                </tr>
                <tr>
                    <td>부산혈액원</td>
                    <td>051-810-9032</td>
                    <td>부산광역시 부산진구 전포대로 168</td>
                </tr>
                <tr>
                    <td>경기혈액원</td>
                    <td>031-220-8535</td>
                    <td>경기도 수원시 영통구 월드컵로 82번길 20(원천동)</td>
                </tr>
                <tr>
                    <td>인천혈액원</td>
                    <td>032-810-1371</td>
                    <td>인천광역시 연수구 연수동 함박뫼로 220</td>
                </tr>
                <tr>
                    <td>강원혈액원</td>
                    <td>033-269-1032</td>
                    <td>강원도 춘천시 퇴계공단1길 8</td>
                </tr>
                <tr>
                    <td>충북혈액원</td>
                    <td>043-230-8741</td>
                    <td>충청북도 청주시 흥덕구 가로수로 1000</td>
                </tr>
                <tr>
                    <td>대전․세종․충남혈액원</td>
                    <td>042-620-0572</td>
                    <td>대전광역시 대덕구 송촌남로 22</td>
                </tr>
                <tr>
                    <td>전북혈액원</td>
                    <td>063-270-5821</td>
                    <td>전라북도 전주시 덕진구 혁신로 463</td>
                </tr>
                <tr>
                    <td>광주전남혈액원</td>
                    <td>062-600-0622</td>
                    <td>광주광역시 남구 서문대로 406</td>
                </tr>
                <tr>
                    <td>대구경북혈액원</td>
                    <td>053-605-5630</td>
                    <td>대구광역시 중구 태평로 7</td>
                </tr>
                <tr>
                    <td>경남혈액원</td>
                    <td>055-270-6023</td>
                    <td>경상남도 창원시 의창구 용지로 226</td>
                </tr>
                <tr>
                    <td>울산혈액원</td>
                    <td>052-210-8532</td>
                    <td>울산광역시 중구 함월10길 25</td>
                </tr>
                <tr>
                    <td>제주혈액원</td>
                    <td>064-720-7852</td>
                    <td>제주특별자치도 제주시 오남로 45</td>
                </tr>
                <tr>
                    <td>한마음혈액원</td>
                    <td>02-6918-2045</td>
                    <td>경기도 군포시 산본로48번길 8(당정동)</td>
                </tr>
                <tr>
                    <td>한마음혈액원<br>권역헌혈센터(대전)</td>
                    <td style="vertical-align: middle">042-710-7128</td>
                    <td style="vertical-align: middle">대전광역시 동구 동부로2</td>
                </tr>
            </tbody>
        </table>    
    
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title"> 소관부서   : 보건복지부 의료기관정책과 안영도/박형표 주무관(의료기관) 044-202-2484/2473<br>
                                        　　　　　보건복지부 의료기관정책과 양대형/진희진 주무관(약국) 044-202-2486/2491<br>
                                        　　　　　보건복지부 혈액장기정책과 강재희 사무관/신지용 주무관(혈액) 044-202-2633/2644</strong>
        </div>
    </div>
    
</div>


<!-- Footer -->
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>