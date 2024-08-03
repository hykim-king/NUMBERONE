
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
        <h3 class="level2_title">인공우주물체추락</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    <h4 class="level2_title">인공우주물체추락시 국민행동요령</h4> 
    <div>
            <h4 class="title_02" style="">실내에 있을 경우</h4>
            <h4 class="title_03" style="">추락 중</h4>
            <br>• 인공우주물체가 추락한 것을 알린다.
            <br>• 건물 내 지하 등 대피장소로 대피한다.
            <br>• 대피장소가 없으면 튼튼한 건물벽, 기둥 뒤로 대피한다.
            <br>• 대형 잔해물이 건물에 충돌할경우 2차 낙하물에 주의한다.           
            
            <h4 class="title_03" style="">추락 후</h4>
            <br>• 방송을 청취하고, 안내에 따른다.
            
            <h4 class="title_02" style="">실외에 있을 경우</h4>
            <h4 class="title_03" style="">추락 중</h4>         
            <br>• 야외활동을 중지하고 주변 대피장소나 실내로 대피한다.
            <br>• 철근콘크리트빌딩이나 튼튼한 엄폐물로 신속히 대피한다.
            <br>• 엄폐물이 없으면 낙하물의 진행 반대방향으로 대피한다.
            <br>• 대형 잔해물이 건물에 충돌할 경우 2차 낙하물에 주의한다.
            <h4 class="title_03" style="">추락 후</h4> 
            <br>• 추락 잔물은 접촉하지 말고 인근 소방서에 잔해물의 위치를 알린다. 
            <br>• 방송을 청취하고, 안내에 따른다.
        <img alt="인공우주물체추락시 행동요령 대체 텍스트 제공" id="img01" class="unload_rsc" margin="auto;" src="" style="margin-top:5px;width:100%"/>
        <div class="ir">
        <h3>인공우주물체추락시 행동요령</h3> 
            <div>
                    <h4>실내에 있을 경우</h4>
                    <dl>
                        <dt>건물내, 지하대피소가 있을경우</dt>
                        <dd>우주물체 잔해물이 지상까지 추락가능성이 있을 경우 신속하게 대피장소로 이동한다.(국민재난안전포털등참조)</dd>
                    </dl>
                    <dl>
                        <dt>건물내, 지하대피소가 없을경우</dt>
                        <dd>창문이나 출입문을 정면으로 보지말고 튼튼한 벽 또는 기둥뒤로 대피한다. 책상이나 탁자 밑 등 머리를 보호할 수 있는 곳으로 대피한다.</dd>
                    </dl>
                    <dl>
                        <dt>대피 후 행동요령</dt>
                        <dd>대형 잔해물이 건물 충돌 시 2차 낙하물에 주의한다. 재난방송을 청취하고, 지시에 따라 행동한다.</dd>
                    </dl>
                    <dl>
                        <dt>추락 완료 후 행동요령</dt>
                        <dd>우주물체 추락잔해물로 의심되는 물체를 발견할 경우 방사능 오염물질 및 유해화합물등이 탑재되어 있을 수 있으니 접촉하지말고 즉시 가까은 소방서나 경찰서에 신고한다.</dd>
                    </dl>
                    <h4>실외에 있을 경우</h4>  
                    <dl>
                        <dt>근처에, 대피 가능한 장소가 있을경우</dt>
                        <dd>신속하게 가까운 대피가능한 장소(지하대피소 등)로 이동하되, 주변에 화재가 발생하거나 무너질 가능성이 적은 곳으로 대피한다.</dd>
                    </dl>
                    <dl>
                        <dt>근처에, 대피 가능한 장소가 없는경우</dt>
                        <dd>소지하고 있는 물건 등을 이용하여 최대한 머리등 신체를 보호한다.</dd>
                    </dl>
                    <dl>
                        <dt>대피 후 행동요령</dt>
                        <dd>강한 폭발과 떨어지는 물체에 대비한다. 재난방송을 청취하고, 지시에 따라 행동한다.</dd>
                    </dl>
                    <dl>
                        <dt>추락 완료 후 행동요령</dt>
                        <dd>우주물체 추락잔해물로 의심되는 물체를 발견할 경우 방사능 오염물질 및 유해화합물등이 탑재되어 있을 수 있으니 접촉하지말고 즉시 가까은 소방서나 경찰서에 신고한다.</dd>
                    </dl>
            </div>
        </div>  
    </div>
    
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 사회재난대응총괄과 허윤정(044-205-5251) <br>소관부서 : 과학기술정보통신부 거대공공연구정책과 이호일(044-202-4672)</strong>
    </div>
    
</div>
    
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>