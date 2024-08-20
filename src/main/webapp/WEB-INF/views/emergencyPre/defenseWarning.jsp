
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
<title>비상대비행동요령</title>
<link href="/ehr/resources/css/common.css"  rel="stylesheet"/>
<link href="/ehr/resources/css/layout2.css" rel="stylesheet" />
<link href="/ehr/resources/css/content.css" rel="stylesheet" />
<link href="/ehr/resources/css/dp_sub.min.css" rel="stylesheet" />

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

    function toggleSlide() {
        if (slideHide1.isOpen()) {
            slideHide1.startHide();
            $("#rightContent").animate({"margin-left":"0px"}, 300);
        }
        else {
            slideHide1.startSlide();
            $("#rightContent").animate({"margin-left":"200px"}, 300);
        }
    }
    
    function prBtn_3_onclick() {
        var url = "/idsiSFK/neo/sfk/cs/csc/bbs_conf.jsp?menuSeq=593&bbs_no=9&viewtype=read&bbs_ordr=2610";
        location.href = url;
    }
    
    /**
     * 영상 및 이미지 로드
     */
    var isLoaded = false;
    function fn_loadImg() {
        $("#btn_load").addClass("unload_rsc");
        $("#btn_unload").removeClass("unload_rsc");

        $("#img01").attr("src", "/idsiSFK/neo/ext/img/civil/img_leaflet_01.jpg").removeClass("unload_rsc");
        $("#img02").attr("src", "/idsiSFK/neo/ext/img/civil/img_leaflet_02.jpg").removeClass("unload_rsc");
        
        if (isLoaded) {
            return;
        }
        isLoaded = true;
    }
    function fn_unloadImg() {
        $("#btn_load").removeClass("unload_rsc");
        $("#btn_unload").addClass("unload_rsc");
        
        $("#img01").attr("src", "/idsiSFK/neo/ext/img/civil/img_leaflet_01.jpg").addClass("unload_rsc");
        $("#img02").attr("src", "/idsiSFK/neo/ext/img/civil/img_leaflet_02.jpg").addClass("unload_rsc");
    }

    
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
<!-- -------------------------------------------------------- -->
<!-- 컨텐츠 시작                                              -->
<!-- -------------------------------------------------------- -->

<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">국민행동요령</h2>
    </div>
    
    <h3 class="level2_title">민방공 경보(경계·공습)시 국민행동요령</h3>
    <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    <ul class="contextIndent_oneDepList">
        <img id="img01" class="unload_rsc" margin="auto;" src="" style="width:100%" alt="민방공 경보(경계·공습)시 국민행동요령1 대체 텍스트 제공">
        </img>
        <div class="ir">
            01 일상 생활 중에 꼼꼼히 준비하세요
            비상시 대피장소
            가장 가깝고 안전한 정부 지정 대피장소 알아 두기
            지하철역
            지하 주차장
            큰 건물 지하실
            화학무기 피해시 대피 장소
            높은 곳이 안전!
            비상시 대비 물품
            비상시 필수 대비 물품
            필수
            식량, 식수, 상비약품, 라디오, 손전등, 성냥, 양초, 침구, 의류
            화생방 피해 대비
            방독면, 마스크, 비옷, 장갑, 비누
            추가 대비 물품
            *가족과 헤어질 경우도 대비하세요.
            어린이: 이름표, 어른: 신분증 혹은 사본
            02 공습 경보가 울리거나 포탄이 떨어질 때 안전하게 대피하세요
            비상시 대피방법
            아파트, 고층건물
            엘리베이터 대신 비상계단 이용
            운전 중
            가까운 공터, 도로 오른쪽에 정차 후 대피
            화학무기 대피방법
            대피방법
            호흡기를 보호하고 높은 곳으로 대피
            주의사항
            오염된 공기에 노출되지 않도록 주의
            문틈 밀폐, 에어컨과 환풍기 사용 중단
            오염에 노출된 피부는 흐르는 물에 15분 이상 씻기
            생물학무기 대피방법
            대피방법
            마스크, 손수건 등으로 호흡기를 보호한 후 대피
            주의사항
            오염물질, 환자와 접촉 금지
            예방접종과 치료
            음식물은 15분 이상 조리 후 섭취
            핵무기 대피방법
            대피방법
            지하철역 등 지하시설로 즉각대피
            핵 폭탄이 터지면
            배다 바닥에 닿지 않게 반대방향으로 엎드려 입을 벌리고, 눈, 귀를 막기
            핵 폭발 후
            방사능과 낙진 피하기
            03 공습이 멎고 조용해졌을 때 귀 기울이세요
            공습이 멎었을 때
            정부의 안내에 따라 행동해요
            라디오, 방송 듣기 / 소문과 유언비어에 동요하지 않기
            가족, 이웃과 함께해요
            어린이, 노약자가 불안하지 않게 현재 상황 설명
            힘을 모아 함께 극복해요
            생필품 사재기 X
            헌혈 O
            부상자 구호 O
        </div>
    </ul>
    
        <div style="text-align:center">
            <img id="img02" class="unload_rsc" margin="auto;" src="" style="width:60%" alt="민방공 경보(경계·공습)시 국민행동요령2 대체 텍스트 제공"> </img>
        </div>
        <div class="ir">
            기억하세요
            민방공 경보의 의미
            민방공 경보 의미를 기억하고, 귀 기울여 주세요.
            적의 공격이 예상될 때
            경계 경보 안내 음성방송
            곧 공격 받거나 공격 받고 있을 때
            핵·공습경보
            안내 1분간 물결치듯 사이렌 소리
            화생방 공격이 예상되거나 공격 받고 있을 때
            화생방 경보 안내 음성방송
            공격이 멎고 추가공격이 예상되지 않을 때
            경보해제 안내 음성방송
            핵무기 공격
            이렇게 대처해요!
            핵경보가 울리면 지하시설로 즉각 대피
            지하철역
            터널
            지하상가
            핵폭탄이 터지면 반대방향으로 엎드려 입을 벌리고 눈, 귀를 막기
            (배가 바닥에 닿지 않게!)
            핵폭발 후 방사능과 낙진 피하기
            콘크리트 건물 안
            지하 깊은 곳
            이동시 비옷, 우산 활용
        </div>

    <h4 class="level3_title">(주간)경계경보시 국민행동요령</h4>
    <div class="contextIndent_oneDepList">
        <li><span class="dot_bulTxt_txtIndent">· 모든 행정기관에서는 비상근무 태세를 갖추고 자체경계를 강화하시기 바라며, 경찰관서에서는 주민의 안전보호와 교통통제를 강화하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 민방위 대장은 대원을 지휘하여 민방위 시설과 장비를 점검 하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 국민 여러분께서는 즉시 대피 할 준비를 하시고, 어린이와 노약자는 미리 대피 시키기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 화생방 공격에 대비하여 방독면 등 화생방 개인보호 장비와 대체활용 가능한 장비를 점검하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 대피 하시기 전에 화재의 위험이 있는 유류와 가스는 안전한 곳으로 옮기고, 전열기는 코드를 뽑아두시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 극장, 운동장, 터미널, 백화점 등 사람이 많이 모인 곳에서는 영업을 중단하고, 손님들에게 경보내용을 알린 다음 순차적으로 대피시켜 주시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 운행중인 자동차는 대피할 준비를 하면서 천천히 운행하시고 고가도로나 도심지 진입을 삼가하시기 바랍니다.</span></li>
    </div>
    <h4 class="level3_title">(주간)공습경보시 국민행동요령</h4>
    <div class="contextIndent_oneDepList">
        <li><span class="dot_bulTxt_txtIndent">· 국민 여러분께서는 지하대피소나 지형지물을 이용하여 신속하고 질서 있게 대피하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 극장, 운동장, 터미널, 백화점 등 사람이 많이 모인 곳에서는 영업을 중단하고 손님을 대피시켜 주시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 운행중인 자동차는 가까운 빈터나 도로 우측에 정차하여 승객을 안전한 곳으로 대피시켜 주시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 대피하실 때는 화생방공격에 대비하여 방독면 등 보호장비와 대체활용 가능한 장비를 착용하시고 대피하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 모든 행정기관에서는 비상근무 태세를 갖추고 자체경계를 강화하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 민방위대장, 지도요원, 교통경찰관은 주민대피 유도와 차량운행 통제에 임하시기 바랍니다</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 대피장소에서는 질서를 지키고, 계속 방송을 들으면서 행정안전부의 지시에 따라 주시기 바랍니다.</span></li>
    </div>
    <h4 class="level3_title">(야간)경계경보시 국민행동요령</h4>
    <div class="contextIndent_oneDepList">
        <li><span class="dot_bulTxt_txtIndent">· 모든 가정과 직장에서는 즉시 대피할 준비를 하시고 어린이와 노약자는 미리 대피시킨 다음, 옥내·외의 전등은 모두 꺼 주시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 극장, 운동장, 터미널, 백화점 등 사람이 많이 모인 곳에서는 영업을 중단하고, 손님들에게 경보내용을 알린 다음 순차적으로 대피시키고 모든 전등을 꺼 <br/>주시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 응급환자실, 중요산업시설 등 불가피한 곳에서는 불빛이 밖으로 새어 나가지 않도록 차광막 등으로 완전히 가려 주시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 운행중인 자동차는 불빛을 줄이고 대피할 준비를 하면서 천천히 운행하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 민방위대장과 지도요원은 각 가정과 건물의 소등을 지도하여 주시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 화생방공격에 대비하여 방독면 등 화생방 개인보호장비나 대체활용 가능한 장비를 점검하시기 바랍니다.</span></li>
    </div>
    <h4 class="level3_title">(야간)공습경보시 국민행동요령</h4>
    <div class="contextIndent_oneDepList">
        <li><span class="dot_bulTxt_txtIndent">· 모든 가정과 직장에서는 지금 곧 옥내·외의 전등을 모두 끈 다음 신속하고 질서 있게 대피하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 극장, 운동장, 터미널, 백화점 등 사람이 많이 모인 곳에서는 영업을 중단하고, 모든 전등을 끈 다음 손님들을 대피시키기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 응급환자실, 중요산업시설 등 불가피한 곳에서는 불빛이 밖으로 새어 나가지 않도록 차광막 등으로 완전히 가려 주시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 운행중인 자동차는 가까운 빈터나 도로 우측에 정차하여 전조등, 미등, 실내등을 끈 다음, 승객을 대피시켜 주시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 대피하실 때는 화생방공격에 대비하여 방독면 등 보호장비와 대체활용 가능한 장비를 착용하시고 대피하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 민방위대장, 지도요원, 교통경찰관은 건물과 차량의 전등을 모두 끄도록 하고, 주민대피 유도와 차량운행 통제에 임하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 대피장소에서는 질서를 지키고 계속 방송을 들으면서 행정안전부의 지시에 따라 주시기 바랍니다.</span></li>
    </div>
    <h3 class="level2_title">화생방 경보 시 국민행동요령</h3>
    <h4 class="level3_title">(상황1) : 화생방작용제 탐지시, 오염예상시 또는 공격확인시</h4>
    <div class="contextIndent_oneDepList">
        <li><span class="dot_bulTxt_txtIndent">· 대피시설이나 실내로 대피한 경우에는 실내에 외부 공기가 들어오지 않도록 밀폐하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 야외에서는 바람부는 방향을 판단하여 바람부는 좌우측 방향이나 측방의 높은 곳으로 대피하시되 호흡기와 피부를 보호하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 극장, 운동장, 터미널, 백화점 등 사람이 많이 모인 곳에서는 영업을 중단하고 손님들에게 손수건 등으로 호흡기를 보호하게 한 후 대피시키기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 모든 행정기관에서는 비상근무 태세를 갖추고 자체경계를 강화하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 운행중인 차량은 신속히 오염지역을 이탈하거나 도로 우측에 정차하여 보호장비를 착용한 후 대피시설이나 건물 내부로 승객을 대피시켜 주시기 <br/>바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 대피장소에서는 질서를 지키고 계속 방송을 들으면서 행정안전부의 지시에 따라 주시기 바랍니다.</span></li>
    </div>
    <h4 class="level3_title">(상황2) : 화생방공격 종료시</h4>
    <div class="contextIndent_oneDepList">
        <li><span class="dot_bulTxt_txtIndent">· 모든 행정기관과 경찰, 소방, 민방위, 예비군, 의료기관 등에서는 화생방공격에 따른 탐지, 사태수습에 임하여 주시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 사태수습요원은 오염지역에 오염표지판을 설치하고 주민의 출입을 통제하며 오염지역 제독작업을 하여 주시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 오염환자가 발생하였을 때에는 오염되지 않은 지역으로 운반하여 오염증상에 따라 응급처치 후 병원으로 후송 하시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 국민 여러분께서는 가급적 외출을 삼가고 오염지역 시설이나 물자에는 접근하거나 만지지 말아야 합니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 또한, 오염지역의 식수와 음식물은 함부로 먹지 말아야 하며, 민방위대원의 오염지역 제독작업에 적극 협조하여 주시기 바랍니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 질서를 지켜 주시고 화생방경보가 해제 될 때까지 계속 보호장비를 착용하고 방송을 청취하여 주시기 바랍니다.</span></li>
    </div>
    
    <h3 class="level2_title">핵 경보시 국민행동요령</h3>
    <h4 class="level3_title">핵 경보시 국민행동요령(공격시)</h4>
    <div class="contextIndent_oneDepList">
        <li><span class="dot_bulTxt_txtIndent">· 최대한 외부와 차단된 대피시설, 지하공간으로 대피하고, 충격·진동에 의한 건물 잔해에 다치지 않도록 신체를 보호해야 합니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 대피할 시간적 여유가 없는 경우, 폭발 화구와 반대 방향으로 몸을 피하고 외부의 도랑, 차폐물 등을 이용하여 방사선 피폭과 충격으로부터 신체 노출을 최소화하여야 합니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 섬광 등의 공격 시작을 인지하였을 경우에는 2~3보 이상 움직이지 말고 즉시 폭발 반대 방향으로 도랑, 엄폐물 등을 활용하여 폭풍이 멈출 때까지 지면 접촉이 최소화된 엎드린 자세를 유지해야 합니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 대피장소에서는 질서를 지키고 계속 방송을 통해 전달되는 민방위경보통제소의 안내에 따라 주시기 바랍니다.</span></li>
    </div>
    <h4 class="level3_title">핵 경보시 국민행동요령(종료시)</h4>
    <div class="contextIndent_oneDepList">
        <li><span class="dot_bulTxt_txtIndent">· 방사선 및 방사성 물질에 노출되었을 경우, 샤워가 가능한 장소에서는 따뜻한 물과 비누를 이용하여 샤워를 하고, 불가한 장소에서는 겉옷을 벗고 젖은 수건 등으로 피부를 닦은 후 비닐봉지에 넣어 밀봉한 후 깨끗한 옷으로 환복합니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 공격 원점인 폭발 장소에서 멀수록, 신체 노출 시간이 적을수록 안전하기 때문에 외부와 최대한 차단된 콘크리트 건물의 안쪽 또는 지하 깊은 곳으로 이동하여 정부의 안내방송을 청취합니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 화재 등으로 대피장소에서 이동이 필요할 경우, 최단거리의 대피시설, 콘크리트 건물 등을 파악한 후 호흡기·피부보호 등의 조치를 취하고 신속히 해당 장소를 이탈하여 인근 대피장소로 이동합니다.</span></li>
        <li><span class="dot_bulTxt_txtIndent">· 여건이 가능할 경우 비닐봉투, 겉옷 등을 통해 손목, 발목 등을 최대한 감싸고 이동을 실시합니다. 방사성 낙진을 피하는 경우도 동일하게 적용됩니다.</span></li>
    </div>
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 중앙민방위경보통제센터 허선(044-205-4385)</strong>
    </div>
</div>

<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>