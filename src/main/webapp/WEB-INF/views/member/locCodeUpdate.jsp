<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">

<title>위치 재설정</title>
<script src="${CP}/resources/js/jquery-1.11.1.min.js"></script>
<%-- jquery --%>
<script src="${CP}/resources/js/jquery_3_7_1.js"></script>

<%-- common.js --%>
<script src="${CP}/resources/js/common.js"></script>

   
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">  
<link href="/ehr/resources/css/behavior.css" rel="stylesheet" />
<style>
/* CSS 스타일 추가 */
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
#containerWrap {
    width: 1000px;
    margin: 0 auto;
    padding: 20px;
    margin-top: 10px;
    margin-bottom: 10px;
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
    left: 765px;
}
.btn:hover {
    background-color: #134b70;
}
.form-label {
    font-weight: bold;
    color: #333;
}
.form-select, .form-control {
    margin-top: 10px;
    margin-bottom: 10px;
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
</style>
<!-- jQuery 및 공통 JS 파일 추가 -->
<script src="${CP}/resources/js/jquery_3_7_1.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
<script src="${CP}/resources/js/common.js"></script>

<script>
$(document).ready(function(){
    console.log("document ready!");
        
    function sidoSet(){
        
            let locCode = 0;
            let type = "GET";
            let url = "http://localhost:8080/ehr/location/location";
            let async = "true";
            let dataType = "html";
            
            console.log("locCode:" + locCode);
            
            
            
                let params = {
                     "locCode" : locCode
                   };
                
                     PClass.pAjax(url,params,dataType,type,async,function(data){
                         
                       var optionSidoData = JSON.parse(data);
                    
                       optionSidoData.forEach(function(item){
                            $("#sido").append('<option value="' + item.locCode + '">' + item.sido + '</option>');         
                    });
                 
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


function sigunguSet(){
    
    let locCode = $("#sido option:selected").val();
    let type = "GET";
    let url = "http://localhost:8080/ehr/location/location_sigungu";
    let async = "true";
    let dataType = "html";
    
    console.log("locCode:" + locCode);
    
    
         $("#sigungu").empty();
         $("#sigungu").append('<option value="">' + "시군구선택" + '</option>');
         $("#eupmyeondong").empty();
         $("#eupmyeondong").append('<option value="">' + "읍면동선택" + '</option>');
         
    
    
        let params = {
             "locCode" : locCode
           };
        
             PClass.pAjax(url,params,dataType,type,async,function(data){
                 
               var optionSigunguData = JSON.parse(data);
            
               optionSigunguData.forEach(function(item){
                    $("#sigungu").append('<option value="' + item.locCode + '">' + item.sigungu + '</option>');         
            });
         
       }); 
    
    
}//--sigunguSet end

function eupmyeondongSet() {
    
    let locCode = $("#sigungu option:selected").val();
    let type = "GET";
    let url = "http://localhost:8080/ehr/location/location_eupmyeondong";
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
  <%@ include file="/WEB-INF/views/main/header.jsp" %>   

<div id="containerWrap">
    <div class="container">
        <h2 class="level1_title">마이페이지 - 위치 재설정</h2>
        <h3 class="nowLocCodeShow" style="color:#134b70; font-weight:600;">현재설정위치</h3>
       
        <h3 class="nowLocCode" style="color:#134b70; font-weight:600;">현재설정위치</h3>
        <form name="locationForm" class="row g-2 align-items-right" id="locationForm">
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
            <button type="button" class="btn btn-primary" id="saveLocation" onclick="saveLocation()">저장</button>
        </form>
    </div>
</div>

  <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>