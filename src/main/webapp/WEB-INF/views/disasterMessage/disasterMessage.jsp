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
            margin-top: 25px;
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
        }
        .table tbody tr:nth-child(odd) {
            background-color: #f9f9f9;
        }
        .table tbody tr:hover {
            background-color: #f1f1f1;
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
                <label for="region">대상지역</label>
                <select id="region" name="region" class="form-control" onchange="sigunguSet()">
                    <option>시도선택</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="subRegion">기본검색</label>
                <select id="subRegion" name="subRegion" class="form-control">
                    <option>시군구선택</option>
                </select>
            </div>
            
        </div>
        <div class="form-row align-items-end">
            <div class="form-group col-md-4">
                <label for="startDate">등록일</label>
                <input type="date" name="startDate" class="form-control" id="startDate" value="2024-08-16">
            </div>
            <div class="form-group col-md-4">
                <label for="endDate">~</label>
                <input type="date" name="endDate" class="form-control" id="endDate" value="2024-08-18">
            </div>
            <div class="form-group col-md-4">
                <button id="searchBtn" class="btn btn-primary" onclick="retrieve()">검색</button>
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

    <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center" id="pages">
            
        </ul>
    </nav>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
 

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

function retrieve(){
	let loccode=$("#subRegion option:selected").val();
	let startDate=$("#startDate").val();
	let endDate=$("#endDate").val();
	let pageNo =1;
	let pageSize =10;
	let condition = new StatisticsCondition(loccode,startDate,endDate,pageNo,pageSize);
	console.log(condition);
	
	fetch('http://localhost:8080/ehr/messageRetrieve2', {
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
        console.log('data:', data);
        $("#msgContents").empty();
        if(data.length==0){
        	$("#msgContents").append($("<td colspan='5' class='text-center'>조회된 재난문자가 없습니다.</td>"));
        }else{
        	messageData = data;
        	messageData.forEach(function(item) {
        	    // 새로운 tr 요소 생성
        	    var $tr = $("<tr onclick='location.href=\"http://localhost:8080/ehr/disasterMsg/disasterMsg/" + item.messageSeq + "\"'>");

        	    // td 요소 추가
        	    $tr.append($("<td>").text(item.messageSeq));
        	    $tr.append($("<td>").text(item.disasterType));
        	    $tr.append($("<td>").text(item.emergencyLevel));
        	    $tr.append($("<td>").text(item.messageContext));
        	    $tr.append($("<td>").text(item.msgRegDt));

        	    // tr 요소를 테이블에 추가
        	    $("#msgContents").append($tr);
        	    
        	    // 전체 건수 업데이트
        	    $("#total").text(" 전체 " + item.totalCnt + " 건");
        	});
        	
        }
        
    })
    .catch(function(error) { 
        console.error('문제가 발생했습니다:', error);
    });
	
}


</script>
    <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>
