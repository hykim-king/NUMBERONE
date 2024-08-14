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
<%-- kakao Map --%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=caeb693362f61c09ef1fc4e0b640aaf4"></script>
<title>Insert title here</title>

<script>
//시도 비동기 통신
function sidoSet(){
	$("#eupmyeondong").empty();
    let type = "GET";
    let url = "/ehr/location/location";
    let async = "false";
    let dataType = "html";
    
    let params = {
        "locCode" : 0
    };
    
    PClass.pAjax(url,params,dataType,type,async,function(data){
    
           var optionSidoData = JSON.parse(data);
           
           optionSidoData.forEach(function(item){
                $("#sido").append('<option value="' + item.locCode + '">' + item.sido + '</option>');         
        });
     
   }); 
        
}
// 시군구 비동기 통신
function sigunguSet(){
    $("#sigungu").empty();
    $("#sigungu").append('<option value="">' + "시군구선택" + '</option>');
    $("#eupmyeondong").empty();
    
    let locCode = $("#sido option:selected").val();
    let type = "GET";
    let url = "/ehr/location/location_sigungu";
    let async = "false";
    let dataType = "html";
    
    console.log("locCode:" + locCode);
    
    if("" === locCode){
         $("#sigungu").empty();
         $("#sigungu").append('<option value="">' + "시군구선택" + '</option>');
         $("#eupmyeondong").empty();
         $("#eupmyeondong").append('<option value="">' + "" + '</option>');
         
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

// 읍면동 비동기 통신
function eupmyeondongSet() {
    $("#eupmyeondong").empty();
    $("#eupmyeondong").append('<option value="">' + "읍면동선택" + '</option>');
    
    let locCode = $("#sigungu option:selected").val();
    let type = "GET";
    let url = "/ehr/location/location_eupmyeondong";
    let async = "false";
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
        
     <div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center">
        <h5 id="totalCnt">전체  0 건</h5>
    </div>
    
    <div class="header-line"></div>

    <table id="shelterTable" class="table table-bordered">
        <colgroup>
            <col style="width:46%">
            <col style="width:13%">
            <col style="width:7%">
            <col style="width:7%">
            <col style="width:7%">     
        </colgroup>
    
        <thead>
            <tr class="table-light.table-striped">
                <th class="text-center">위치</th>
                <th class="text-center">시설</th>
                <th class="text-center">규모</th>
                <th class="text-center">최대수용인원</th>
                <th class="text-center">이동약자접근성</th>
            </tr>
        </thead>
        <tbody id="shelterList">
        </tbody>
    </table>

    <nav>
        <ul class="pagination justify-content-center">
            <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">이전</a>
            </li>
            <li class="page-item active">
                <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">다음</a>
            </li>
        </ul>
    </nav>
</div>

<script src="${CP}/resources/js/bootstrap.min.js"></script>

<script>
$(document).ready(function(){
    console.log("document ready!");
	
    
    
    // 시도 동기 통신
	/* function sidoSet(){
		
		var optionSidoData = JSON.parse('${sidoSearch}');
		
		optionSidoData.forEach(function(item){
			$("#sido").append('<option value="' + item.locCode + '">' + item.sido + '</option>');

		});
		
	} */
	
	sidoSet();
	
	$("#search").on("click",function(event){
		//이벤트 버블링 방지
        event.preventDefault();
        console.log("search click");
        
        shelterRetrieve();
	});


function shelterRetrieve() { 
		console.log("shelterRetrieve()");
		
		let locCode = "";
		
		$("#totalCnt").html("전체 0 건");
		
		
		if($("#sido option:selected").val() === ""){
			$("#shelterList").empty();
			return "";
			
		} else if($("#eupmyeondong option:selected").val() === ""){
			 locCode = $("#sigungu option:selected").val();
			 $("#shelterList").empty();
			 
		}else{
			$("#shelterList").empty();
			locCode = $("#eupmyeondong option:selected").val();
		}
		
		let type = "GET";
		let url = "http://localhost:8080/ehr/shelter/shelter";
		let async = "false";
		let dataType = "html";
		
		let params = {
			"locCode" : locCode,
			"shelterDiv" : "10"
		};
		
		 PClass.pAjax(url,params,dataType,type,async,function(data){
	         
	         var shelterData = JSON.parse(data);
	         $("#totalCnt").html("전체" + shelterData.length + "건");
	         shelterData.forEach(function(item){
	        
	        	  $("#shelterList").append($("<tr>"));
	        	// roadAddress 클릭 이벤트 추가
	              let roadAddressElement = $("<td></td>").html(item.roadAddress + "<br/>" + item.adminAddress);
	              roadAddressElement.css("cursor", "pointer"); // 클릭 가능한 커서 스타일
	              roadAddressElement.on("click", function(event) {
	            	  console.log("roadAddressElement click")
	            	  openKakaoMap(item.lat,item.lon);
		          });
	        	  
	        	  $("#shelterList").append(roadAddressElement);
	              $("#shelterList").append($("<td>").text(item.facilityName));
	              $("#shelterList").append($("<td>").text(item.scale));
	              $("#shelterList").append($("<td>").text(item.maxCapacity));
	              $("#shelterList").append($("<td>").text(item.accessibility));
	              $("#shelterList").append($("</tr>"));
	      });
	   
	 }); 
		 
   }
   
	
});//--document end

function openKakaoMap(lat,lon){
    //팝업창 생성
    var popup = window.open("http://localhost:8080/ehr/shelter/shelter_map?lat="+lat+"&lon="+lon, "Kakao Map", "width=700,height=500");
    popup.document.body.appendChild(mapContainer);
    popup.document.body.style.margin = "0";
    popup.document.body.style.padding = "0";
    popup.document.body.style.overflow = "hidden";
   
    
    
}//-- openKakaoMap end  

</script>
</body>
</html>