
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">>
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
        <h3 class="level2_title">홍수</h3>
        <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
        <div class="section01">
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="detail">
                              <h3 class="title_02">홍수 예·경보 시 국민행동요령</h3> 
                              <p>
                              <strong class="level4_title">· 홍수 예·경보 시 행동요령</strong>
                                - 홍수피해가 예상되는 지역의 주민은 라디오나 TV, 인터넷을 통해 기상변화를 알아 둡시다.
                                <br>
                                - 홍수 우려 때 피난 가능한 장소와 길을 사전에 숙지합시다.
                                <br>
                                - 갑작스러운 홍수가 발생하였으면 높은 곳으로 빨리 대피합시다.
                                <br>
                                - 비탈면이나 산사태가 일어날 수 있는 지역에 가까이 가지 맙시다.
                                <br>
                                - 바위나 자갈 등이 흘러내리기 쉬운 비탈면 지역의 도로 통행을 삼가고, 만약 도로를 지날 때 주위를 잘 살핀 후 이동합시다.
                                <br>
                                - 홍수 예상 시 전기차단기를 내리고 가스 밸브를 잠급시다.
                                <br>
                                - 침수된 지역에서 자동차를 운전하지 맙시다.
                                <br>
                                - 지정된 대피소에 도착하면 반드시 도착사실을 알리고, 통제에 따라 행동합시다.
                                <br>
                                - 침수주택은 가스·전기차단기가 off에 있는지 확인하고, 기술자의 안전조사가 끝난 후 사용합시다.
                                <br>
                                - 수돗물이나 저장식수도 오염 여부를 반드시 조사 후에 사용합시다.<br>
                                　*홍수 특보기준 : 국토교통부 홍수통제소에서 수계별 주요지점 홍수 예·경보 기준수위에 따라 발령함
                              </p>
                             <img id="img01" alt="침수되기 전에 전기와 가스를 차단해야 해!" class="prevent_img01 unload_rsc" src=""/>
                              <h3 class="title_02">Q & A</h3> 
                              <p>
                                    Q. 저지대 주택에 침수피해를 당했을 때 주택에 들어가기 전 행동요령은 ?
                                    <br>
                                    A. - 침수된 주택은 가스누출, 감전 위험이 있으므로 바로 들어가지 마시고 환기를 시킨 후, 가스·전기차단기가 OFF에 있는지 확인하시고 전문가의 안전점검을 받아 안전한 경우 사용하시기 바랍니다.
                              </p>
                            
                                
                            <br>
                            <br>
                            <div style="border-top: solid 1.5px #dadada;">
                                <strong class="level4_title">소관부서 : 자연재난대응과 신지윤(044-205-5233)</strong>
                            </div>
                           </div> 
                        </div>
                    </div>
                </div>
 
</div>

<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>