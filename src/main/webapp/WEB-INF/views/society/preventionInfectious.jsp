
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
<title>사회재난행동요령</title>
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
        <h3 class="level2_title">감염병예방</h3>
        <div class="infoTop_btn_w">
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    
    
    <!-- 텍스트 시작부분  -->
    
    <style>.w100{width:100% !important}.img-area img{width:550px}</style>

    <div class="text_area">
    <div class="contextIndent_oneDepList">
<h3 class="title_02" >예방수칙</h3>
<strong class="title_03">진드기 매개 감염병 예방을 위한 예방수칙</strong>
        <div class="prevent_text_grid w100">
        <strong class="" style="font-weight: bold;">- 예방</strong>
            <ul class="contextIndent_twoDepList">               
                <li><span class="dash_bulTxt_txtIndent">① 옷 제대로 입기</span></li>
                <li><span class="dash_bulTxt_txtIndent">② 기피제 뿌리기</span></li>
                <li><span class="dash_bulTxt_txtIndent">③ 풀숲 피하기</span></li>
                <li><span class="dash_bulTxt_txtIndent">④ 씻고, 빨래하기</span></li>              
            </ul>
        <strong class="" style="font-weight: bold;">- 관리</strong>
            <ul class="contextIndent_twoDepList">               
                <li><span class="dash_bulTxt_txtIndent">① 증상 살펴보기</span></li>
                <li><span class="dash_bulTxt_txtIndent">② 물린 흔적 찾아보기</span></li>
                <li><span class="dash_bulTxt_txtIndent">③ 빨리 치료하기</span></li>               
            </ul>
        
 
  
 
        </div>
<strong class="title_03">호흡기 감염병 예방을 위한 5대 예방수칙</strong>
        <div class="prevent_text_grid w100">
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">① 기침예절 실천하기</span></li>
                <li><span class="dash_bulTxt_txtIndent">② 올바른 손씻기 생활화하기</span></li>
                <li><span class="dash_bulTxt_txtIndent">③ 씻지 않은 손으로 눈,코, 입 만지지 않기</span></li>
                <li><span class="dash_bulTxt_txtIndent">④ 실내에서는 자주 환기하기</span></li>
                <li><span class="dash_bulTxt_txtIndent">⑤ 발열 및 호흡기 증상시 의료기관 방문하여 적절한 진료받기</span></li>
            </ul>
        </div>
<strong class="title_03">감염병 예방을 위한 손씻기 6단계</strong>
        <div class="prevent_text_grid w100">
            <ul class="contextIndent_twoDepList">
                <li><span class="dash_bulTxt_txtIndent">① 손바닥과 손바닥을 마주대고 문지르기</span></li>
                <li><span class="dash_bulTxt_txtIndent">② 손등과 손바닥을 마주대고 문지르기</span></li>
                <li><span class="dash_bulTxt_txtIndent">③ 손바닥을 마주대고 손깍지를 끼고 문지르기</span></li>
                <li><span class="dash_bulTxt_txtIndent">④ 손가락을 마주잡고 문지르기</span></li>
                <li><span class="dash_bulTxt_txtIndent">⑤ 엄지손가락을 다른편 손바닥으로 돌려주며 문지르기</span></li>
                <li><span class="dash_bulTxt_txtIndent">⑥ 손가락을 반대편 손바닥에 놓고 문지르며 손톱 밑을 깨끗이 하기</span></li>
            </ul>
        </div>

    <br/>
    <h4 style="font-size:20px; color:#000; font-weight:700; margin-bottom:-20px">감염병 정보에 대해 더 자세한 내용을 알고 싶으시면 아래 주소를 참고하십시오.<br/>
질병관리청 홈페이지 :kdca.go.kr(<a href="https://kdca.go.kr/" style="margin-top: 15px; color: blue; font-size: 20px; font-weight: 700; line-height: 35px;" title="코로나바이러스감염증19 홈페이지" target="_blank">https://kdca.go.kr/</a>)</h4>
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">
            소관부서 : 행정안전부 보건의료재난대응과 하성현(044-205-6154)<br>
            소관부서 : 보건복지부 질병정책과 신은식(044-202-2507)<br>
            소관부서 : 질병관리청 위기대응총괄과 최주한(043-719-9082) </strong>
        </div>
</div>
</div>
    
    <!-- 텍스트 끝부분  -->
    
    <!--이미지 화면 시작부분  -->
    <div class="img-area" style="display:none">
                            <h4 class="title_02" style="font-weight: bold;">예방수칙</h4>
                            <strong class="title_03">진드기 매개 감염병 예방을 위한 예방수칙</strong>
                            <div class="prevent_text_grid w100">
                            <strong class="" style="font-weight: bold;">- 예방</strong>
                                <ul class="contextIndent_twoDepList">               
                                    <li><span class="dash_bulTxt_txtIndent">① 옷 제대로 입기</span></li>
                                    <li><span class="dash_bulTxt_txtIndent">② 기피제 뿌리기</span></li>
                                    <li><span class="dash_bulTxt_txtIndent">③ 풀숲 피하기</span></li>
                                    <li><span class="dash_bulTxt_txtIndent">④ 씻고, 빨래하기</span></li>              
                                </ul>
                            <div class="contextIndent_twoDepList">
                                <div class="dash_bulTxt_txtIndent">
                                    <div class="imgBox_2" >
                                    <img id="img06" alt="" style="width:800px;margin-top:20px" class="img_hand_clean unload_rsc" src=""/>
                                    </div>  
                                </div>
                            </div>  
                            <strong class="" style="font-weight: bold;">- 관리</strong>
                                <ul class="contextIndent_twoDepList">               
                                    <li><span class="dash_bulTxt_txtIndent">① 증상 살펴보기</span></li>
                                    <li><span class="dash_bulTxt_txtIndent">② 물린 흔적 찾아보기</span></li>
                                    <li><span class="dash_bulTxt_txtIndent">③ 빨리 치료하기</span></li>               
                                </ul>
                            <div class="contextIndent_twoDepList">
                                <div class="dash_bulTxt_txtIndent">
                                    <div class="imgBox_2" >
                                    <img id="img07" alt="" style="width:800px;margin-top:20px" class="img_hand_clean unload_rsc" src=""/>
                                    </div>  
                                </div>
                            </div>  
                        
                            <h4 class="title_03">호흡기 감염병 예방을 위한 5대 예방수칙 </h4>
                                <ul class="contextIndent_twoDepList">
                                    <li><span class="dash_bulTxt_txtIndent">① 기침예절 실천하기</span></li>
                                    <li><span class="dash_bulTxt_txtIndent">② 올바른 손씻기 생활화하기</span></li>
                                    <li><span class="dash_bulTxt_txtIndent">③ 씻지 않은 손으로 눈,코, 입 만지지 않기</span></li>
                                    <li><span class="dash_bulTxt_txtIndent">④ 실내에서는 자주 환기하기</span></li>
                                    <li><span class="dash_bulTxt_txtIndent">⑤ 발열 및 호흡기 증상시 의료기관 방문하여 적절한 진료받기</span></li>
                                </ul>       
                            <div class="contextIndent_twoDepList">
                                <div class="dash_bulTxt_txtIndent">
                                    <div class="imgBox_2" >
                                    <img id="img01" alt="" style="width:800px;margin-top:20px" class="img_hand_clean unload_rsc" src=""/>
                                    </div>  
                                </div>
                            </div>
                        <h4 class="title_03">감염병 예방을 위한 손씻기 6단계</h4>
                            <ul class="contextIndent_twoDepList">
                                <li><span class="dash_bulTxt_txtIndent">① 손바닥과 손바닥을 마주대고 문지르기</span></li>
                                <li><span class="dash_bulTxt_txtIndent">② 손등과 손바닥을 마주대고 문지르기</span></li>
                                <li><span class="dash_bulTxt_txtIndent">③ 손바닥을 마주대고 손깍지를 끼고 문지르기</span></li>
                                <li><span class="dash_bulTxt_txtIndent">④ 손가락을 마주잡고 문지르기</span></li>
                                <li><span class="dash_bulTxt_txtIndent">⑤ 엄지손가락을 다른편 손바닥으로 돌려주며 문지르기</span></li>
                                <li><span class="dash_bulTxt_txtIndent">⑥ 손가락을 반대편 손바닥에 놓고 문지르며 손톱 밑을 깨끗이 하기</span></li>
                            </ul>
                        <div class="contextIndent_twoDepList">
                            <div class="dash_bulTxt_txtIndent">
                                    <img id="img02" alt="" style="width:800px;margin-top:20px" class="img_hand_clean unload_rsc" src=""/>                   
                            </div>
                        </div>
                    
    
                    <!-- <h4 class="title_02" style="display:none;">수인성 감염병 예방수칙</h4>
                    <div class="contextIndent_twoDepList">
                        <div class="dash_bulTxt_txtIndent">
                            <div class="imgBox_2" >
                                <img id="img04" alt="" class="img_hand_clean unload_rsc" src=""/>
                                <div class="ir">
                                2022.5.27 질병관리정
                                수인성,식품매개 감염병 예방수칙
                                01. 올바른 손씻기 6단계
                                흐르는 물에 30초 이상 비누로 손씻기
                                1.손바닥,2.손등,3.손가락사이,4.두손모아,5.엄지손가락,6.손톱밑
                                02. 음식은 충분히 익혀먹기
                                03. 물은 끊여 마시기
                                04. 채소 과일은 깨끗한 물에 씻거난 껍질 벗겨 목기
                                05. 설사 증상이 있는경우 음식 조리 및 준비하지 않기
                                06. 위생적으로 조리하기
                                07. 생선,고기,채소 도마 분리사용 칼, 도마는 조리후 소독하기
                                </div>              
                            </div>  
                        </div>
                    </div>
    
                    <h4 class="title_02" style="display:none;">모기매개 감염병 예방수칙</h4>
                    <div class="contextIndent_twoDepList">
                        <div class="dash_bulTxt_txtIndent">
                                <img id="img05" alt="" class="img_hand_clean unload_rsc" src=""/>
                                <div class="ir">
                                질병정보 궁금할때
                                감염병이 의심될때 1339
                                질병관리청
                                모기매개 감염병
                                모기에 물리지 않는 것이 최선의 예방책입니다.
                                모기매개 감염병 예방수칙
                                모기에 물리지 않도록 기피제, 모기장 등 모기 회피 용품 사용
                                외출시 밝은 색의 긴팔, 긴바지를 착용
                                야외에서 풀숲, 물웅덩이 주변은 되도록 가지 않을 것을 권고
                                </div>                  
                        </div>
                    </div> -->
                    <h4 style="font-size:20px; color:#000; font-weight:700; margin-bottom:-20px">감염병 정보에 대해 더 자세한 내용을 알고 싶으시면 아래 주소를 참고하십시오.<br/>
질병관리청 홈페이지 :kdca.go.kr(<a href="https://kdca.go.kr/" style="margin-top: 15px; color: blue; font-size: 20px; font-weight: 700; line-height: 35px;" title="코로나바이러스감염증19 홈페이지" target="_blank">https://kdca.go.kr/</a>)</h4>
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">
            소관부서 : 행정안전부 보건의료재난대응과 하성현(044-205-6154)<br>
            소관부서 : 보건복지부 질병정책과 신은식(044-202-2507)<br>
            소관부서 : 질병관리청 위기대응총괄과 최주한(043-719-9082) </strong>
        </div>
    </div>
    <!--이미지 화면 끝부분  -->

</div>
    
<!-- <div id="footer_include" data-include="/idsiSFK/neo/sfk/include/work_footer.html"></div> -->
</body>
</html>
<!-- 웹 접근성 조치 -->
<script>
function changeTabIndex() {$('#atynm').attr('tabindex','-1');}
setTimeout(changeTabIndex, 300); // 300 밀리초 후에 tabindex 속성 변경
</script>