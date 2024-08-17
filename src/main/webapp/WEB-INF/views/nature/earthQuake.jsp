
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
        <div class="sns_bt">
            <a href="#" data-toggle="sns_share"  data-service="facebook" data-title="페이스북 SNS공유" class = "facebook"></a>
            <a href="#" data-toggle="sns_share"  data-service="twitter" data-title="트위터 SNS공유" class = "twitter"></a>
            <a href="#" data-toggle="sns_share"  data-service="kakaostory" data-title="카카오스토리 SNS공유" class = "kakaostory"></a>
        </div>
    </div>
    <div class="level2_border_titleWrap">
        <h3 class="level2_title">지진</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
<!-- 행동요령 본문내용 -->

    <h3 class="title_01">진행별 행동요령</h3>
        <ul class="tablist">
            <li class="on">
                <a class="tabindexBtn"  onclick="return false" title="선택됨">평소 대비</a>
            </li>
            <li>
                <a class="tabindexBtn" onclick="return false">지진 발생 시</a>
            </li>
            <li>
                <a class="tabindexBtn" onclick="return false">지진 대피 후</a>
            </li>
        </ul>

        <!-- <h4 class="title_02" style="margin-top:3px;">지진 국민행동요령</h4>
        <a id="prBtn_3" class="downloadGray_btn" style="margin-top:10px;" onclick="prBtn_3_onclick()">다운로드<i class="download_imgSet_icon"></i></a>


        <h4 class="title_02" style="margin-top:3px;">우리나라는 지진 안전지대일까?</h4>
        <div class="preventTop_boxWrap">
            <p style="margin-top:0px;">그간 우리나라는 일본, 중국 등 주변 나라에 비해 지진에 안전한 나라로 인식되었으나, 최근 경주지진(규모 5.8)과 포항지진(규모 5.4)으로 많은 피해가 발생하였습니다.<br>더 이상 우리나라도 지진 안전지대가 아니라는 경각심을 가지고 우리 모두 지진 행동요령을 숙지해야 지진 피해를 줄일 수 있습니다.</p>
        </div> -->
        <!-- 본문 내용 -->
        <div class="tabarea">
            <div class="tabmenu01 on">
                <div class="detail">
                    <h3 class="title_02">지진, 평소에 이렇게 대비합니다.</h3>
                    <p>
                        <strong class="level4_title">1. 집 안에서의 안전을 확보합니다.</strong>
                        ∙ 탁자 아래와 같이 집 안에서 대피할 수 있는 안전한 대피 공간을 미리 파악해 둡니다.<br>
                        ∙ 유리창이나 넘어지기 쉬운 가구 주변 등 위험한 위치를 확인해 두고 지진 발생 시 가까이 가지 않도록 합니다.<br>
                        ∙ 깨진 유리 등에 다치지 않도록 두꺼운 실내화를 준비해 둡니다.<br>
                        ∙ 화재를 일으킬 수 있는 난로나 위험물은 주의하여 관리합니다.
                    </p>
                    <p>
                        <strong class="level4_title">2. 집 안에서 떨어지기 쉬운 물건을 고정합니다.</strong>
                        ∙ 가구나 가전제품이 흔들릴 때 넘어지지 않도록 고정해 둡니다.<br>
                        ∙ 텔레비전, 꽃병 등 떨어질 수 있는 물건은 높은 곳에 두지 않도록 합니다.<br>
                        ∙ 그릇장 안의 물건들이 쏟아지지 않도록 문을 고정해 둡니다.<br>
                        ∙ 창문 등의 유리 부분은 필름을 붙여 유리가 파손되지 않도록 합니다.
                    </p>
                    <p>
                        <strong class="level4_title">3. 집을 안전하게 관리합니다.</strong>
                        ∙ 가스 및 전기를 미리 점검합니다.<br>
                        ∙ 건물이나 담장은 수시로 점검하고, 위험한 부분은 안전하게 수리합니다.<br>
                        ∙ 건물의 균열을 발견하면 전문가에게 문의하여 보수하고 보강합니다.
                    </p>
                    <p>
                        <strong class="level4_title">4. 평상시 가족회의를 통하여 위급한 상황에 대비합니다.</strong>
                        ∙ 가스 및 전기를 차단하는 방법을 알아 둡니다.<br>
                        ∙ 머물고 있는 곳 주위의 넓은 공간 등 대피할 수 있는 장소를 알아 둡니다.<br>
                        ∙ 비상시 가족과 만날 곳과 연락할 방법을 정해 둡니다.<br>
                        ∙ 응급처치하는 방법을 반복적으로 훈련하여 익혀 둡니다.
                    </p>
                    <p>
                        <strong class="level4_title">5. 평소 비상용품을 잘 준비해 둡니다.</strong>
                        ∙ 지진에 대비하여 비상용품을 준비해 두고, 보관 장소와 사용방법을 알아 둡니다.<br>
                        ∙ 지진 발생 시 화재가 발생할 수 있으니 소화기를 준비해 두고, 사용방법을 알아 둡니다.
                    </p>
                </div>
            </div><!-- tabmenu01 -->

            <div class="tabmenu02">
                <div class="detail">
                    <h3 class="title_02">지진이 발생하면 이렇게 대피합니다.</h3>
                    <p>
                        <strong class="level4_title">1. 지진으로 흔들릴 때는?</strong>
                        ∙ 지진으로 흔들리는 동안은 탁자 아래로 들어가 몸을 보호하고, 탁자 다리를 꼭 잡습니다.
                    </p>
                    <p>
                        <strong class="level4_title">2. 흔들림이 멈췄을 때는?</strong>
                        ∙ 흔들림이 멈추면 전기와 가스를 차단하고,문을 열어 출구를 확보합니다.<br>
                    </p>
                    <p>
                        <strong class="level4_title">3. 건물 밖으로 나갈 때는?</strong>
                        ∙ 건물 밖으로 나갈 때에는 계단을 이용하여 신속하게 이동합니다. (엘리베이터 사용 금지)<br>
                        ※ 엘리베이터 안에 있을 경우에는 모든 층의 버튼을 눌러 먼저 열리는 층에서 내립니다.
                    </p>
                    <p>
                        <strong class="level4_title">4. 건물 밖으로 나왔을 때는?</strong>
                        ∙ 건물 밖에서는 가방이나 손으로 머리를 보호하며, 건물과 거리를 두고 주위를 살피며 대피합니다.<br>
                    </p>
                    <p>
                        <strong class="level4_title">5. 대피 장소를 찾을 때는?</strong>
                        ∙ 떨어지는 물건에 유의하며 신속하게 운동장이나 공원 등 넓은 공간으로 대피합니다.(차량 이용 금지)
                    </p>
                    <p>
                        <strong class="level4_title">6. 대피 장소에 도착한 후에는?</strong>
                        ∙ 라디오나 공공기관의 안내 방송 등 올바른 정보에 따라 행동합니다.<br>
                    </p>


                    <h3 class="title_02">장소에 따라 이렇게 행동합니다.</h3>
                    <p>
                        <strong class="level4_title">1. 집안에 있을 경우</strong>
                        ∙ 탁자 아래로 들어가 몸을 보호합니다.<br>
                        ∙ 흔들림이 멈추면 전기와 가스를 차단하고 문을 열어 출구를 확보한 후, 밖으로 나갑니다.<br>
                    </p>
                    <p>
                        <strong class="level4_title">2. 집밖에 있을 경우</strong>
                        ∙ 떨어지는 물건에 대비하여 가방이나 손으로 머리를 보호하며, 건물과 거리를 두고 운동장이나 공원 등 넓은 공간으로 대피합니다.<br>
                    </p>
                    <p>
                        <strong class="level4_title">3. 엘리베이터에 있을 경우</strong>
                        ∙ 모든 층의 버튼을 눌러 가장 먼저 열리는 층에서 내린 후 계단을 이용합니다.<br>
                        ※ 지진 시 엘리베이터를 타면 안됩니다.
                    </p>
                    <p>
                        <strong class="level4_title">4. 학교에 있을 경우</strong>
                        ∙ 책상 아래로 들어가 책상 다리를 꼭 잡습니다.<br>
                        ∙ 흔들림이 멈추면 질서를 지키며 운동장으로 대피합니다.
                    </p>
                    <p>
                        <strong class="level4_title">5. 백화점, 마트에 있을 경우</strong>
                        ∙ 진열장에서 떨어지는 물건으로부터 몸을 보호하고, 계단이나 기둥 근처로 가 있습니다.<br>
                        ∙ 흔들림이 멈추면 밖으로 대피합니다.
                        
                    </p>
                    <p>
                        <strong class="level4_title">6. 극장‧경기장에 있을 경우</strong>
                        ∙ 흔들림이 멈출 때까지 가방 등 소지품으로 몸을 보호하면서 자리에 있다가, 안내에 따라 침착하게 대피합니다.
                    </p>
                    <p>
                        <strong class="level4_title">7. 전철을 타고 있을 경우</strong>
                        ∙ 손잡이나 기둥을 잡아 넘어지지 않도록 합니다.<br>
                        ∙ 전철이 멈추면 안내에 따라 행동합니다.
                    </p>
                    <p>
                        <strong class="level4_title">8. 운전을 하고 있는 경우</strong>
                        ∙ 비상등을 켜고 서서히 속도를 줄여 도로 오른쪽에 차를 세우고,<br>
                        라디오의 정보를 잘 들으면서 키를 꽂아 두고 대피합니다.
                    </p>
                    <p>
                        <strong class="level4_title">9. 산이나 바다에 있을 경우</strong>
                        ∙ 산사태, 절벽 붕괴에 주의하고 안전한 곳으로 대피합니다.<br>
                        ∙ 해안에서 지진해일 특보가 발령되면 높은 곳으로 이동합니다.

                    <h3 class="title_02">몸이 불편하신 분은 이렇게 행동합니다.</h3>
                    <p>
                        <strong class="level4_title">1. 시력이 좋지 않거나 시각장애가 있는 경우</strong>
                        ∙ 우선은 라디오나 텔레비전 등으로 상황 파악을 합니다.<br>
                        ∙ 대피가 필요한 경우, 바닥에 낙하물이 있는지 장애물을 점검하며 천천히 움직이고 주위 사람에게 도움을 적극적으로 요청합니다.<br>
                        ∙ 2차 피해를 예방하기 위해 주변 사람에게 화기가 있는 장소의 점검 등을 요청합니다.
                    </p>
                    <p>
                        <strong class="level4_title">2. 거동이 불편하거나 지체장애가 있는 경우</strong>
                        ∙ 혼자서 행동하지 말고 이웃과 함께 대피합니다.<br>
                        ∙ 휠체어나 보행기를 사용하는 경우에는 바퀴를 잠그고 몸을 앞으로 숙이고, 책 ‧방석‧베개 등으로 머리와 목을 보호합니다.<br>
                        ∙ 움직일 수 없을 때는 조금이라도 안전한 장소에서 도움을 기다립니다.<br>
                        ∙ 야외 넓은 장소 또는 대피장소에 가지 않고 자택에 머무르는 경우에는 이웃이나 관공서 직원 등에게 그 사실을 알리고 고립되지 않도록 합니다.
                    </p>
                    <p>
                        <strong class="level4_title">3. 청력이 좋지 않거나 청각장애가 있는 경우</strong>
                        ∙ 텔레비전의 자막방송과 휴대전화 등으로 정보를 수집하도록 노력합니다.<br>
                        ∙ 움직일 수 없게 되었을 경우에는 호루라기 등으로 소리를 내어 장소를 알리고 도움을 받습니다.<br>
                        ∙ 주변사람들에게 청각장애가 있다는 것을 알리고, 안전한 장소로 유도 및 필요한 배려를 받습니다.<br>
                        ※ 언어장애가 있는 경우에는 의사소통 도구(종이, 펜 등)을 이용하여 상황을 파악합니다.
                    </p>
                    <p>
                        <strong class="level4_title">4. 정신이 불안정하거나 발달장애가 있는 경우</strong>
                        ∙ 서둘러서 급히 뛰어가거나 바깥으로 뛰어나가지 않습니다.<br>
                        ∙ 가족이나 도움을 주는 사람들과 미리 정한 것을 지킵니다.<br>
                        ∙ 혼란스러워 스스로 결정하지 못할 때에는 주위사람에게 도움을 요청합니다.
                    </p>

                    <h3 class="title_02">어린이와 함께 있을 때에는 이렇게 행동합니다.</h3>
                    <p>
                        <strong class="level4_title">1. 유모차 보다는 아기띠를 사용합니다.</strong>
                        ∙ 영유아의 경우 대피 시 유모차 사용이 어렵기 때문에 평소에 업는 띠를 준비해 둡니다. 대피 시 아기는 띠를 이용해 안고 손을 자유롭게 해 아기와 자신의 신체를 보호합니다.<br>
                    </p>
                    <p>
                        <strong class="level4_title">2. 신발을 신겨서 안고 대피합니다.</strong>
                        ∙ 지진 상황에서는 유리 파편, 건물 잔해 등으로 도로가 위험하기 때문에 걸을 수 있는 아이라도 안고 대피해야 합니다. 업을 때에는 머리를 보호하고, 안거나 업더라도 반드시 신발을 신깁니다.<br>
                    </p>
                    <p>
                        <strong class="level4_title">3. 손을 꼭 잡고 행동요령을 확인합니다.</strong>
                        ∙ 혼란스러운 상황 속에서 헤어지지 않도록 손을 잡고 대피합니다. 어린이의 경우 행동요령을 알고 있더라도 필요한 행동을 말해주며 함께 대처할 수 있도록 안내합니다.
                    </p>
                </div>
                <div>
                    <ul class="contextIndent_twoDepList">
                        <li class="prevent_img">
                            <img id="img02" src="" class="unload_rsc" alt="황사∙미세먼지가 실내로 들어오지 못하도록 창문 등을 점검하고 마스크를 준비합니다." />
                        </li>
                    </ul>
                </div>
            </div><!-- tabmenu02 -->

            <div class="tabmenu03">
                <div class="detail">
                    <h3 class="title_02">흔들림이 멈추거나 대피 후에는 이렇게 행동합니다.</h3>
                    <p>
                        <strong class="level4_title">1. 가족의 상황과 부상자를 살펴보고 즉시 구조 요청을 합니다.</strong>
                        ∙ 흔들림이 멈추면 함께 있는 가족끼리 부상이 없는지 집에 위험이 없는지 확인합니다.<br>
                        ∙ 부상자가 있으면 이웃과 서로 협력하여 응급처치하고 소방서(119) 등 구조구급기관에 신고합니다.
                    </p>
                    <p>
                        <strong class="level4_title">2. 주변의 피해 상황에 따라 귀가 여부를 결정합니다.</strong>
                        ∙ 지진이 발생하면 라디오 및 주변에 있는 공공기관이 제공하는 정보에 따라 행동하며, 귀가여부를 판단합니다.
                    </p>
                    <p>
                        <strong class="level4_title">3. 가정이나 사무실로 돌아간 후에는 안전에 유의하여 주변을 확인합니다.</strong>
                        ∙ 가정이나 사무실의 피해 상황을 확인하고, 안전이 의심된다면 전문가의 확인을 받도록 합니다.<br>
                        ∙ 옷장이나 사무실 보관함 등의 내용물이 쏟아져 내려 부상을 입을 수도 있으므로 문을 열 때 주의합니다.
                    </p>
                    <p>
                        <strong class="level4_title">4. 올바른 정보를 항상 확인합니다.</strong>
                        ∙ 근거없는 유언비어에 유의하고, TV‧라디오나 공공기관에서 제공하는 정보를 확인하여 지진 국민행동요령에 따릅니다.
                    </p>
                </div>
            </div><!-- tabmenu03 -->
         </div><!-- tabarea -->
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 지진방재관리과 한구진(044-205-5192)</strong>
        </div>
                
    <!-- <div class="preventTop_boxWrap">
        <h4 class="title_01" style="margin-top:3px;">지진, 미리 대비하고 알아두세요</h4>

    </div> -->

</div>

<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>