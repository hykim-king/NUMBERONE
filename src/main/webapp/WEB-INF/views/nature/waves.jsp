
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


<!-- 강풍ㆍ풍랑 -->
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
        <h3 class="level2_title">풍랑</h3>
        <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    <!-- 행동요령 본문내용 -->
    <div class="section01">
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="detail">
                              <h3 class="title_03">특보 시 국민행동요령</h3> 
                              <p>
                              <strong class="level4_title">1. 풍랑특보 시 대비요령</strong>
                            - TV, 라디오 등을 통해 풍랑정보를 수시로 확인하고 관공서의 재난 예·경보를 청취합시다.
                            <br>
                            - 해안가의 낚시꾼, 야영객, 행락객 등은 인근의 안전한 곳으로 대피합시다.
                            <br>
                            - 지붕 위나 바깥에서의 작업은 위험하니 피해야 합니다.
                            <br>
                            - 파도에 휩쓸릴 위험이 있으니 바닷가로 나가지 않도록 주의합니다.
                            <br>
                            - 높은 파도가 발생할 위험이 있는 방파제, 방조제 등에 가지 맙시다.
                            <br>
                            - 항해 중 또는 조업 어선은 인근 선박이나 관계기관(어업무선국 등)에 연락하고 대피합시다.
                            <br>
                            - 수산 증·양식시설을 고정하고 지지대로 보강하여 높은 파도와 강풍에 유실되지 않도록 사전 조치합시다.
                            <br>
                            - 양식자재·해상작업대 등은 안전한 장소로 미리 이동 조치합시다.
                            <br>
                            - 집 안팎의 전기수리는 하지 맙시다.
                              </p>
                              <h3 class="title_03">특보기준</h3> 
                              <p>
                            - 명칭 : 풍량
                            <br>
                            - 주의보 : 해상풍속 14m/s 이상(3시간 이상 지속), 유의 파고 3m 초과
                            <br>
                            - 경보 : 해상풍속 21m/s 이상(3시간 이상 지속), 유의 파고 5m 초과
                              </p>
                              <h3 class="title_03">Q & A</h3> 
                              <strong class="level4_title">Q. 너울성 파도 대처 요령은 ?</strong><br>
                            - 해안가 위험 축대나 시설물은 사전에 철거, 방파제 근처가 가장 위험
                            
                            
                            <br>
                            <br>
                            <div style="border-top: solid 1.5px #dadada;">
                                <strong class="level4_title">소관부서 : 자연재난대응과 강형구(044-205-5232)</strong>
                            </div>
                            
                           </div> 
                        </div>
                    </div>
                </div>
    
</div>

<!-- Footer -->
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>