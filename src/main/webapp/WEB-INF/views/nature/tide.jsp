
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
<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">자연재난 시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">조수</h3>
        <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
        <!-- 행동요령 본문내용 -->
        
            <div class="section01">
                    <h3 class="title_01">진행별 행동요령</h3>
                    <ul class="tablist">
                        <li class="on">
                            <a href="#" onclick="return false">평상시 행동요령</a>
                        </li>
                        <li>
                            <a href="#" onclick="return false">비상시 행동요령</a>
                        </li>
                    </ul>
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     조수로 인한 침수 등의 피해는 달과 태양의 위치에 따라 반복적으로 발생하며, 특히, 백중사리(음력 7월 15일 전후), 대조기(매월 음력 2~4일)에는 해수면 상승으로 침수가 발생할 수 있어 평상시 위험지역, 대피요령 등을 가족이나 이웃과 함께 숙지합니다.
                                 </p>
                              </div>
                              <br>
                              <br>
                                <div class="description_box" style="text-align: inherit;border: 3px solid;">
                                        <p class="description_fcBlack_txt" style="text-align: center;margin-bottom: 20px;"><b style="font-size: 20px;padding: 10px;">대조기</b></p>
                                        <p class="description_fcBlack_txt">그믐ㆍ보름으로부터 2~4일간을 대조기라고 하며, 조류가 상대적으로 빠르게 흐르는 기간입니다. 바닷물은 달ㆍ태양의 인력 외에도 지형, 해저 마찰 등의 영향을 받으므로 그믐ㆍ보름 1~3일 후에 대조기가 발생됩니다.</p>
                                </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">사전준비</h3> 
                              <p>
                                  <strong class="level4_title">1. 과거에 발생했던 내 지역의 정보는 미리미리 확인하고 가족이나 이웃과 함께 공유합니다.</strong>
                                    ∙ 내가 거주하거나 생활하는 지역의 저지대 침수 위험지역을 사전에 확인합니다.
                                    <br>
                                    ∙ 조수(潮水)재난이 발생할 수 있는 백중사리, 대조기 시기를 사전에 확인합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">2. 재난에 대한 위험정보를 수신할 수 있도록 가족이나 이웃과 함께 준비합니다.</strong>
                                    ∙ 조수(潮水)재난이 발생 시 재난 예·경보를 수신할 수 있도록 TV, 라디오 등을 준비하고 스마트폰에 안전디딤돌 앱 등을 미리 설치합니다.<br>
                              </p>
                              <p>
                                  <strong class="level4_title">3. 가족과 사전에 비상에 대비해서 각자 무엇을 어떻게 언제 할 것인지 약속을 정합니다.</strong>
                                    ∙ 비상시를 대비하여 지역 대피장소(국민재난안전포털, www.safekorea.go.kr나 지자체 홈페이지의 임시대피소,<br> 이재민임시주거시설 등 참고)와 안전한 이동 방법에 대해 숙지하고, 어린이들에게 알려 주어야 합니다.
                                    <br>
                                    ∙ 가족이 각각 이동할 때를 대비하여 다시 만날 장소를 사전에 정합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">4. 비상시 가족과 함께 안전한 이동방법, 대피요령 등을 숙지해 둡니다.</strong>
                                    ∙ 비상상황이 예견될 때에는 가족과 즉시 연락해서 함께 안전한 곳으로 이동할 수 있도록 하고, <br>상황이 급박할 경우에는 즉시 그 자리를 피하고 가족과는 따로 연락해서 자신의 이동경로를 알려주도록 합니다.
                                    <br>
                                    ∙ 침수가 자주 발생하는 지역에서는 미리 높은 곳에 물건을 옮겨서 2차 피해를 방지하도록 합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">5. 재난이 발생할 경우를 대비하여 가족과 함께 비상용품을 사전에 준비합니다.</strong>
                                    ∙ 응급약품, 손전등, 식수, 비상식량, 라디오, 핸드폰 충전기, 휴대용 버너, 담요 등 비상용품을 사전에 한 곳에 구비해 두고<br> 응급한 상황이 발생하면 바로 휴대할 수 있도록 준비합니다.
                                    <br>
                                    ∙ 차량이 있는 경우에는 연료를 미리 채워 둡니다. 차량이 없을 경우에는 차량이 있는 가까운 이웃과 같이 이동할 수 있도록 사전에 약속해 둡니다.
                              </p>
                              <p>
                                  <strong class="level4_title">6. 재난에 대비한 지속적인 관심과 정비를 가족들과 함께 합니다.</strong>
                                    ∙ 가정의 하수구나 집주변의 배수구를 점검하여 배수가 잘 될 수 있도록 합니다.
                                    <br>
                                    ∙ 비상용품의 유효기간을 지속적으로 확인하여 교체하고, 대피장소, 대피경로 등에 대해서는 지속적으로 관심을 가지고 정비합니다.
                              </p>
                           </div>
                        </div>
                        <div class="tabmenu02">
                            <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     침수피해 발생 시에는 즉시 높은 지역으로 이동하고, 침수나 범람 위험이 있는 지역에는 접근하지 않도록 합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">해수면 상승시</h3> 
                              <p>
                                  <strong class="level4_title">1. 해수면 상승이 예보된 때에는 해안가 출입을 자제하고 주변에 알려 줍니다.</strong>
                                    ∙ 대조기 등 해수면 상승이 예보된 때에는 해안가 지역에서 갯벌 체험활동, 지역 축제, 낚시, 관광 등을 취소하고 출입을 자제합니다.
                                    <br>
                                    ∙ 침수가 우려되는 지역에 차량·주민은 높은 곳으로 함께 이동합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">2. 침수피해가 우려될 경우 높은 지역으로 주변에 있는 사람들과 함께 대피합니다.</strong>
                                    ∙ 조수로 인한 침수, 범람의 우려가 있을 때에는 해안가, 갯바위, 방파제, 저지대 도로 등 침수될 수 있는 지역에서는 즉시 높은 지역으로 이동합니다.
                                    <br>
                                    ∙ 조수로 인한 침수, 범람의 상황이 발생하면 재난방송이나 공무원, 경찰, 소방관 등의 안내에 따라 차분하면서도 신속하게 고층건물, 고지대 등으로 대피합니다.
                                    <br>
                                    ∙ 대피 시에는 질서 있게 행동하고 노약자와 어린이를 우선 배려하여 대피합니다.
                                    <br>
                                    ∙ 부상자가 발생하면 주변에 도움을 구하고, 119 등에 연락을 취해 조치합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">3. 침수나 범람 위험지역에는 어느 누구도 접근하지 않습니다.</strong>
                                    ∙ 해수면 상승과 강풍, 풍랑 등이 발생하면, 너울성 파도, 해일 등으로 피해가 있을 수 있으므로 해안가 주변의 도로, 방파제, 해수욕장, 갯바위 등에 접근하지 않습니다.
                                    <br>
                                    ∙ 갯바위, 갯벌 등에서 고립될 경우에는 즉시 119, 112 등에 신고하거나 주변에 도움을 요청하고, 최대한 높은 곳으로 이동합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">4. 대피 시에는 2차 피해가 발생하지 않도록 가족 모두 함께 주의합니다.</strong>
                                    ∙ 침수나 범람이 발생할 경우 감전의 위험이 있으므로 전신주, 가로등, 신호등, 주택의 전기서설 등은 손으로 만지거나 가까이 가지 않도록 합니다.
                                    <br>
                                    ∙ 물이 잠겨 있는 도로에는 차량 운행이나 보행 이동 등을 하지 않도록 합니다.
                                    <br>
                                    ∙ 집에서 이동하거나 대피할 때에는 수도와 가스밸브를 잠그고 전기차단기를 내려 둡니다.
                              </p>
                              <p>
                                  <strong class="level4_title">5. 주변의 안전 여부를 다 함께 확인하고, 위험요소는 신고하고 주변에 알려 줍니다.</strong>
                                    ∙ 해안지역에 거주하거나 해안지역으로 이동한 지인과 연락하여 안전 여부를 확인하고, 실종이 의심되는 경우에는 가까운 경찰서에 신고합니다.
                                    <br>
                                    ∙ 주변에 위험요소 발견 시에는 112, 119나 안전신문고 앱을 통해서 신고합니다.
                              </p>
                           </div>
                        </div>
                    </div>
                </div>
        
        <!-- 주요기관 연락처 -->
                <div class="section02">
                    <h3 class="title_01">주요기관 연락처</h3>
                    <ul class="tablewrap">
                        <li style="height:200px;">
                            <p>1. 위기상황, 긴급상황 시 신고전화</p>
                            <p>
                                ∙ 재난신고 119, 범죄신고 112, 민원 상담 110<br>
                                ∙ 행정안전부 중앙재난안전상황실 044)205-1541~3
                            </p>
                        </li>
                        <li style="height:200px;">
                            <p>2. 행정안전부 국민행동요령, 임시피난시설 등 안내</p>
                            <p>
                                ∙ 행정안전부 홈페이지 <a href="http://www.mois.go.kr" target="_blank"  title="새창열기">http://www.mois.go.kr</a><br>
                                ∙ <e>행정안전부 국민재난안전포털</e> <a href="http://www.safekorea.go.kr" target="_blank"  title="새창열기">http://www.safekorea.go.kr</a><br>
                                ∙ 스마트폰 어플리케이션 ‘안전디딤돌’
                            </p>
                        </li>
                        <li style="height:200px;">
                            <p>3. 유관기관 연락처 및 홈페이지</p>
                            <p>
                                ∙ 해양수산부 044)200-5617, <a href="http://www.mof.go.kr" target="_blank"  title="새창열기">http://www.mof.go.kr</a><br> 
                                ∙ 기상청 02)2181-0503, <a href="http://www.kma.go.kr" target="_blank"  title="새창열기">http://www.kma.go.kr</a><br> 
                                ∙ 국립해양조사원 051)400-4400, <a href="http://www.khoa.go.kr" target="_blank"  title="새창열기">http://www.khoa.go.kr</a><br> 
                            </p>
                        </li>
                    </ul>
                </div>
                <br>
                <br>
                <div style="border-top: solid 1.5px #dadada;">                  
                    <strong class="level4_title">소관부서 : 해양수산부 해양영토과 김진권(044-200-5357)</strong>
                </div>

    

</div>
    

<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>
