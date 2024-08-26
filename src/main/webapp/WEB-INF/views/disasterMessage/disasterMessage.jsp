<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
    <title>재난문자 검색</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">  
	<link href="/ehr/resources/css/behavior.css" rel="stylesheet" />
    <style>
        body {
            font-family: "Hahmlet", sans-serif;
            background-color: #eeeeee;
            margin: 0;
            padding: 0;
        }
        .container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-top: 35px;
            margin-bottom: 35px;
        }
        h2 {
            font-size: 2rem;
            color: #2c3e50;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .form-group label {
            font-weight: bold;
            color: #333;
        }
        .btn-primary {
            background-color: #508c9b;
            border: none;
            font-size: 1rem;
        }
        .btn-primary:hover {
            background-color: #2c3e50;
        }
        .table {
            margin-top: 20px;
            background-color: #ffffff;
        }
        .table thead th {
            background-color: #134b70;
            color: white;
            font-weight: bold;
             text-align: center;
        }

        .table tbody tr:nth-child(odd) {
            background-color: #f9f9f9;
        }
        .table tbody tr:hover {
            background-color: #f1f1f1;
            cursor:pointer;
        }
        .pagination {
            justify-content: center;
            margin-top: 20px;
        }
        .pagination button {
            background-color: #ffffff;
            border: 1px solid #ddd;
            color: #134b70;
            border-radius: 4px;
            transition: background-color 0.3s, color 0.3s;
        }
        .pagination button:hover {
            background-color: #134b70;
            color: white;
        }
        .pagination span {
            display: flex;
            align-items: center;
            font-weight: bold;
        }
        .total {
            font-size: 1rem;
            color: #333;
            margin-top: 10px;
        }
    </style>
<script src="${CP}/resources/js/jquery_3_7_1.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
<%-- common.js --%>
<script src="${CP}/resources/js/common.js"></script>
<script>

</script>
</head>
<body>
    <%@ include file="/WEB-INF/views/main/header.jsp" %>
<div class="container">
    <h2 class="text-center">재난문자 </h2>
        <div class="form-row align-items-end">
            
            <div class="form-group col-md-3">
                <label for="region">시도</label>
                <select id="region" name="region" class="form-control" onchange="sigunguSet()">
                    <option>시도선택</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="subRegion">시군구</label>
                <select id="subRegion" name="subRegion" class="form-control" onchange ="eupmyeondongSet()">
                    <option>시군구선택</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="eupmyeondong">읍면동</label>
                <select id="eupmyeondong" name="eupmyeondong" class="form-control">
                    <option value ="">읍면동선택</option>
                </select>
            </div>
            
        </div>
        <div class="form-row align-items-end">
            <div class="form-group col-md-4">
                <label for="startDate">등록일</label>
                <input type="date" name="startDate" class="form-control" id="startDate">
            </div>
            <div class="form-group col-md-4">
                <label for="endDate">~</label>
                <input type="date" name="endDate" class="form-control" id="endDate">
            </div>
            <div class="form-group col-md-4">
                <button id="searchBtn" class="btn btn-primary" onclick="retrieve(1)">검색</button>
            </div>
        </div>

    <div class="mt-3">
        <span id="total">전체 0 건</span>
    </div>
    
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>번호</th>
                <th>재해구분</th>
                <th>긴급단계</th>
                <th>재난문자</th>
                <th>등록일</th>
            </tr>
        </thead>
        <tbody id="msgContents">
        </tbody>
    </table>

    <div class="pagination">
        <button onclick="prevPage()">이전</button>
        	<span id ="pageItems"></span>
        <button onclick="nextPage()">다음</button>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
let currentPage;
let totalPages;
const today = new Date();

// 오늘 날짜를 YYYY/MM/DD 형태로 포맷하는 함수
function formatDate(date) {
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0'); // 월은 0부터 시작하므로 +1
    const day = String(date.getDate()).padStart(2, '0'); // 날짜는 2자리로 맞추기

    return year + '-' + month + '-' + day;
}

// 포맷된 오늘 날짜
const formattedToday = formatDate(today);
const lastWeekDate = new Date(today);
lastWeekDate.setDate(today.getDate() - 7); // 현재 날짜에서 7일을 뺌

// 포맷된 일주일 전 날짜
const formattedLastWeek = formatDate(lastWeekDate);
console.log(formattedLastWeek);
$("#endDate").val(formattedToday);
$("#startDate").val(formattedLastWeek);

class StatisticsCondition {
    constructor(locCode, startDate, endDate, pageNo, pageSize) {
        this.locCode = locCode;
        this.startDate = startDate;
        this.endDate = endDate;
        this.pageNo = pageNo;
        this.pageSize = pageSize;
    }
}


$(function sidoSet(){
	
	// 요청할 URL
	let url = "/ehr/location/location";

	// 요청할 파라미터
	let params = {
	    "locCode": 0
	};

	// 쿼리 문자열 생성
	let queryString = Object.keys(params)
	    .map(key => encodeURIComponent(key) + '=' + encodeURIComponent(params[key]))
	    .join('&');

	// fetch 요청을 위한 URL 생성
	let fetchUrl = url + '?' + queryString;

	// fetch 요청
	fetch(fetchUrl, {
	    method: "GET", // 요청 메소드
	    headers: {
	        "Content-Type": "application/json" // 헤더 설정
	    }
	})
	.then(response => {
	    // 응답이 성공적인 경우
	    if (!response.ok) {
	        throw new Error("Network response was not ok " + response.statusText);
	    }
	    return response.text(); // 응답 데이터를 HTML로 반환
	})
	.then(data => {
	    // 성공적으로 데이터를 받았을 때 처리
	    console.log(data);

	    var optionSidoData = JSON.parse(data);

	    optionSidoData.forEach(function(item){
	         $("#region").append('<option value="' + item.locCode + '">' + item.sido + '</option>'); 
	    });
	})
	.catch(error => {
	    // 에러 발생 시 처리
	    console.error("Fetch error: ", error);
	});

        
});

function sigunguSet() {
    $("#subRegion").empty();
    $("#subRegion").append('<option value="">' + "시군구선택" + '</option>');

    
    let locCode = $("#region option:selected").val();
    
    console.log("locCode:" + locCode);
    
    if ("" === locCode) {
        $("#subRegion").empty();
        $("#subRegion").append('<option value="">' + "시군구선택" + '</option>');
    } else {
        let params = {
            "locCode": locCode
        };

        // 쿼리 문자열 생성
        let queryString = Object.keys(params)
            .map(key => encodeURIComponent(key) + '=' + encodeURIComponent(params[key]))
            .join('&');

        // fetch 요청을 위한 URL 생성
        let url = "/ehr/location/location_sigungu?" + queryString;

        // fetch 요청
        fetch(url, {
            method: "GET", // 요청 메소드
            headers: {
                "Content-Type": "application/json" // 헤더 설정
            }
        })
        .then(response => {
            // 응답이 성공적인 경우
            if (!response.ok) {
                throw new Error("Network response was not ok " + response.statusText);
            }
            return response.text(); // 응답 데이터를 텍스트로 반환
        })
        .then(data => {
            // JSON 파싱
            var optionSigunguData = JSON.parse(data);
            
            optionSigunguData.forEach(function(item) {
                $("#subRegion").append('<option value="' + item.locCode + '">' + item.sigungu + '</option>');
            });
        })
        .catch(error => {
            // 에러 발생 시 처리
            console.error("Fetch error: ", error);
        });
    }
}

function eupmyeondongSet() {
    
    let locCode = $("#subRegion option:selected").val();
   
    
    console.log("locCode:" + locCode);
    
    if("" === locCode){
        $("#eupmyeondong").empty();
        $("#eupmyeondong").append('<option value="">' + "읍면동선택" + '</option>');
   }else{
       let params = {
               "locCode": locCode
           };

           // 쿼리 문자열 생성
           let queryString = Object.keys(params)
               .map(key => encodeURIComponent(key) + '=' + encodeURIComponent(params[key]))
               .join('&');

           // fetch 요청을 위한 URL 생성
           let url = "/ehr/location/location_eupmyeondong?" + queryString;

           // fetch 요청
           fetch(url, {
               method: "GET", // 요청 메소드
               headers: {
                   "Content-Type": "application/json" // 헤더 설정
               }
           })
           .then(response => {
               // 응답이 성공적인 경우
               if (!response.ok) {
                   throw new Error("Network response was not ok " + response.statusText);
               }
               return response.text(); // 응답 데이터를 텍스트로 반환
           })
           .then(data => {
               // JSON 파싱
               var optionSigunguData = JSON.parse(data);
               
               optionSigunguData.forEach(function(item) {
                   $("#eupmyeondong").append('<option value="' + item.locCode + '">' + item.eupmyeondong + '</option>');
               });
           })
           .catch(error => {
               // 에러 발생 시 처리
               console.error("Fetch error: ", error);
           });
       }
    
}

function retrieve(pageNumber) {
	let loccode;

	// eupmyeondong 셀렉트박스의 값 확인
	if ($("#eupmyeondong option:selected").length > 1) {
		console.log($("#eupmyeondong option:selected").length);
	    // 선택된 경우
	    loccode = $("#eupmyeondong option:selected").val();
	} else {
	    // 선택되지 않은 경우
	    loccode = $("#subRegion option:selected").val();
	} 
    let startDate = $("#startDate").val();
    console.log($("#startDate").val());
    let endDate = $("#endDate").val();
    let pageNo = pageNumber;
    let pageSize = 10;
    currentPage =pageNumber;
    let condition = new StatisticsCondition(loccode, endDate,startDate , pageNo, pageSize);
    console.log(condition);

    fetch('/ehr/messageRetrieve', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(condition),
    })
    .then(function(response) { 
        if (!response.ok) {
            throw new Error('Network response was not ok.');
        }
        return response.json();
    })
    .then(function(data) {
        console.log('data:', data);
        $("#msgContents").empty();
        
        if (data.length == 0) {
            $("#msgContents").append($("<tr><td colspan='5' class='text-center'>조회된 재난문자가 없습니다.</td></tr>"));
        } else {
            messageData = data;
            messageData.forEach(function(item) {
                
                var $tr = $("<tr onclick='location.href=\"/ehr/disasterMsg/disasterMsg/" + item.messageSeq + "\"'>");

                totalPages = Math.ceil(item.totalCnt / 10);
                let emergencyLevelColor;
                switch (item.emergencyLevel) {
                    case "안전안내":
                        emergencyLevelColor = "#FFF176";
                        break;
                    case "긴급재난":
                        emergencyLevelColor = "#FFD54F";
                        break;
                    case "위급재난":
                        emergencyLevelColor = "#FF8A65";
                        break;
                    default:
                        emergencyLevelColor = "white"; // Default color
                }

                
                $tr.append($("<td>").text(item.messageSeq));
                $tr.append($("<td>").text(item.disasterType).css({
                    "text-align": "center",
                    "width" : "150px"
                }));
                $tr.append($("<td>").text(item.emergencyLevel).css({
                    "background-color": emergencyLevelColor,
                    "text-align": "center",
                    "width" : "100px"
                }));
                $tr.append($("<td>").text(item.messageContext));
                $tr.append($("<td>").text(item.msgRegDt));

            
                $("#msgContents").append($tr);

                
                $("#total").text(" 전체 " + item.totalCnt + " 건");
                $("#pageItems").text( pageNumber +"/"+ totalPages)
            });
        }
    })
    .catch(function(error) { 
        console.error('An error occurred:', error);
    });
}


function prevPage() {
	if(currentPage>1){
		retrieve(currentPage-1);
	}
    
}

function nextPage() {
	if(currentPage<totalPages){
		retrieve(currentPage+1);
	}
    
}

</script>
    <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>
