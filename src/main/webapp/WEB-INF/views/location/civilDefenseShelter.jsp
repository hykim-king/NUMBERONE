<%--
/**
	Class Name: civilDefenseShelter.jsp
	Description: 민방위 대피시설
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

<%-- jquery --%>
<script src="${CP}/resources/js/jquery_3_7_1.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
<%-- common.js --%>
<script src="${CP}/resources/js/common.js"></script>
<%-- kakao Map --%>
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=caeb693362f61c09ef1fc4e0b640aaf4"></script>
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">  
<link href="/ehr/resources/css/behavior.css" rel="stylesheet" />
<title>대피시설</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    list-style: none;
}
a {
    text-decoration: none;
    color: #134b70;
}
body {
    font-family: "Nanum Gothic", sans-serif;
    background-color: #f4f4f4;
}
#containerWrap{
    width:1000px;
    margin : 0 auto;
    padding : 20px;
    margin-top:10px;
    margin-bottom:10px;
}
.container {
    width: 900px; 
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
.level1_title {
    font-size: 1.8rem;
    font-weight: 600;
    color: #2c3e50;
    margin-bottom: 20px;
}
.btn {
    padding: 10px 20px;
    font-size: 1rem;
    border-radius: 5px;
    border: none;
    background-color: #508c9b;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s ease;
    position: relative;
    left:860px;
}
.btn:hover {
    background-color: #134b70;
}
.form-label {
    font-weight: bold;
    color: #333;
}
.form-select, .form-control {
    margin-top : 10px;
    margin-bottom:10px; 
    width: 32%;
    padding: 10px;
    font-size: 1rem;
    border: 1px solid #ccc;
    border-radius: 4px;
    transition: border-color 0.3s ease;
}
.form-select:focus, .form-control:focus {
    border-color: #508c9b;
    outline: none;
    box-shadow: 0 0 5px rgba(52, 152, 219, 0.5);
}
.table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}
.table th, .table td {
    padding: 5px;
    border: 1px solid #ddd;
    text-align: center;
}
.table-striped tbody tr:nth-child(odd) {
    background-color: #eeeeee;
}
.table tbody tr:hover {
    background-color: #e0e0e0;
}
.table thead th {
    background-color: #134b70;
    color: #fff;
    font-weight: bold;
}

.pagination {
    margin: 20px 0;
    display: flex;
    justify-content: center;
    list-style: none;
    padding: 0;
}
.page-item {
    margin: 0 5px;
}
.page-link {
    display: block;
    padding: 8px 12px;
    background-color: #fff;
    color: #616161;
    border: 1px solid #ddd;
    border-radius: 4px;
    text-decoration: none;
    transition: background-color 0.3s ease, color 0.3s ease;
}
.page-link:hover, .page-item.active .page-link {
    background-color: #134b70;
    color: white;
}

.pagination {
    margin-top: 20px; /* 여백 추가 */
}

.page-item.active .page-link {
    background-color: #508c9b; /* 활성 페이지 색상 */
    border-color: #007bff; /* 활성 페이지 테두리 색상 */
    color: #fff; /* 활성 페이지 텍스트 색상 */
}

.page-link {
    color: #134b70; /* 기본 링크 색상 */
    border: 1px solid #ced4da; /* 테두리 추가 */
}

.page-link:hover {
    background-color: #e9ecef; /* hover 효과 */
    color: #0056b3; /* hover 시 링크 색상 */
}

.page-item {
    display: flex; /* flexbox 사용하여 가로로 정렬 */
    align-items: center; /* 수직 가운데 정렬 */
}

.page-link {
    margin: 0 5px; /* 좌우 여백 추가 */
}

.roadAddressElement {
    text-decoration: none; /* 기본적으로 밑줄 제거 */
}

.roadAddressElement:hover {
    
}
</style>
<script>
//시도 비동기 통신
function sidoSet(){
    let type = "GET";
    let url = "/ehr/location/location";
    let async = "false";
    let dataType = "html";
    
    let params = {
        "locCode" : 0
    };
    
	$("#eupmyeondong").empty();
	
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
    
    /* locCode = ""; */
    
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
    
    if("" === locCode){
        $("#eupmyeondong").empty();
        $("#eupmyeondong").append('<option value="">' + "" + '</option>');
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
    <%@ include file="/WEB-INF/views/main/header.jsp" %>
 
 <div id="containerWrap">
	    
	    <div class="container-sm" id="content" style="display: block;">
	        <div class="level1_titleWrap">
	          <h2 class="level1_title">대피시설</h2>
	        </div>
	    
	        <div class="contextIndent_oneDepList">
	            <li><span class="dot_bulTxt_txtIndent">· 시도, 시군구별로 대피시설 정보를 조회하실 수 있습니다.</span></li><br>
	            <li><span class="dot_bulTxt_txtIndent">· 세종특별자치시는 시군구가 없으므로 읍면동에서 조회하시기 바랍니다.</span></li><br>
	            <li><span class="dot_bulTxt_txtIndent">· 지도 아이콘을 클릭하시면 지도를 통해 위치를 확인하실 수 있습니다.</span></li><br>
	            <li><span class="dot_bulTxt_txtIndent">· 본 지도는 네이버에서 제공하는 서비스로 실제와 차이가 있을 수 있습니다.</span></li><br>  
	            <li><span class="dot_bulTxt_txtIndent">· 민방위사태 발생시 주민의 생명과 재산을 보호하기 위하여 정부지원으로 설치 또는 공공용으로 지정 지하 대피시설</span></li>
	            <li><span class="dot_bulTxt_txtIndent" style="color:#134b70; font-weight:600; ">· 주거지역의 대피시설이 검색되지 않을 경우(법정동과 행정동의 차이)인근 지역으로 재검색 시행 필요</span></li>
	            <li><span class="dot_bulTxt_txtIndent" style="color:#134b70; font-weight:600;">· 타 시스템 연계를 통해 제공되는 정보로 일시적 장애 및 조회 지연이 있을 수 있습니다.</span></li>
	            <li><span class="dot_bulTxt_txtIndent" style="color:#134b70; font-weight:600;">· 행정구역 경계에 위치한 시설은 활용도에 따라 인접 관할 행정기관에서 해당 시설을 관리할 수 있어 검색된 시설의 주소가 인접 시군구(읍면동)로 검색  될 수 있습니다.</span></li>
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
	            <col style="width:10%">  
	        </colgroup>
	    
	        <thead>
	            <tr class="table-light.table-striped">
	                <th class="text-center">위치</th>
	                <th class="text-center">시설</th>
	                <th class="text-center">규모</th>
	                <th class="text-center">최대수용인원</th>
	            </tr>
	        </thead>
	        <tbody id="shelterList">
	        </tbody>
	    </table>
	
	    <nav aria-label="Page navigation">
	        <ul class="pagination justify-content-center">
	            <li class="page-item disabled">
	                <a class="page-link" href="#" id="pageBack" type="button">이전</a>
	            </li>
	            
	            <li class="page-item active">
	                <span class="page-link" id="currentPageNo">1/<span id="totalPageNo">1</span></span> <!-- 총 페이지 수 추가 -->
	            </li>
	            
	            <li class="page-item">
	                <a class="page-link" href="#" id="pageNext" type="button">다음</a>
	            </li>
	        </ul>
	        <h5 class="mt-4">소관부서 : 위기관리지원과 (044-205-4432)</h5>
	    </nav>
	</div>
</div>
<script src="${CP}/resources/js/bootstrap.min.js"></script>

<script>
let currentPageNo = 1; // 현재 페이지 번호 초기화
let maxPageNo;         //전역변수
let totalCount;        //전역변수
$(document).ready(function(){
	
    //시도 데이터 비동기 통신
	sidoSet();
	
	//검색 버튼 클릭 이벤트
	$("#search").on("click",function(event){
		//이벤트 버블링 방지
        event.preventDefault();
        currentPageNo = 1;
        shelterRetrieve(1,totalCnt);
        
        if($("#sido option:selected").val() === ""){
        	   alert("시도를 선택하세요.");
        	   totalCnt = 0; // totalCnt 초기화
               $("#totalCnt").data("total", 0); // "totald"을 0으로 초기화
               $("#currentPageNo").text("1/1");
               $("#sigungu").empty();
               $("#sigungu").append('<option value="">' + "시군구선택" + '</option>');
               
        }else if($("#sigungu option:selected").val() === ""){
	        	alert("시군구를 선택하세요.");
	        	totalCnt = 0; // totalCnt 초기화
	        	$("#totalCnt").data("total", 0); // "totald"을 0으로 초기화
	            $("#currentPageNo").text("1/1");
	        	$("#eupmyeondong").empty();
	        	$("#eupmyeondong").append('<option value="">' + "" + '</option>');
	        	return;
        }
	});
    
	//페이지 다음 버튼 클릭 이벤트
    $("#pageNext").on("click",function(event){
		//이벤트 버블링 방지
        event.preventDefault();
        
        totalCount = Number($("#totalCnt").data("total")); // data-attribute에서 총 개수 가져오기
        maxPageNo = Math.ceil(totalCount / 10);
        
        if (currentPageNo < maxPageNo) {
            currentPageNo++;
            $("#currentPageNo").text(currentPageNo+"/"+ maxPageNo);
            shelterRetrieve(currentPageNo);
        } else {
            console.log("마지막 페이지입니다.");
        }
        
	});
    
    // 페이지 이전 버튼 클릭 이벤트
    $("#pageBack").on("click", function(event) {
        event.preventDefault();

        if (currentPageNo > 1) {
            currentPageNo--;
            $("#currentPageNo").text(currentPageNo+"/"+ maxPageNo); // 현재 페이지 번호 표시
            shelterRetrieve(currentPageNo); // 현재 페이지 번호로 데이터 조회
        } else {
            console.log("첫 번째 페이지입니다.");
        }
    });	

//shelterRetrieve
function shelterRetrieve(pageNo,totalCnt) {
	    
		let locCode = "";
		
		$("#totalCnt").html("전체 0 건");
		
		
		if($("#sido option:selected").val() === ""){
			$("#shelterList").empty();
			return "";
			
		} else if($("#sigungu option:selected").val() === ""){
			locCode = $("#sido option:selected").val();
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
		let url = "/ehr/shelter/shelterNotParent";
		let async = "false";
		let dataType = "html";
		
		let params = {
			"locCode" : locCode,
			"shelterDiv" : "10",
			"pageNo" : pageNo
		};
		
		 PClass.pAjax(url,params,dataType,type,async,function(data){
	         
	         var shelterData = JSON.parse(data);
	         totalCnt = 0; // totalCnt 초기화
	         // shelterList를 비우고 데이터가 없음을 표시
	         console.log("shelterData.length:",shelterData.length);
	          if (shelterData.length === 0) {
	        	     maxPageNo = 0;
                     $("#shelterList").append($("<tr>"));
                     $("#shelterList").append($("<td class='text-center' colspan='4'>").html("대피소가 없는 지역입니다."));
                     $("#shelterList").append($("</tr>"));
                     $("#totalCnt").data("total", 0); // "totald"을 0으로 초기화
                     $("#currentPageNo").text("1/1");
                     return;
                 }
	         
	         $("#shelterList").empty();
	         
	         
	         shelterData.forEach(function(item){
	        	 let roadAddressElement;
	        	 totalCnt = item.totalCnt;
	        	 $("#totalCnt").data("total", item.totalCnt); // 총 개수를 data-attribute로 저장
	        	 $("#totalCnt").html("전체 " + item.totalCnt + " 건");
	        	 
	        	 $("#currentPageNo").text(currentPageNo+"/"+ maxPageNo);
	        	 
	        	 
	        	 if(item.roadAddress == undefined){
                     roadAddressElement = $("<td></td>").html(item.adminAddress);
                 }else {
                     roadAddressElement = $("<td></td>").html(item.roadAddress + "<br/>" + item.adminAddress);
                 }
		              roadAddressElement.css({
		            	  "cursor": "pointer"
		              }); // 클릭 가능한 커서 스타일
		              
		              roadAddressElement.on("click", function(event) {
		            	  openKakaoMap(item.lat,item.lon,item.facilityName);
			          });
		              
		              
		              /*hover 효과---------------------------------------------------------------------- */
		              $("#shelterList").append($("<tr>")
		                      .append(roadAddressElement)
		                      .append($("<td>").text(item.facilityName))
		                      .append($("<td>").text(item.scale + "m²"))
		                      .append($("<td>").text(item.maxCapacity + "명"))
		                      .hover(
		                          function () { $(this).css("background-color", "#eeeeee"); }, 
		                          function () { $(this).css("background-color", ""); }      
		                      )
		                  );
			           //-------------------------------------------------------------------------------
			              totalCount = Number($("#totalCnt").data("total")); // data-attribute에서 총 개수 가져오기
			              maxPageNo = Math.ceil(totalCount / 10);
			              $("#currentPageNo").text(currentPageNo+"/"+ maxPageNo);
		              
	      });
	   
	 }); 
		 
   }//--shelterRetrieve end
   
	
});//--document end

function openKakaoMap(lat,lon,facilityName){
    //팝업창 생성
    var popup = window.open("/ehr/shelter/shelter_map?lat="+lat+"&lon="+lon+"&FacilityName="+facilityName, "Kakao Map", "width=700,height=500");
}//-- openKakaoMap end  




</script>

    <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>