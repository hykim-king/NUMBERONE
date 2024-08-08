<%--
/**
	Class Name:
	Description:
	Author: Jinseo
	Modification information
	
	수정일         수정자        수정내용
    -----   -----  -------------------------------------------
    2024.   7. 27   최초작성 
    
    author eclass NUMBERONE
    since 2020.11.23
    Copyright (C) by KandJang All right reserved.
*/
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- bootstrap --%>
<link rel="stylesheet" href="${CP}/resources/css/bootstrap.css">
<%-- jquery --%>
<script src="${CP}/resources/js/jquery_3_7_1.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
<%-- common.js --%>
<script src="${CP}/resources/js/common.js"></script>
<title>Insert title here</title>

<script>
function sigunguSet(){
    
    let locCode = $("#sido option:selected").val();
    let type = "GET";
    let url = "/ehr/location/location_sigungu.do";
    let async = "true";
    let dataType = "html";
    
    console.log("locCode:" + locCode);
    
    if("" === locCode){
    	 $("#sigungu").empty();
    	 $("#sigungu").append('<option value="">' + "시군구선택" + '</option>');
    	 $("#eupmyeondong").empty();
         $("#eupmyeondong").append('<option value="">' + "읍면동선택" + '</option>');
    	 
    }else{
    
	    let params = {
	         "locCode" : locCode
	       };
	    
		     PClass.pAjax(url,params,dataType,type,async,function(data){
		         
		   	   var optionSigunguData = JSON.parse(data);
		    
		       optionSigunguData.forEach(function(item){
		    	    $("#sigungu").append('<option value="' + item.locCode + '">' + item.sigungu + '</option>');         
		    });
	     
	   }); 
    
    }
}//--sigunguSet end

function eupmyeondongSet() {
	
	let locCode = $("#sigungu option:selected").val();
    let type = "GET";
    let url = "/ehr/location/location_eupmyeondong.do";
    let async = "true";
    let dataType = "html";
    
    console.log("locCode:" + locCode);
	
    if("" === locCode){
    	$("#eupmyeondong").empty();
        $("#eupmyeondong").append('<option value="">' + "읍면동선택" + '</option>');
   }else{
   
       let params = {
            "locCode" : locCode
          };
       
            PClass.pAjax(url,params,dataType,type,async,function(data){
                
              var optionEupmyeondongData = JSON.parse(data);
           
              optionEupmyeondongData.forEach(function(item){
                   $("#eupmyeondong").append('<option value="' + item.locCode + '">' + item.eupmyeondong + '</option>');         
           });
        
      }); 
   
   }
	
}//--eupmyeondongSet end


</script>
</head>
<body>
    
    <div class="container-sm" id="content" style="display: block;">
        <div class="level1_titleWrap">
          <h2 class="level1_title">대피시설</h2>
        </div>
    
        <div class="contextIndent_oneDepList">
            <li><span class="dot_bulTxt_txtIndent">· 시도, 시군구별로 대피시설 정보를 조회하실 수 있습니다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">· 세종특별자치시는 시군구가 없으므로 읍면동에서 조회하시기 바랍니다.</span></li>
            <li><span class="dot_bulTxt_txtIndent">· 지도 아이콘을 클릭하시면 지도를 통해 위치를 확인하실 수 있습니다.
            <br>
              (본 지도는 네이버에서 제공하는 서비스로 실제와 차이가 있을 수 있습니다.)</span></li>
            <li><span class="dot_bulTxt_txtIndent">· 민방위사태 발생시 주민의 생명과 재산을 보호하기 위하여 정부지원으로 설치 또는 공공용으로 지정 지하 대피시설</span></li>
            <li><span class="dot_bulTxt_txtIndent" style="color: red">· 주거지역의 대피시설이 검색되지 않을 경우(법정동과 행정동의 차이)인근 지역으로 재검색 시행 필요</span></li>
            <li><span class="dot_bulTxt_txtIndent" style="color: red">· 타 시스템 연계를 통해 제공되는 정보로 일시적 장애 및 조회 지연이 있을 수 있습니다.</span></li>
            <li><span class="dot_bulTxt_txtIndent" style="color: red">· 행정구역 경계에 위치한 시설은 활용도에 따라 인접 관할 행정기관에서 해당 시설을 관리할 수 있어 검색된 시설의 주소가 인접 시군구(읍면동)로 검색될 수 있습니다.</span></li>
        </div>
        
        <div class="container-sm">
            <form action="#" name="locationForm" class="row g-2 align-items-right" id="locationForm">
                <div class="row g-3">
                    <select name="sido" class="form-select" id="sido" onchange="sigunguSet()">
                        <option value="">시도선택</option>
                    </select>

                    <select name="sigungu" class="form-select" id="sigungu" onchange="eupmyeondongSet()">
                        <option value="">시군구선택</option>
                    </select>

                    <select name="eupmyeondong" class="form-select" id="eupmyeondong">
                        <option value="">읍면동선택</option>
                    </select>
                </div>
                <button type="button" class="btn btn-primary" id="search">검색</button>
            </form>
        </div>
        
        <div class="boardTOP_boxWrap">
            <div class="boardTop_status">
                <span>전체</span>
                <span id="spTotal" class="total">0</span>
                <span>건</span>
            </div>
        </div>

        <div class="boardList_boxWrap">
            <table class="boardList_tabe">
                <colgroup>
                  <col style="width: 46%;">
                  <col style="width: 13%;">
                  <col style="width: 7%;">
                  <col style="width: 7%;">
                  <col style="width: 7%;">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col">
                            <span>위치</span>
                        </th>
                        <th scope="col">
                            <span>시설</span>
                        </th>
                        <th scope="col">
                            <span>규모</span>
                        </th>
                        <th scope="col">
                            <span>최대 수용인원</span>
                        </th>
                        <th scope="col">
                            <span>이동약자 접근성</span>
                        </th>
                    </tr>
                </thead>

                <tbody id="gen" xtag="generator">
                    <tr></tr>
                </tbody>
            </table>
        </div>

        <div class="board_bottomWrap">
            <div class="paging_bottomItem">
                <a id="apagebefore" class="paging_btn" onclick="apagebefore_onclik(); return false;" tabindex="0">
                    <span class="prevPaging_imgSet_icon">
                        <i class="bi bi-arrow-left">이전</i>
                    </span>
                </a>
            </div>

            <div class="paging_bottomItem">
                <a id="apagenext" class="paging_btn" onclick="apagnext_onclik(); return false;" tabindex="0">
                    <span class="nextPaging_imgSet_icon">
                        <i class="bi bi-arrow-right">다음</i>
                    </span>
                </a>
                <input type="text" allowchar="O-9" class="paging_intput" id="iptpageinput" title="페이징 넘버 입력">
                <a id="apagego" class="go_btn" onclick="apagego_onclick()" tabindex="0">이동</a>
            </div>
        </div>
        
        <div style="board_top:solid 1.5px #dadada;margin-top: 30px;">
            <strong class="level4_title">
                <br>
                소관부서 : 위기관리지원과 (044-205-4432)
            </strong>
        </div>

    </div>
<script src="${CP}/resources/js/bootstrap.min.js"></script>

<script>
$(document).ready(function(){
    console.log("document ready!");
		
	function sidoSet(){
		
		var optionSidoData = JSON.parse('${sidoSearch}');
		
		optionSidoData.forEach(function(item){
			$("#sido").append('<option value="' + item.locCode + '">' + item.sido + '</option>');

		});
		
	}
	sidoSet();
	
	$("#search").on("click",function(event){
		//이벤트 버블링 방지
        event.preventDefault();
        console.log("search click");
        /* doRetrieve(1); */ 
	});
	
});//--document end

</script>
</body>
</html>