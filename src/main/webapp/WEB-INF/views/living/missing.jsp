
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
<title>생활안전행동요령</title>
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
$(function(){
    var idx = 0;
    var tabBtn = $(".tablist > li a");
    var tabBtnParent = $(".tablist > li");
    var content = $(".tabarea > div");

    tabBtn.click(function(){
        $('.tabindexBtn').attr('title','');
        idx=$(this).parent().index();
        $(this).parent().addClass("on")
        $(this).attr('title','선택됨');
        $(this).parent().siblings().removeClass("on");
        content.eq(idx).addClass("on");
        content.eq(idx).siblings().removeClass("on");
        $('li.on').attr('title', '');
    });
    //enter 이벤트 추가
    tabBtn.keydown(function(event) {
        if (event.keyCode == 13) {
            $('.tabindexBtn').attr('title','');
            idx=$(this).parent().index();
            $(this).parent().addClass("on")
            $(this).attr('title','선택됨');
            $(this).parent().siblings().removeClass("on");
            content.eq(idx).addClass("on");
            content.eq(idx).siblings().removeClass("on");
            $('li.on').attr('title', '');
        }
    });
});
</script>

<!-- 생활안전행동요령 -->
<script>

//이전화면
function agobeforeView_onclick() {
     window.history.back();
};

</script>
</head>
<body>
<div class="content">
    <div class="level1_titleWrap">
        <h2 class="level1_title">사회재난시 행동요령</h2>
    </div>
    <div class="level2_border_titleWrap">
        <H3 id="tbmainlab" class="level2_title">실종유괴예방</H3>
        <div class="infoTop_btn_w">
            <label for="selMenugo" class="ir">생활안전사고종류선택</label>
            <a id="agobeforeView" class="prevView_btn" onclick="agobeforeView_onclick()">이전화면<i class="arrow_left_imgSet_icon"></i></a>
        </div>
    </div>
    
    
    <strong class="level4_title"> </strong>
    <div class="contextIndent_twoDepList" id="gphtml">

            <div class="section01">
                    <div class="tabarea">
                        <div class="tabmenu01 on">
                           <div class="detail">
                              <h3 class="title_02">실종유괴 예방</h3> 
                              <p>
                                · 자녀를 집에 혼자 두지 마세요.
                                <br>
                                · 항상 자녀와 함께 다니세요.
                                <br>
                                · 실종아동 예방용품을 활용하세요.
                                <br>
                                · 자녀에 관한 정보들을 기억해 주세요.
                                <br>
                                · 자녀의 하루 일과와 친한 친구들을 알아두세요.
                                <br>
                                · 정기적으로 자녀사진을 찍어두세요.
                              </p>
                           </div> 
                        </div>
                    </div>
                </div>

<h4 class="level2_title">국민행동요령</h4> 
         <h3 class="title_02">어린이 실종 유괴 예방</h3> 
        <br>
        <div>
            <ul class="contextIndent_twoDepList">
                <li style="">
                    <img id="img10" src="" class="unload_rsc" style="padding-left: 60%;width:15%;" alt="경찰청 로고"/>
                </li>
            </ul>
        </div>
        <br />
        <div id="signature_div" style="font-size:10pt;float: left; width:30%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;" summary="잘 모르는 사람과 접촉하지 않도록 교육합니다.">
            <caption>어린이 실종 유괴 예방</caption>
            <thead class="ir">
                <tr>
                    <th scope=row>
                        <span>어린이 실종 유괴 예방 </span>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img01" src="" class="unload_rsc" alt="잘 모르는 사람과 접촉하지 않도록 교육합니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style=""> 잘 모르는 사람과 접촉하지 않도록 교육합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        
        <div id="signature_div" style="font-size:10pt;float: left; width:30%;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;" summary="아이의 지문, 사진, 보호자 인적사항 등을 미리 등록합니다. ※ 경찰서나 안전드림앱을 통해 등록 가능합니다.">
            <caption>어린이 실종 유괴 예방</caption>
            <thead class="ir">
                <tr>
                    <th scope=row>
                        <span>어린이 실종 유괴 예방 </span>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img02" src="" class="unload_rsc" alt="아이의 지문, 사진, 보호자 인적사항 등을 미리 등록합니다. ※ 경찰서나 안전드림앱을 통해 등록 가능합니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="">아이의 지문, 사진, 보호자 인적사항 등을 미리 등록합니다.<br>※ 경찰서나 안전드림앱을 통해 등록 가능합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        
        <div id="signature_div" style="font-size:10pt; ">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;" summary="정기적으로 아이 사진을 찍습니다. ※ 안전드림앱을 통해 갱신 가능합니다.">
            <caption>어린이 실종 유괴 예방</caption>
            <thead class="ir">
                <tr>
                    <th scope=row>
                        <span>어린이 실종 유괴 예방 </span>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img03" src="" class="unload_rsc" alt="정기적으로 아이 사진을 찍습니다. ※ 안전드림앱을 통해 갱신 가능합니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="">정기적으로 아이 사진을 찍습니다.<br>※ 안전드림앱을 통해 갱신 가능합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        
        <br />
        <div id="signature_div" style="font-size:10pt; width:30%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;" summary="집 주변, 등하굣길 주변의 아동안전 지킴이집을 알려줍니다. ※ 안전드림앱, 생활안전지도를 통해 위치를 확인할 수 있습니다.">
            <caption>어린이 실종 유괴 예방</caption>
            <thead class="ir">
                <tr>
                    <th scope=row>
                        <span>어린이 실종 유괴 예방 </span>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img04" src="" class="unload_rsc" alt="집 주변, 등하굣길 주변의 아동안전 지킴이집을 알려줍니다. ※ 안전드림앱, 생활안전지도를 통해 위치를 확인할 수 있습니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="">집 주변, 등하굣길 주변의 아동안전 지킴이집을 알려줍니다.<br>※ 안전드림앱, 생활안전지도를 통해 위치를 확인할 수 있습니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;width:30%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;" summary="아이를 집에 혼자 두지 않고, 항상 자녀와 같이 다닙니다. ※  잠깐이라도 차 안에 혼자두지 않습니다.">
            <caption>어린이 실종 유괴 예방</caption>
            <thead class="ir">
                <tr>
                    <th scope=row>
                        <span>어린이 실종 유괴 예방 </span>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img05" src="" class="unload_rsc" alt="아이를 집에 혼자 두지 않고, 항상 자녀와 같이 다닙니다. ※  잠깐이라도 차 안에 혼자두지 않습니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="">아이를 집에 혼자 두지 않고, 항상 자녀와 같이 다닙니다.<br>※  잠깐이라도 차 안에 혼자두지 않습니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;" summary="이름표, 미아방지 팔찌 등 실종아동 예방용품을 활용합니다. ※ 유괴의 가능성이 있으므로 이름과 연락처는 겉으로 잘 보이지 않는 곳에 새깁니다.">
            <caption>어린이 실종 유괴 예방</caption>
            <thead class="ir">
                <tr>
                    <th scope=row>
                        <span>어린이 실종 유괴 예방 </span>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img06" src="" class="unload_rsc" alt="이름표, 미아방지 팔찌 등 실종아동 예방용품을 활용합니다. ※ 유괴의 가능성이 있으므로 이름과 연락처는 겉으로 잘 보이지 않는 곳에 새깁니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="">이름표, 미아방지 팔찌 등 실종아동 예방용품을 활용합니다.<br>※ 유괴의 가능성이 있으므로 이름과 연락처는 겉으로 잘 보이지 않는 곳에 새깁니다.</td>
                </tr>
            </tbody>
        </table>
        <br>
        <br>
        </div>
        <div id="signature_div" style="font-size:10pt;width:30%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;" summary="아이의 하루 일과와 친한 친구들을 알아둡니다. ※ 친구와 그 보호자의 연락처를 미리 파악합니다.">
            <caption>어린이 실종 유괴 예방</caption>
            <thead class="ir">
                <tr>
                    <th scope=row>
                        <span>어린이 실종 유괴 예방 </span>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img07" src="" class="unload_rsc" alt="아이의 하루 일과와 친한 친구들을 알아둡니다. ※ 친구와 그 보호자의 연락처를 미리 파악합니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="">아이의 하루 일과와 친한 친구들을 알아둡니다. <br>※ 친구와 그 보호자의 연락처를 미리 파악합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;width:30%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;" summary="아이의 현재 위치와 상황에 대해 주기적으로 확인합니다.">
            <caption>어린이 실종 유괴 예방</caption>
            <thead class="ir">
                <tr>
                    <th scope=row>
                        <span>어린이 실종 유괴 예방 </span>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img08" src="" class="unload_rsc" alt="아이의 현재 위치와 상황에 대해 주기적으로 확인합니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="">아이의 현재 위치와 상황에 대해 주기적으로 확인합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="signature_div" style="font-size:10pt;width:30%;float:left;">
        <table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;" summary="아이가 실종된 경우 즉시112에 신고합니다.">
            <caption>어린이 실종 유괴 예방</caption>
            <thead class="ir">
                <tr>
                    <th scope=row>
                        <span>어린이 실종 유괴 예방 </span>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <ul class="contextIndent_twoDepList" style="text-align: center;">
                            <li style="width:318px;">
                                <img id="img09" src="" class="unload_rsc" alt="아이가 실종된 경우 즉시112에 신고합니다."/>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="">아이가 실종된 경우 즉시112에 신고합니다.</td>
                </tr>
            </tbody>
        </table>
        </div>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
    </div>
    <div style="border-top: solid 1.5px #dadada;margin-top: 30px;">
        <strong class="level4_title">소관부서 : 경찰청 청소년보호과 강경록 (02-3150-2250)</strong>
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