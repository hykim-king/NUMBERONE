
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

<!-- Header -->
<script src="/ehr/resources/js/jquery-1.11.1.min.js"></script>
<script src="/ehr/resources/js/common.js"></script>
<script src="/ehr/resources/js/idsi_safekorea_common.js"></script>    
<script src="/ehr/resources/js/content.js"></script>


<style>
    .title_01 {position: relative;font-size:20px;color:#003668;padding-left:27px;margin:36px 0 20px 0;clear: both}
    .title_02 {position: relative;margin-top: 30px;font-size:20px;color: #1b1b1b;padding-top: 5px;clear: both}
    .title_03 {position:relative;font-size:18px;color:#003668;display: block;padding-left:16px;margin-top: 22px;;clear: both}
</style>




<script>

//이동
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
        <div class="sns_bt">
            <a href="#" data-toggle="sns_share"  data-service="facebook" data-title="페이스북 SNS공유" class = "facebook"></a>
            <a href="#" data-toggle="sns_share"  data-service="twitter" data-title="트위터 SNS공유" class = "twitter"></a>
            <a href="#" data-toggle="sns_share"  data-service="kakaostory" data-title="카카오스토리 SNS공유" class = "kakaostory"></a>
        </div>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">한파</h3>
        <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <!-- 행동요령 본문내용 -->
                <div class="section01">
                    <h3 class="title_01">진행별 행동요령</h3>
                    <ul class="tablist">
                        <li class="on" title="">
                            <a class="tabindexBtn" onclick="return false" title="선택됨">평상시 행동요령</a>
                        </li>
                        <li>
                            <a class="tabindexBtn" onclick="return false" title="">한파 발생 시 행동요령</a>
                        </li>
                        <li>
                            <a class="tabindexBtn" onclick="return false" title="">한파 관련 정보</a>
                        </li>
                    </ul>
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                        <h2 class="ir">평상시 행동요령</h2>
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     한파는 저체온증, 동상, 동창 등의 한랭질환을 유발할 수 있으며, 심하면 사망에 이르게 됩니다. <br>
                                     뿐만 아니라 농·축·수산 분야의 재산피해와 전력 급증으로 생활불편을 초래하기도 합니다. <br>
                                     겨울철에는 다음 사항을 숙지하여 가족이나 이웃과 함께 피해를 사전에 예방할 수 있도록 미리 준비합니다.

                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">상세 행동요령</h3> 
                              <p>
                                  <strong class="level4_title">• 겨울철에는 TV, 라디오, 인터넷, 스마트폰 안전디딤돌 앱 등을 통해 기상상황을 수시로 확인하며, 주변 사람들과 함께 정보를 공유합니다.</strong>
                              </p>
                              <p>
                                  <strong class="level4_title">• 한랭질환(저체온증, 동상 등)에 대한 증상 및 조치사항을 사전에 숙지하고, 가까운 병원 연락처 등을 가족ㆍ이웃과 함께 알아둡니다.</strong>
                                - 어린이, 노약자, 심뇌혈관질환자 등 취약계층은 추위에 약하므로 건강관리에 더욱 유의합니다.
                                <br>
                                - 당뇨 환자, 만성 폐질환자 등은 반드시 독감 예방접종을 합니다.
                              </p>
                              <p>
                                  <strong class="level4_title">&lt; 일반 가정 &gt;</strong>
                                ∙ 보일러, 배관, 난방기구 등은 사전에 사용할 수 있도록 정비하고 화재에 주의합니다.
                                <br>
                                ∙ 동파 방지를 위해 계량기 등은 미리 보온 조치를 합니다.
                                <br>
                                &nbsp;- 수도 계량기, 수도관 등에 찬 공기가 스며들지 않도록 헌 옷 등을 활용하여 보온합니다.
                                <br>
                                ∙ 오래된 주택은 변압기를 사전에 점검하여 과부하에 대비합니다.
                                <br>
                                ∙ 외출할 때를 대비하여 내복, 목도리, 모자, 장갑 등을 준비합니다.
                                <br>
                                ∙ 정전에 대비하여 손전등, 비상 식음료, 휴대용 라디오 등을 미리 준비합니다.
                                <br>
                                ∙ 단수에 대비하여 생수를 준비하고, 생활용수는 욕조에 미리 받아 둡니다.
                                <br>
                                ∙ 장애인, 어린이, 노약자 등은 사전에 연락처를 확인하고 한파 대처 상황을 꼼꼼하게 챙깁니다.
                                <br>
                                ∙ 가정 내 어린이와 노약자가 있는 경우 체온과 실내 온도를 자주 확인하여 충분히 따뜻하게 유지합니다.
                                <br>
                                &nbsp;- 만 1세 이하의 영유아는 절대 차가운 방에서 재우면 안됩니다.
                                <br>
                                &nbsp;- 집에 65세 이상의 어르신이 있는 경우 자주 볼 수 있는 실내 장소에 읽기 쉬운 온도계를 놓아둡니다.
                                <br>
                                &nbsp;※ 노인들은 온도 변화를 느끼는 능력이 떨어지며, 낮은 신체대사와 활동으로 한파에 취약합니다.
                              </p>
                              
                              <p>
                                  <strong class="level4_title">&lt; 차량 이용자 &gt;</strong>
                                ∙ 한파로 인한 빙판길 교통사고 위험이 높으니 가급적 장거리 운전을 자제합니다.
                                <br>
                                ∙ 자동차 월동용품을 미리 준비해두고 자동차 상태를 수시로 점검합니다.
                                <br>
                                &nbsp;- 주요 월동용품으로는 스노체인(스프레이 체인), 모래주머니, 염화칼슘, 삽, 부동액, 축전지, 각종 윤활유 등이 있습니다.
                                <br>
                                ∙ 창문을 닫고 히터를 오래 켜면 뇌에 전달되는 산소량이 떨어져 졸음을 유발할 수 있습니다. 졸음운전으로 인한 교통사고 예방을 위해 최소 30분에 1회 이상 창문을 열어 환기를 실시합니다.
                              </p>
                              
                           </div>
                        </div>
                        
                        <div class="tabmenu02">
                        <h2 class="ir">한파 발생 시 행동요령</h2>
                            <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     TV, 라디오, 인터넷 등에서 한파가 예보된 때에는 최대한 야외활동을 자제하고<br>
                                     주변의 독거노인 등 건강이 염려되는 분들의 안부를 살펴봅니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">상세 행동요령</h3> 
                              <p>
                                   <strong class="level4_title">&lt; 일반 가정 &gt;</strong>
                                ◇ 외출(야외활동) 시
                                <br>
                                ∙ 야외활동은 되도록 자제하고, 부득이 외출을 하는 경우에는 내복, 목도리, 모자, 장갑 등으로 노출 부분의 보온에 유의해야 합니다.
                                <br>
                                ∙ 외출 시에는 되도록 대중교통을 이용하고, 가족에게 행선지와 시간 계획을 알려둡니다.
                                <br>
                                ∙ 외출 후에는 손발을 씻고 과도한 음주나 무리한 일은 피하도록 합니다. 또한, 당뇨환자, 만성폐질환자 등은 미리 독감 예방접종을 하여야 합니다.
                                <br>
                                ∙ 거동이 불편한 어르신, 신체허약자, 환자 등을 남겨두고 장시간 외출할 경우에는 친인척, 이웃 등에 보호를 부탁합니다.
                                <br>
                                &nbsp;- 특히, 연세 많은 어르신, 장애인이 홀로 거주하는 경우 수시로 전화 등을 통해 안부를 확인합니다.
                                <br>
                                ◇ 응급상황 및 낙상사고 발생 시
                                <br>
                                ∙ 심한 한기, 기억상실, 방향감각 상실, 불분명한 발음, 심한 피로 등을 느낄 때는 저체온 증세를 의심하고 바로 병원으로 가야 합니다.
                                <br>
                                ∙ 동상에 걸렸을 때는 비비거나 갑자기 불에 쬐어서는 안 되며, 따뜻한 물(약 40°C)로 세척 후에 보온을 유지한 채로 즉시 병원으로 가야 합니다.
                                <br>
                                &nbsp;※ 따뜻한 물(약 40°C)은 동상에 걸리지 않은 사람이 편안하게 손을 넣어둘 수 있는 정도이며, 너무 뜨거운 물은 피부를 손상시킬 수 있습니다.
                                <br>
                                ∙ 빙판길 낙상사고를 줄이기 위해서는 보폭을 줄이고, 굽이 낮고 미끄럼이 방지된 신발을 신는 등 주의해야 합니다.
                                <br>
                                &nbsp;- 연석, 나무데크, 농구장 등 미끄러운 곳을 주의합니다.
                              </p>
                                <!-- 행동요령 이미지1 -->
                                <div>
                                    <ul class="contextIndent_twoDepList">
                                        <li class="prevent_img">
                                            <img id="img01" src="" class="unload_rsc" alt="한파 발생 시"/>
                                        </li>
                                    </ul>
                                </div>
                                <div class="description_box" style="text-align: inherit;">
                                        <p class="description_fcBlack_txt" style="text-align: center;">《 빙판길 낙상사고 줄이는 요령 》</p>
                                        <p class="description_fcBlack_txt">▪ 보폭을 평소보다 10~20% 줄입니다.
                                            <br/>▪ 굽이 낮은 미끄럼 방지 밑창 신발을 신습니다.
                                            <br/>▪ 옷 주머니에 손을 넣거나, 스마트폰을 보면서 걷지 않습니다.
                                            <br/>▪ 가능한 한 손에 물건을 들고 다니지 않습니다.
                                            <br/>▪ 응달진 곳을 피하고, 급격한 회전을 하지 않습니다.
                                            <br/>▪ 움직임을 둔하게 하는 무겁고 두꺼운 외투는 피합니다.
                                            <br/>▪ 넘어질 때는 무릎으로 주저 앉으면서 옆으로 굴러 피해를 최소화합니다.
                                            <br/>▪ 진정제, 수면제 등 어지럼 유발 약물 복용자는 외출을 삼갑니다.
                                        </p>
                                </div>
                                <p>
                                ◇ 시설물 관리
                                <br>
                                ∙ 수도계량기, 수도관, 보일러 배관 등은 헌 옷 등 보온재로 채우고 외부는 테이프로 밀폐시켜 찬 공기가 들어가지 않도록 합니다.
                                <br>
                                ∙ 장기간 집을 비우게 될 때는 수도꼭지를 조금 열어 물이 흐르도록 하여 동파를 방지하고, 수도관이 얼었을 때는 미지근한 물이나 드라이로 녹입니다.
                                <br>
                                &nbsp;※ 수도관을 녹일 때 절대로 불을 사용하지 마십시오.
                                <br>
                                &nbsp;※ 동파가 발생했을 때에는 지방지차단체 또는 지역 수도사업부에 전화해서 도움을 받을 수 있습니다.
                                <br>
                                ∙ 과도한 전열기 사용을 자제하고, 인화물질을 전열기 부근에 두지 않습니다.
                                <br>
                                ∙ 전기, 가스, 지역난방 등 시설이 고장난 경우에는 관리기관이나 지자체에 신고하도록 합니다.
                                <br>
                                &nbsp;- 전기에 이상이 생긴 경우 한국전력공사(☎123) 또는 한국전기안전공사(☎1588-7500)에 신고합니다.
                                </p>
                                <!-- 행동요령 이미지2 -->
                                <div>
                                    <ul class="contextIndent_twoDepList">
                                        <li class="prevent_img">
                                            <img id="img02" src="" class="unload_rsc" alt="한파 발생 시2"/>
                                        </li>
                                    </ul>
                                </div>
                              <p>
                                   <strong class="level4_title">&lt; 차량 이용자 &gt;</strong>
                                ◇ 운전 시   
                                <br>
                                ∙ 도로 결빙에 대비하여 스노체인(스프레이 체인), 모래주머니, 염화칼슘, 삽 등 월동용품을 미리 구비하고, 부동액, 축전지, 윤활유 등 자동차 상태를 사전에 점검합니다.
                                <br>
                                ∙ 운전 전에는 앞 유리의 성에를 완전히 제거하고, 운전 중에는 평소보다 저속 운전하고 차간 거리를 충분히 확보하여 사고를 예방합니다.
                                <br>
                                ∙ 미끄러운 길이나 빙판길, 커브길 등에서는 되도록 가속과 멈춤을 하지 말고, 속도를 미리 줄이도록 합니다.
                                <br>
                                ◇ 고립된 경우
                                <br>
                                ∙ 가능한 수단을 통해 구조 연락을 취하며, 동승자와 함께 체온을 유지하고 돌아가며 휴식을 취하도록 합니다.
                                <br>
                                &nbsp;- 혈액 순환을 위해 손뼉을 치거나 가끔 팔과 다리를 움직이는 등 가벼운 운동을 합니다.
                                <br>
                                ∙ 한 사람은 반드시 깨어있어야 하며 야간에는 실내등을 켜거나 색깔 있는 옷을 눈 위에 펼쳐 놓아 구조요원이 쉽게 찾을 수 있도록 합니다.
                                <br>
                                ∙ 차량이 고립·정체된 경우 되도록 차량에서 대기하고, 부득이 차량을 벗어날 경우 연락처를 두고 열쇠를 꽂아 둔 채로 대피합니다.
                              </p>
                              <p>
                                   <strong class="level4_title">&lt; 농･어촌 &gt;</strong>
                                ◇ 농작물 관리
                                <br>
                                ∙ 낮은 기온으로 인한 동해 피해를 입지 않도록 보온을 철저히 합니다.
                                <br>
                                &nbsp;- 비닐, 볏짚, 부직포 등으로 농작물을 덮어줍니다.
                                <br>
                                &nbsp;- 비닐하우스 등 동해 피해 방지를 위해 난방, 온실커튼, 축열 주머니 등 미리 조치를 취합니다.
                                <br>
                                &nbsp;- 온풍기 등 전기시설은 미리 점검합니다.
                                <br>
                                &nbsp;- 극심한 기온 저하 예상 시 미리 수확하여 저장합니다.
                                <br>
                                ◇ 축사
                                <br>
                                ∙ 축사 등은 샛바람 방지를 위한 보온덮개와 난방기 등을 준비합니다.
                                <br>
                                &nbsp;- 축사 내부 적정온도를 유지하고, 화재 예방을 위한 전선 피복상태 점검 및 전열기구를 정비합니다.
                                <br>
                                &nbsp;- 가축의 체온 유지를 위해 사료량을 10∼20% 늘려 급여합니다.
                                <br>
                                ◇ 양식장
                                <br>
                                ∙ 양식장은 사육지 면적의 1% 이상을 별도 확보하여 월동장을 설치하고, 방풍망 등으로 보온조치 합니다.
                                <br>
                                ∙ 장기 한파 피해가 예상될 때에는 양식어류는 조기 출하하여 피해를 예방합니다.
                              </p>
                                <img id="img03" class="unload_rsc" alt="한파 발생 시3">
                           </div>
                        </div>
                        <div class="tabmenu03">
                        <h2 class="ir">한파 관련 정보</h2>
                           <div class="point">
                              <h3 class="title_02">핵심 행동요령</h3> 
                              <div class="box">
                                 <p>
                                     한파에 대한 특보 기준과 질병상식 등을 미리 알아두어 한파특보나 응급상황에 즉시 대처할 수 있도록 합니다.
                                 </p>
                              </div>
                           </div>
                           <div class="detail">
                              <h3 class="title_02">한파 특보</h3> 
                              
                        <div class="preventInfo_grid" style="margin-bottom: 15px;" summary="한파 종류 및 특성">
                            <div class="boardList_boxWrap">
                                <table class="infoType_table">
                                    <caption>한파 특보</caption>
                                    <colgroup>
                                        <col style="width:20%; text-align:center;">
                                        <col style="width:40%;">
                                        <col style="width:40%;">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope=col>
                                                <span>종류</span>
                                            </th>
                                            <th scope=col>
                                                <span>주의보</span>
                                            </th>
                                            <th scope=col>
                                                <span>경보</span>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <span class="fcBlack" style="font-size:18px">한파</span>
                                            </td>
                                            <td class="txtLeft">
                                                <span class="fcBlack">10월~4월 사이의 기간에 다음 중 어느 하나에 해당하는 경우<br/>① 아침 최저기온이 전날보다 10℃ 이상 하강하여 3℃ 이하이고 평년값보다 3℃가 낮을 것으로 예상될 때<br/>② 아침 최저기온이 -12℃ 이하가 2일 이상 지속될 것이 예상될 때<br/>③ 급격한 저온현상으로 중대한 피해가 예상될 때</span>
                                            </td>
                                            <td style="text-align: inherit;">
                                                <span class="fcBlack">10월~4월 사이의 기간에 다음 중 어느 하나에 해당하는 경우<br/>① 아침 최저기온이 전날보다 15℃ 이상 하강하여 3℃ 이하이고 평년값보다 3℃가 낮을 것으로 예상될 때<br/>② 아침 최저기온이 -15℃ 이하가 2일 이상 지속될 것이 예상될 때<br/>③ 급격한 저온현상으로 광범위한 지역에서 중대한 피해가 예상될 때</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                              
                               <h3 class="title_02">한파질병 상식</h3> 
                              
                              
                        <div class="preventInfo_grid" style="margin-bottom: 40px;">
                            <div class="boardList_boxWrap">
                                <table class="infoType_table" summary="한파질병 종류 및 특성">
                                    <caption>한파질병 상식</caption>
                                    <colgroup>
                                        <col style="width:20%; text-align:center;">
                                        <col style="width:40%;">
                                        <col style="width:40%;">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope=col>
                                                <span>종류</span>
                                            </th>
                                            <th scope=col>
                                                <span>증상</span>
                                            </th>
                                            <th scope=col>
                                                <span>대처요령</span>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <span class="fcBlack" style="font-size:18px">저체온증</span>
                                            </td>
                                            <td class="txtLeft">
                                                <span class="fcBlack">
                                                    ▸말이 어눌해지거나 기억 장애 발생
                                                    <br/>▸점점 의식이 흐려짐
                                                    <br/>▸지속적인 피로감을 느낌
                                                    <br/>▸팔, 다리의 심한 떨림증상
                                                </span>
                                            </td>
                                            <td style="text-align: inherit;">
                                                <span class="fcBlack">
                                                1. 신속히 병원으로 가거나 바로 119로 신고합니다.
                                                <br/>2. 젖은 옷은 벗기고 담요나 침낭을 감싸줍니다.
                                                <br/>3. 겨드랑이, 배 위에 핫팩이나 더운 물통 등을 둡니다.
                                                <br/>　* 이런 재료가 없는 경우 사람을 껴안는 것도 효과적입니다.
                                                <br/>4. 의식이 있는 경우에는 따뜻한 음료가 도움이 될 수 있으나, 의식이 없는 경우 주의합니다.
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="fcBlack" style="font-size:18px">동상</span>
                                            </td>
                                            <td class="txtLeft">
                                                <span class="fcBlack">
                                                    ▸1도 : 찌르는 듯한 통증, 붉어지고 가려움, 부종
                                                    <br/>▸2도 : 피부가 검붉어지고 물집이 생김
                                                    <br/>▸3도 : 피부와 피하조직 괴사, 감각 소실
                                                    <br/>▸4도 : 근육 및 뼈까지 괴사
                                                </span>
                                            </td>
                                            <td style="text-align: inherit;">
                                                <span class="fcBlack">
                                                ※ 병원을 방문하여 진료를 받는 것이 우선입니다.
                                                <br/>1. 환자를 따뜻한 환경으로 옮깁니다.
                                                <br/>2. 동상부위를 따뜻한 물(38~42℃)에 담급니다.
                                                <br/>　 * 38~42℃ : 동상을 입지 않는 부위를 담갔을 때 불편하지 않을 정도의 온도
                                                <br/>3. 얼굴 귀 : 따뜻한 물수건을 대주고 자주 갈아줍니다.
                                                <br/>4. 손, 발 : 손가락, 발가락 사이에 소독된 마른 거즈를 끼웁니다.
                                                <br/>　 * 습기를 제거하고 서로 달라 붙지 않게 함
                                                <br/>5. 동상부위를 약간 높게 합니다.
                                                <br/>　 * 부종 및 통증을 줄여줍니다.
                                                <br/>6. 다리, 발 동상환자는 들 것으로 운반합니다.
                                                <br/>　 * 다리에 동상이 걸리면 녹고 난 후에도 걸어서는 안됩니다.
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="fcBlack" style="font-size:18px">손상</span>
                                            </td>
                                            <td class="txtLeft">
                                                <span class="fcBlack">
                                                    ▸낙상에 의한 손상
                                                    <br/>　 * 미끄러짐, 넘어짐, 떨어짐 등에 의한 탈구, 골절, 타박상 등
                                                </span>
                                            </td>
                                            <td style="text-align: inherit;">
                                                <span class="fcBlack">
                                                1. 홀로 거동이 어려울 경우 빠르게 119로 신고합니다.
                                                <br/>2. 환자가 편안해 하는 자세 그대로 움직이지 않게 고정하고 도움을 청합니다.
                                                <br/>　 * 필요시 부목 등을 이용하여 고정합니다.
                                                </span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                           </div> 
                        </div>
                    </div>
                </div>
    
            <div class="section02">
                  <h3 class="title_01">주요기관 연락처</h3>
                  <ul class="tablewrap">
                      <li>
                          <p>1. 위기상황, 긴급상황 시 신고전화</p>
                          <p>
                              ∙ 재난신고 119, 범죄신고 112, 민원 상담 110<br>
                              ∙ 행정안전부 중앙재난안전상황실 044)205-1542~3
                          </p>
                      </li>
                      <li>
                          <p>2. 행정안전부 국민행동요령, 임시주거실 등 안내</p>
                          <p>
                              ∙ 행정안전부 홈페이지 <a href="http://www.mois.go.kr" target="_blank" title="새창열기">http://www.mois.go.kr</a><br>
                              ∙ <e>행정안전부 국민재난안전포털</e> <a href="http://www.safekorea.go.kr" target="_blank" title="새창열기">http://www.safekorea.go.kr</a><br>
                              ∙ 스마트폰 어플리케이션 ‘안전디딤돌’
                          </p>
                      </li>
                      <li>
                          <p>3. 유관기관 연락처 및 홈페이지</p>
                          <p>
                              ∙ 행정안전부 044)205-6366, <a href="http://www.mois.go.kr" target="_blank" title="새창열기">http://www.mois.go.kr</a><br> 
                              ∙ 기상청 02)2181-0503, <a href="http://www.kma.go.kr" target="_blank" title="새창열기">http://www.kma.go.kr</a><br> 
                              ∙ 고용노동부 044)202-8895, <a href="http://www.moel.go.kr" target="_blank" title="새창열기">http://www.moel.go.kr</a><br> 
                              ∙ 보건복지부 044)202-2652, <a href="http://www.mohw.go.kr" target="_blank" title="새창열기">http://www.mohw.go.kr</a><br> 
                              　(질병관리청 043)719-7082, <a href="http://www.kdca.go.kr" target="_blank" title="새창열기">http://www.kdca.go.kr)</a><br> 
                              ∙ 농림축산식품부 044)201-1474, <a href="http://www.mafra.go.kr" target="_blank" title="새창열기">http://www.mafra.go.kr</a><br> 
                              ∙ 농촌진흥청 1544-8572, <a href="http://www.rda.go.kr" target="_blank" title="새창열기">http://www.rda.go.kr</a><br> 
                              ∙ 해양수산부 044)200-5617, <a href="http://www.mof.go.kr" target="_blank" title="새창열기">http://www.mof.go.kr</a><br> 
                              ∙ 교육부 044)203-6355, <a href="http://www.moe.go.kr" target="_blank" title="새창열기">http://www.moe.go.kr</a><br>
                          </p>
                      </li>
                  </ul>
              </div>
    
    <h4 class="level2_title">국민행동요령</h4> 
    <h4 class="title_02" style="font-weight: bold;">한파</h4>
    <div>
    <ul class="contextIndent_twoDepList">
        <li style="">
            <img id="img10" src="" class="unload_rsc" style="padding-left: 38%;width:15%;" alt="행정안전부 로고"/>
        </li>
    </ul>
    </div>
    <br>
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img04" src="" class="unload_rsc" alt="산간 고립 우려 지역에서는 식량, 연료 등 비상용품을 준비합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">노약자, 영유아 등을 위해  난방과 온도관리에 유의합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img05" src="" class="unload_rsc" alt="내 집 앞 눈을 수시로 치웁니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">외출 시에는 동상에 걸리지 않도록 보온에 유의합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img06" src="" class="unload_rsc" alt="스노체인, 염화칼슘, 삽 등 자동차 월동용품을 준비합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">동상에 걸리면, 비비지 말고 따뜻한 물에 30분가량 담그고, 온도를 유지하며 즉시 병원으로 갑니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img07" src="" class="unload_rsc" alt="개인 차량 이용을 줄이고 대중교통을 이용합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">수도계량기, 보일러 배관 등은 헌 옷 등으로 보온합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img08" src="" class="unload_rsc" alt="차량 운행 시에는 저속 운행하고 안전거리를 확보합니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">장기간 외출 시 온수를 약하게 틀어 동파를 방지합니다.</strong>
    
    <div>
        <ul class="contextIndent_twoDepList">
            <li class="prevent_img" style="margin-left: 5%;">
                <img id="img09" src="" class="unload_rsc" alt="차량이 고립될 때는 119에 신고하고 차 안에서 TV, 라디오, 인터넷 등을 통해 기상 상황을 확인하며 구조를 기다립니다."/>
            </li>
        </ul>
    </div>
    <strong class="level4_title">도로가 얼 수 있으니 차에 스노체인 등 월동용품을 준비하고, 부동액 등 자동차 점검을 합니다.</strong>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 자연재난대응과 김정헌(044-205-5237)</strong>
    </div>

</div>

<!-- Footer -->
<!-- <div id="footer_include" data-include="/WEB-INF/views/footer.jsp"></div> -->
</body>
</html>
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>