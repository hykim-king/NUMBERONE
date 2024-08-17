
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

</script>
</head>
<body>
<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">비상사태</h2>
    </div>
    <div class="tabContent_boxWrap">
                <div class="section01">
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="detail">
                  
                              <h3 class="title_01">비상사태 발생 시 국민행동요령</h3> 
                              <h3 class="title_02">비상시 정부 대응</h3> 
                              <p>
                                - 국가비상사태 : 적 공격이 예상되거나 시작되면 국가비상사태를 선포하여 민ㆍ관ㆍ군이 힘을 합쳐 대응합니다.
                                <br>
                                - 국가동원령 : 인력ㆍ물자ㆍ장비 등을 동원하는 국가동원령을 선포하여 국가 위기극복을 지원합니다.
                                <br>
                                - 생필품 배급 : 유사시 국민생활 안정시키는 생활필수품을 유통·관리하고 필요시 배급제를 실시합니다.
                              </p>
                              <h3 class="title_02">비상사태 발생시 국민행동요령</h3> 
                              <p>
                                <img id="img01" class="max-small unload_rsc" src="/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_20190402_01.png" style="width:100%" alt="비상대비 생필품 구비, 불필요한 전화사용자제, 집안에서 안내방송 청취">
                                <br>
                                ※ 즉시 가정으로 복귀하되, 동원하는 중점관리대상업체 직원들은 직장으로 복귀합니다.
                                <br>
                                ※ 국가기관의 운행 차량을 제외하고는 모든 자동차의 개인차량 운행이 통제되므로 대중교통 수단을 이용합니다.
                                <br>
                                ※ 단전·단수에 대비하여 손전등, 양초, 라이터(성냥)를 준비하고, 욕조나 큰 그릇에 물을 받아 두고 아껴 써야 합니다.
                                <br>
                                ※ 집 밖으로 나오지 말고, TV·라디오·민방위 방송을 계속 들으면서 정부의 안내를 따라야 합니다.
                                <br>
                                ※ 통화량 급증으로 통신망이 마비되지 않도록 불필요한 전화 사용은 자제합니다.
                                <br>
                                ※ 아래 민방위 영상파일은 용량관계로 분할압축되어있습니다. 분할압축집(1)~(4)를 다운 후 압축풀기 해주시길 바랍니다.
                              </p>
                              
                              <ul class="linkType_listWrap" style="margin-top:15px;">
                                    <li class="linkType_listCell">
                                        <a class="mbDownload_fcBlack_link" onclick="fn_btnOnclick('1')" title="민방위 영상파일  분할압축집 다운로드 1">
                                            <span class="txt">민방위 영상파일 분할압축집(1)</span><i class="download_imgSet_icon"></i>
                                        </a>
                                    </li>
                                    <li class="linkType_listCell">
                                        <a class="mbDownload_fcBlack_link" onclick="fn_btnOnclick('2')" title="민방위 영상파일  분할압축집 다운로드 2">
                                        <span class="txt">민방위 영상파일 분할압축집(2)</span>
                                            <i class="download_imgSet_icon"></i>
                                        </a>
                                    </li>
                                    <li class="linkType_listCell">
                                        <a class="mbDownload_fcBlack_link" onclick="fn_btnOnclick('3')" title="민방위 영상파일  분할압축집 다운로드 3">
                                            <span class="txt">민방위 영상파일 분할압축집(3)</span><i class="download_imgSet_icon"></i>
                                        </a>
                                    </li>
                                    <li class="linkType_listCell">
                                        <a class="mbDownload_fcBlack_link" onclick="fn_btnOnclick('4')" title="민방위 영상파일  분할압축집 다운로드 4">
                                            <span class="txt">민방위 영상파일 분할압축집(4)</span><i class="download_imgSet_icon"></i>
                                        </a>
                                    </li>
                                </ul>
                                    
                                    
                              <h3 class="title_01">일상생활 비상대비 3가지</h3>
                              <h3 class="title_02">대피장소 확인</h3>
                              <p>
                                · 일상생활 장소(가정, 직장, 학교 등)에서 가장 가까이 있는 대피장소로 이동합니다.
                                <br>
                                · 공습·포격 : 민방위 대피소, 지하철역, 지하 주차장, 대형건물 지하시설 등
                                <br>
                                · 핵·방사능 : 방풍문이 설치된 민방위 대피소, 지하상가, 지하철, 건물 지하
                                <br>
                                · 생물·화학 무기
                                <br>
                                　　- 외부공기 유입을 차단할 수 있는 대피장소
                                <br>
                                　　- 공기순환·정화 시설을 갖춘 대피시설(지하철,지하상가 등) 방화문이 설치되어 있는 건물
                                <br>
                                　　- 야외에서 신속히 대피할 경우 고지대, 건물 고층의 실내
                              </p>
                              
                              <h3 class="title_02">대피용품 준비</h3>
                              <img id="img02" class="max-small unload_rsc" src="/idsiSFK/neo/ext/img/prevent/eEmergencySafety_icon_20190402_02.png" style="width:100%" alt="대피용품 준비 이미지 대체 텍스트 제공">
                              <div class="ir">
                                공습포격
                                라디오, 건전지, 휴대용 손전등, 양초,
                                라이터(성냥), 식수, 식량, 취사도구, 
                                침구류, 상비약품 등
                                핵방사능
                                2주이상사용할 수 있는 식수와 식품,제염에 필요한 식염수, 비닐 및 접착테이프 등의 대피소 보강재료 등
                                생물.화학무기
                                방독면, 마스크. 세제, 비누, 접착/절연 테이프, 비옷, 고무장갑, 고무장화 등
                              </div>
                              

                              
                              <h3 class="title_02">신속한 대피</h3>
                              <h3 class="title_03">민방공 경보 및 안내방송에 따라 신속히 대피하며 상황별 대피요령을 알아 두고 대비합니다.</h3>
                              <h3 class="title_03">민방공 경보시 사이렌 및 음성방송 등의 안내에 따라 신속히 대피해야 합니다.</h3>
                              
                              <p>
                                - 운전 중에는 차량을 가까운 빈터나 도로 오른쪽에 세우고 대피합니다.
                                <br>
                                - 대피소로 이동하기 어려운 경우, 낮은 곳에 최대한 엎드려 몸을 숨깁니다.
                                
                                <strong class="level4_title">핵·방사능 피해</strong>
                                <strong class="level4_title">1. 핵, 방사능 피해 전</strong>
                                ※ 핵·방사능 피해에 대비하고 신체 피해를 막도록 노력해야 합니다.
                                <br>
                                ① 민방공 경보가 발생하면 지하철, 터널, 건물지하 등의 지하장소나 대피시설로 신속히 이동합니다.
                                <br>
                                ② 대피용품을 휴대하고 대피장소로 이동하여 몸을 보호해야 합니다.
                                <br>
                                ③ 대피할 시간적 여유가 없다면 핵폭발 하는 방향의 반대 방향으로 엎드리되 양손으로 눈·귀를 막고 입은 벌리며 배는 바닥에 닿지 않게 해야 합니다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">2. 핵, 방사능 피해 중</strong>
                                ※ 방사능과 낙진을 피하는 데에 최대한 노력합니다.
                                <br>
                                ① 시간적 여유가 있을 때에는 바람이 불어오는 방향을 살펴 낙진 지역에서 신속히 벗어나야 합니다.
                                <br>
                                ② 피폭지역에서 벗어날 수 없다면 최대한 지하 깊은 곳으로 이동해야 합니다.
                                <br>
                                ③ 오염장소에서 멀수록, 신체 노출 시간이 적을수록 안전하며 납·콘크리트 벽 등으로 건축된 시설 안으로 대피합니다.
                                <br>
                                ④ 대피 후에는 절연·접착테이프, 천 등으로 입구를 막아 낙진이 들어오지 않도록 합니다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">3. 핵, 방사능 피해 후</strong>
                                ※ 상황파악 후 조치사항을 결정해야 합니다.
                                <br>
                                ① 핵폭발, 바람의 방향, 피해 상황 여부, 가용한 대피소 등을 파악합니다.
                                <br>
                                ② 대피소에서는 라디오를 통하여 정부의 안내를 경청하고, 대피한 사람들은 대표자를 지정하여 질서 있게 대처해야 합니다.
                                <br>
                                ③ 2주 이상 대피하는데 필요한 물품을 준비합니다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">생물무기 피해</strong>
                                생물무기 피해란 병원균이 포함된 미생물을 무기로 살포하여 나타나는 피해를 말합니다.
                                <br>
                                ※ 생물무기 피해시 전염 및 확산 예방에 노력해야 합니다.
                                <br>
                                - 생물무기 피해시 병원균에 따라 고열, 호흡곤란, 근육마비 등의 증세가 나타납니다.
                                <br>
                                - 대표적인 생물무기로는 탄저균, 페스트, 천연두 등이 있습니다.
                                <br>
                                - 오염물질 및 환자와의 접촉을 금하고, 방독면이나 마스크 착용 후 오염 지역을 신속히 벗어나야 합니다.
                                <br>
                                - 정부방송의 안내에 따라 감염 여부를 확인하고 예방접종 등의 치료를 받아야 합니다.
                                <br>
                                - 음식물과 물은 끓여서 섭취해야 하며 몸과 생활공간의 청결을 유지해야 합니다.
                              </p>
                              
                              <p>
                              <strong class="level4_title">화학무기 피해</strong>
                                사람 및 동식물에게 피해를 줄 수 있는 유독성 액체, 기체 또는 고체 상태의 화학 무기(화학작용제)살포로 나타나는 피해를 말합니다.
                                <br>
                                ※ 화학무기 피해시 신속히 대피하고 오염물질은 신속히 제거해야 합니다.
                                <br>
                                1. 실외에 있을 경우
                                <br>
                                방독면이나 마스크 등을 착용하고 적절한 장소로 대피합니다. 방독면, 마스크가 없을 경우 손수건, 마스크, 옷 등을 이용하여 호흡기를 보호합니다.
                                <br>
                                2. 실내에 있을 경우
                                <br>
                                출입문, 창문, 환풍기는 접착테이프 등으로 밀봉해야 합니다. 오염된 신체부위는 비누, 세제로 흐르는 물에 1분 이상 씻고, 오염된 옷은 비닐봉지에 밀봉해야 합니다.
                              </p>
                              
                              
                              <h3 class="title_01">정부배급품 안내</h3>
                              <h3 class="title_03">생활필수품 사재기를 하지 말고 정부의 배급제 실시에 협조합니다.</h3>
                              <img id="img03" class="max-small unload_rsc" src="" style="width:100%" alt="정부배급품 안내 대체 텍스트 제공">
                              <div class="ir">
                                생활필수품 
                                - 쌀/곡류, 밀가루, 통조림, 라면, 소금, 유류(난방용/취사용), 부탄캔, 건전지, 양초, 식수, 손전등 등
                                정부배급품 
                                - 쌀, 유류(난방용/취사용), 부탄캔, 소금 등
                              </div>
                              
                              <h3 class="title_01">신고 요령</h3>
                              <img id="img04" class="max-small unload_rsc" src="" style="width:100%" alt="신고해야 할 대상 - 간첩, 폭발물, 불온선전물">
                              <h3 class="title_03">거짓 선전이나 유언비어에 동요하지 말고, 수상한 사람과 물건은 즉시 신고합니다.</h3>
                              <p>
                                · 적군, 무장공비, 간첩, 간첩선박, 행동이 수상한 사람
                                <br>
                                · 불발탄, 지뢰 같은 폭발물
                                <br>
                                · 불온 선전물, 불온 문서
                                <br>
                                · 연막을 뿌리는 수상한 비행기, 공중에서 낙하하는 사람
                                <br>
                                · 국가 중요 시설을 사진 촬영하거나 파괴하려는 사람
                                <br>
                                · 기타 국가 안보를 해하는 사람 및 각종 피해 발생 상황
                                <br>
                                신고처 : 국가정보원(111), 경찰(112, 113), 가까운 군부대 및 관공서
                              </p>
                           </div> 
                        </div>
                    </div>
                </div>
        </div>
        <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">소관부서 : 위기관리지원과 변경민 (044-205-4433)</strong>
        </div>
    </div>

<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>