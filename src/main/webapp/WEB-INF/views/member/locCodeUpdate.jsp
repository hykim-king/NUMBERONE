<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">

<title>위치 재설정</title>
<script src="${CP}/resources/js/jquery-1.11.1.min.js"></script>
<%-- jquery --%>
<script src="${CP}/resources/js/jquery_3_7_1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script>
  
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
.nowLocCodeShow{
    position: relative;
    left: 325px;
    top: -50px;
    font-weight: 500;
    color:#616161;
}
#locCodeUpdate{
    display: none;
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
#saveButton{
    display:none;
    padding: 10px 20px;
    font-size: 1rem;
    border-radius: 5px;
    border: none;
    background-color: #508c9b;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s ease;
    position: relative;
    left: 695px;
}
#saveButton:hover {
    background-color: #134b70;
}
</style>
<!-- jQuery 및 공통 JS 파일 추가 -->
<script src="${CP}/resources/js/jquery_3_7_1.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
<script src="${CP}/resources/js/common.js"></script>

<script>



function getSession() {
    fetch('/ehr/session/api/session', {
        method: 'GET',
        credentials: 'include' // 쿠키 포함
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok ' + response.statusText);
        }
        return response.json(); 
    })
    .then(data => {
 
        memberFromSession = data;

        // 세션에 locCode가 존재하고 0이 아닌 경우
        if (data.locCode && data.locCode != 0) {
            document.getElementById('nowLocCodeShow').style.display = 'inline-block'; 
            document.getElementById('locCodeUpdate').style.display = 'inline-block';
            document.getElementById('saveButton').style.display = 'inline-block';
            
            // 현재 위치를 주소로 변환하여 표시
            locToAddress(data.locCode);
        } else {
            // locCode가 0이거나 없는 경우 기본 위치 설정
            callServer(1000000000);
        }
    })
    .catch(error => {
        console.error('Fetch error: ', error);
    });
}

function locToAddress(locCode) {
	const url = new URL('/ehr/location/locToAddress', window.location.origin);
    url.searchParams.append('locCode', locCode);

    fetch(url, {
        method: 'GET',
        credentials: 'include', // 쿠키 포함
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok ' + response.statusText);
        }
        return response.json();
    })
    .then(location => {
        console.log(location);
        if (location) {
            const { sido, sigungu, eupmyeondong } = location;
            const address = `${sido} ${sigungu} ${eupmyeondong}`;
            console.log("주소:", location);  // 디버깅용으로 주소 출력

            // 주소 정보를 nowLocCode에 표시
            const nowLocCodeShow = document.getElementById('nowLocCodeShow');
            if (nowLocCodeShow) {
            	nowLocCodeShow.textContent = "[현재 설정 위치 : " + location + "]";
            } else {
                console.error('nowLocCodeShow 요소를 찾을 수 없습니다.');
            }
        } else {
            document.getElementById('nowLocCodeShow').textContent = '* 지역 정보를 불러오는데 실패했습니다.';
        }
    })
    .catch(error => {
        console.error('Fetch error: ', error);
        document.getElementById('showLocation').textContent = '* 지역 정보를 불러오는데 실패했습니다.';
    });
}

document.addEventListener('DOMContentLoaded', getSession);





class StatisticsCondition {
    constructor(locCode, startDate, endDate) {
        this.locCode = locCode;
        this.startDate = startDate;
        this.endDate = endDate;
    }
}


function callServer(locCode,startDate, endDate) {
    const condition = new StatisticsCondition(locCode, startDate, endDate);
    fetch('/ehr/statistics/3', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(condition), 
    })
    .then(function(response) { //통신상태 확인
        if (!response.ok) {
            throw new Error('네트워크 응답이 좋지 않습니다.');
        }
        return response.json();
    })
    .then(function(data) { //정상일시 데이터 사용
        console.log('condition:',condition);
        console.log('data:', data);
        let dataMap = new Map(Object.entries(data));
        let datasize =dataMap.size; 
        let keysArray = [...dataMap.keys()];
        let resultArray =[];
        for (let i =0;i<datasize; i++) {
             const key = keysArray[i];
             const value = dataMap.get(keysArray[i]);
            
             resultArray.push([key,value]); 
        }
        resultArray.sort(([, valueA], [, valueB]) => valueB - valueA);
        
        let num = 4-disasterTypeSet.size;
        if(resultArray.find(([key]) => key === '기타')){
            num++;
        }
        resultArray.slice(0, num).forEach(([key]) => {
            if (key !== '기타') {
            disasterTypeSet.add(key); // Set에 key 추가
            }
        });
        
        console.log(resultArray);
        showGraph(resultArray,condition);
        
        
    })
    .catch(function(error) { 
        console.error('문제가 발생했습니다:', error);
    });
}







$(document).ready(function(){
    console.log("document ready!");
        
    function sidoSet(){
        
            let locCode = 0;
            let type = "GET";
            let url = "/ehr/location/location";
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
    let url = "/ehr/location/location_sigungu";
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
    let url = "/ehr/location/location_eupmyeondong";
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




function locCodeUpdate() {
    console.log("locCodeUpdate 함수 호출됨");
    const sido = document.getElementById('sido').value;
    const sigungu = document.getElementById('sigungu').value;
    const eupmyeondong = document.getElementById('eupmyeondong').value;

    const locCode = eupmyeondong || sigungu || sido;

    if (sido === "" || sigungu === "" || eupmyeondong === "") {
        alert("위치 설정을 해주세요.");
        return;
    }
    console.log(locCode);

    const member = new Member(locCode);

    fetch('/ehr/member/locCodeUpdate', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(member),
    })
    .then(response => response.ok ? response.json() : Promise.reject('네트워크 응답이 좋지 않습니다.'))
    .then(data => {
        alert("위치가 성공적으로 저장되었습니다.");
        window.location.href = '/ehr/main/index.do'; // 메인 페이지의 URL로 변경
    })
    .catch(error => {
        console.error('문제가 발생했습니다:', error);
    });
}

$(document).ready(function() {
    $('#locCodeUpdate').click(function() {
        locCodeUpdate(); // locCodeUpdate 함수 호출
    });

    $('#saveButton').click(function() {
        const newPassword = $('#newPassword').val();
        const confirmPassword = $('#confirmPassword').val();
        
        if (newPassword !== confirmPassword) {
            alert('비밀번호가 일치하지 않습니다.');
            return;
        }

        if (newPassword === "" || confirmPassword === "") {
            alert("모든 필드를 채워주세요.");
            return;
        }

        // SHA-256 해시화
        let shaPassword = sha256(newPassword);
        
        const member1 = {
            password: shaPassword
        };

        $.ajax({
            url: '/ehr/member/updatePassword',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(member1),
            success: function(response) {
                console.log('서버 응답:', response);
                const result = response;
                if (result == "변경 성공") {
                    alert("비밀번호가 성공적으로 변경되었습니다.");
                    window.location.href = '/ehr/main/index.do'; // 메인 페이지의 URL로 변경
                } else {
                    alert("비밀번호 변경 중 문제가 발생했습니다.");
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.error('문제가 발생했습니다:', textStatus, errorThrown);
                alert('비밀번호 변경 중 문제가 발생했습니다: ' + jqXHR.responseText);
            }
        });
    });
});

class Member {
    constructor(locCode) {
        this.locCode = locCode;
    }
}
</script>

</head>
<body>
  <%@ include file="/WEB-INF/views/main/header.jsp" %>   
<h1 style="text-align: center; margin: 0 auto; color: #201e4b; padding: 20px">마이페이지</h1>
<div id="containerWrap">
    <div class="container">
        <h2 class="level1_title">위치 재설정</h2>
        <h3 class="nowLocCodeShow" id ="nowLocCodeShow" ></h3>
       
        
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
            <button type="button" class="btn btn-primary" id="locCodeUpdate">저장</button>
        </form>
    </div>
    
    
    <div class ="container">
        <h2 class="level1_title">비밀번호 재설정</h2>
			<form id="passwordUpdateForm">
			        <label for="newPassword">새 비밀번호:</label>
			        <input type="password" id="newPassword" name="newPassword" required><br><br>
			
			        <label for="confirmPassword">새 비밀번호 확인:</label>
			        <input type="password" id="confirmPassword" name="confirmPassword" required><br><br>
			
			        <button type="button" id="saveButton" >비밀번호 변경</button>
			    </form>
    </div>
</div>

  <%@ include file="/WEB-INF/views/main/footer.jsp" %>
  
  
  

</body>
</html>