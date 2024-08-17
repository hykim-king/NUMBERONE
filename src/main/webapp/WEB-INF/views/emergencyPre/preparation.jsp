
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
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
    function href_1_onclick(e) {
        var url = "/idsiSFK/neo/sfk/cs/csc/bbs_conf.jsp?menuSeq=593&bbs_no=9&viewtype=read&bbs_ordr=2521";
        location.href = url;
    };
    function href_2_onclick() {
        var url = "/idsiSFK/neo/sfk/cs/csc/bbs_conf.jsp?menuSeq=593&bbs_no=9&viewtype=read&bbs_ordr=2522";
        location.href = url;
    };
    function href_3_onclick() {
        var url = "/idsiSFK/neo/sfk/cs/csc/bbs_conf.jsp?menuSeq=593&bbs_no=9&viewtype=read&bbs_ordr=2527";
        location.href = url;
    };
    
    function agobeforeView_onclick() {
         window.history.back();
    };
    
    function prBtn_3_onclick() {
        var url = "/idsiSFK/neo/sfk/cs/csc/bbs_conf.jsp?menuSeq=593&bbs_no=9&viewtype=read&bbs_ordr=2615";
        location.href = url;
    }
    /**
     * 영상 및 이미지 로드
     */
    var isLoaded = false;
    function fn_loadImg() {
        $("#btn_load").addClass("unload_rsc");
        $("#btn_unload").removeClass("unload_rsc");
        $("#img01").attr("src", "/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_Emer_20190403_01.png").removeClass("unload_rsc");
        $("#img02").attr("src", "/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_Emer_20190403_02.png").removeClass("unload_rsc");
        $("#img03").attr("src", "/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_Emer_20190403_03.png").removeClass("unload_rsc");
        $("#img04").attr("src", "/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_Emer_20200907_01.png").removeClass("unload_rsc");
        $("#img05").attr("src", "/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_Emer_20200907_02.png").removeClass("unload_rsc");
        $("#img06").attr("src", "/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_Emer_20200907_03.png").removeClass("unload_rsc");
        if (isLoaded) {
            return;
        }
        isLoaded = true;
    }
    function fn_unloadImg() {
        $("#btn_load").removeClass("unload_rsc");
        $("#btn_unload").addClass("unload_rsc");
        $("#img01").attr("src", "/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_Emer_20190403_01.png").addClass("unload_rsc");
        $("#img02").attr("src", "/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_Emer_20190403_02.png").addClass("unload_rsc");
        $("#img03").attr("src", "/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_Emer_20190403_03.png").addClass("unload_rsc");
        $("#img04").attr("src", "/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_Emer_20200907_01.png").addClass("unload_rsc");
        $("#img05").attr("src", "/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_Emer_20200907_02.png").addClass("unload_rsc");
        $("#img06").attr("src", "/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_Emer_20200907_03.png").addClass("unload_rsc");
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
<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">비상대비물자</h2>
    </div>
    
    <div class="infoTop_btn_w">
            <a class="prevView_btn" onclick="agobeforeView_onclick()" id="agobeforeView">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    <div class="tabContent_boxWrap">
    
            <h3 class="title_01">비상대비 물자 준비요령</h3>
            <h4 class="title_02">일상에서 준비할수록 안전</h4>
            <div class="contextIndent_oneDepList">
                <span class="dot_bulTxt_txtIndent"> - 평상시에 가정에서 구비할 수 있는 생활필수품과 비상사태에 대비하여 상비약품, 그리고 화생방 대비용품을 마련해야 합니다. 또한, 주기적으로 물자의 유통기한을 확인하고 교체하여 관리해야 합니다.</span>
            </div>


            <h4 class="title_01">비상대비물자</h4>
            <h5 class="level4_title">● 비상용 생활필수품</h5>
            <div class="contextIndent_oneDepList">
                <span class="dot_bulTxt_txtIndent"> - 식량·식수 : 가급적 조리와 보관이 간편한 쌀,라면, 밀가루, 통조림 등(30일분)</span>
                <span class="dot_bulTxt_txtIndent"> - 취사도구 : 식기(코펠), 버너 및 부탄가스(15개 이상)</span>
                <span class="dot_bulTxt_txtIndent"> - 침구 및 의류 : 담요, 내의 등</span>
                <span class="dot_bulTxt_txtIndent"> - 라디오(건전지 포함), 배낭, 휴대용 전등, 양초, 성냥 등</span>
            </div>
            <h5 class="level4_title">● 가정용 상비약품</h5>
            <div class="contextIndent_oneDepList">
                <span class="dot_bulTxt_txtIndent">의약품 : 소독제, 해열진통제, 소화제, 지사제, 화상연고, 지혈제, 소염제 등</span>
                <span class="dot_bulTxt_txtIndent">의약 외품 : 핀셋, 가위, 붕대, 탈지면,반창고, 삼각건 등</span>
            </div>
            <h5 class="level4_title">● 화생방 대비물품</h5>
            
            <div class="contextIndent_oneDepList">
                <span class="dot_bulTxt_txtIndent"> - 방독면 또는 수건, 마스크</span>
                <span class="dot_bulTxt_txtIndent"> - 보호 옷 또는 비닐 옷, 비옷</span>
                <span class="dot_bulTxt_txtIndent"> - 방독장화와 장갑 또는 고무장화와 장갑</span>
                <span class="dot_bulTxt_txtIndent"> - 비누, 합성세제 등을 활용 피부 세척</span>
                <span class="dot_bulTxt_txtIndent"> - 충분한 접착테이프 (창틀, 문틀 밀폐용)</span>
            </div>
            
            <h4 class="title_02">비상대비물자 준비요령</h4>
            <div class="contextIndent_oneDepList">
                <span class="dot_bulTxt_txtIndent"> - 음식물은 가급적 조리가 필요 없고 통조림으로 되어 있는 식품을 선택하고, 정기적으로 유통기간을 확인하여 교체해 주어야 합니다.</span>
                <span class="dot_bulTxt_txtIndent"> - 라디오의 건전지는 충분히 준비해 두어야 합니다.</span>
                <span class="dot_bulTxt_txtIndent"> - 한 사람당 최소한 한 벌씩 추위를 막을 수 있는 따뜻한 옷과 신발을 준비해 둡니다.</span>
                <span class="dot_bulTxt_txtIndent"> - 의약품은 가족 구성원의 특성을 고려 어린이나 노약자에 맞는 약품을 추가적으로 준비합니다. </span>
                <span class="dot_bulTxt_txtIndent">　　환자가 있다면 최근 처방전 및 의약품을 준비합니다.</span>
                <span class="dot_bulTxt_txtIndent"> - 대피시에는 통장, 보험증서, 계약서, 여권 등 중요서류도 함께 챙겨 가야 합니다.</span>
                <span class="dot_bulTxt_txtIndent"> - 화생방 대비물품을 구비하되, 구비하지 않았다면 가정에서 쉽게 구할 수 있는 화생방 대체장비물자를 활용합니다.</span>
                <span class="dot_bulTxt_txtIndent"> - 평상시에는 비상대비물자를 휴대·이동이 쉽도록 배낭, 캐리어 등에 보관하고, 유통기한이 있는 품목은 정기적으로 사용·순환 교체하여 관리합니다.</span>
            </div>

            <h4 class="title_02">가족 비상연락 카드</h4>
            <img id="img04" class="max-small unload_rsc" src="" style="width:100%" alt="비상연락카드- 이름, 전화번호, 주소, 혈액형, 가족외 비상연락망 – 이름, 관계, 전화번호, 주소, 가족만남의 장소 – (1),(2),(3),기타"/>


            <h3 class="title_01">부상자 응급조치 요령</h3>
            <h4 class="title_02">빠르고 정확한 응급조치</h4>
            <div class="contextIndent_oneDepList">
                <span class="dot_bulTxt_txtIndent"> - 응급환자 및 부상자는 함부로 옮기면 위험할 수 있으니 잘 살펴보고 대처해야 합니다.</span>
            </div>
            <h4 class="title_02">눈 제염 방법</h4>
            <div class="contextIndent_oneDepList">
                <span class="dot_bulTxt_txtIndent"> - 응급환자안구가 손상되지 않았다면 물이나 생리 식염수로 눈을 충분히 씻습니다.</span>
                <span class="dot_bulTxt_txtIndent"> - 비루관의 오염을 피하려면 식염수가 눈의 안쪽에서 바깥쪽으로 흐르도록 씻습니다.</span>
            <img id="img01" class="max-small unload_rsc" src="" style="width:100%" alt="오염된 눈을 씻겨서 처치하는 이미지"/>
            </div>
            <h4 class="title_02">귀 제염 방법</h4>
            <div class="contextIndent_oneDepList">
                <span class="dot_bulTxt_txtIndent"> - 제염하기 전 고막의 상태를 확인합니다.</span>
                <span class="dot_bulTxt_txtIndent"> - 고막이 손상되지 않았다면 외이도(귀의 바깥쪽)를 씻습니다.</span>
            <img id="img02" class="max-small unload_rsc" src="" style="width:100%" alt="오염된 귀를 제염하는 이미지"/>
            </div>
            <h4 class="title_02">비강 및 구강 제염 방법</h4>
            <div class="contextIndent_oneDepList">
                <span class="dot_bulTxt_txtIndent"> - 비강 오염 시 의식이 있는 상태라면 직접 코를 풀도록 합니다.</span>
                <span class="dot_bulTxt_txtIndent"> - 필요시 면봉으로 코 안쪽을 닦아냅니다.</span>
                <span class="dot_bulTxt_txtIndent"> - 구강 및 인후 오염 시에는 생리 식염수나 3% 과산화수소용액으로 가글합니다.</span>
                <span class="dot_bulTxt_txtIndent"> - 칫솔, 치약을 이용해 이를 닦고 입안은 자주 헹구어 냅니다.</span>
            <img id="img03" class="max-small unload_rsc" src="" style="width:100%" alt="오염된 비강제염방법, 구강제염방법 이미지"/>
            </div>

            <h4 class="title_01">화생방 대비물자 사용요령</h4>
            <h4 class="title_02">방독면 착용요령</h4>
            <h5 class="level4_title">● 올바른 사용법 숙지로 안전하게</h5>
            <div class="contextIndent_oneDepList">
                <span class="dot_bulTxt_txtIndent">독성 화학가스로부터 호흡기를 보호할 수 있는 방독면 착용 요령과, 화생방 보호 장비를 미처 준비하지 못했을 때 일상에서 대신 쓸 수 있는 물자 활용법을 숙지해야 합니다.</span>
                <img id="img05" class="max-small unload_rsc" src="" style="width:100%" alt="방독면 착용요령 이미지 대체 텍스트 제공"/>
                <div class="ir">
                    휴대주머니를 열어 포장된 방독면과 정화통을 꺼내 은박 포장을 제거합니다.
                    정화통 상하마개를 제거하고 시계방향으로 돌려 방독면에 장착합니다.
                    방독면 렌즈쪽이 아래를 향하도록 잡고, 방독면을 착용합니다.
                    얼굴에 밀착되도록 머리끈을 조절하고 내부 목 조임끈을 조여줍니다.
                    정화통의 공기 흡입구를 손바닥으로 막고 숨을 깊이 들이마셔 안면부가 얼굴에 밀착되는 지 확인 후 안전한곳으로 신속히 대피합니다.
                </div>
                
            </div>
            <div class="contextIndent_oneDepList">
                <span class="dot_bulTxt_txtIndent">화생방 보호 장비가 없을 때 쉽게 대신 쓸 수 있는 물자 활용방법을 알아봅시다.</span>
                <img id="img06" class="max-small unload_rsc" src="" style="width:100%" alt="화생방 보호장비가 없을때 대체 방법 이미지 대체 텍스트 제공"/>
                <div class="ir">
                    기본장비 : 방독면
                    대체물자 장비
                    1.손수건, 의류
                    활용방법 : 손수건을 물에 적셔 코와 입을 막아 호흡기 보호
                    2.비닐봉지, 비닐팩, 위생팩
                    활용방법 : 비닐봉지를 쓰고 허리를 묶어 외부 공기유입 차단(비닐봉지 속의 남은 산ㄴ소를 감안하여 이동)
                    3.마스크, 휴지, 면붕대(거즈), 물티슈
                    활용방법 : 마스크를 착용하거나 면붕대(거즈)는 물에 적시고 휴지, 물티슈는 몇겹 접어 코와 입을 막아 호흡기 보호
                    기본장비 : 보호의, 보호두건
                    대체물자 장비 : 비옷, 방수의류 등
                    활용방법 : 비옷을 머리까지 덮어 쓰고 허리띠로 허리를  꼭 묶어 외부 오염공기의 유입차단
                    대체물자 장비 : 고무장화, 고무장갑
                    활용방법 : 고무장갑, 장화를 착용하여 피부노출 방지
                </div>
            </div>
            
            <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
                <strong class="level4_title">소관부서 : 위기관리지원과 변경민 (044-205-4433)</strong>
            </div>
    </div>
</div>

<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>