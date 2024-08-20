<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
    <title>안전뉴스</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 80%;
            margin: 0 auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .search-box {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
    </style>
<script src="${CP}/resources/js/jquery_3_7_1.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
<%-- common.js --%>
<script src="${CP}/resources/js/common.js"></script>
<script>

class StatisticsCondition {
    constructor(startDate, endDate, pageNo, pageSize, searchDiv, searchWord) {
        this.startDate = startDate;   // 시작 날짜
        this.endDate = endDate;       // 종료 날짜
        this.pageNo = pageNo;         // 페이지 번호
        this.pageSize = pageSize;     // 페이지 크기
        this.searchDiv = searchDiv;    // 검색 구분
        this.searchWord = searchWord;  // 검색어
    }
}

    function search() {
    	let searchWord=$("#searchWord").val();
    	let startDate=$("#startDate").val();
    	let endDate=$("#endDate").val();
    	let pageNo =1;
    	let pageSize =10;
    	let searchDiv=$("#searchType  option:selected").val();
    	console.log(searchDiv);
    	let condition = new StatisticsCondition(startDate,endDate,pageNo,pageSize,searchDiv,searchWord);
    	console.log(condition);
    	
    	fetch('http://localhost:8080/ehr/news/doRetrieve', {
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
            $("#newstable").empty();
            if(data.length==0){
            	$("#newstable").append($("<td colspan='4' class='text-center'>조회된 뉴스가 없습니다.</td>"));
            }else{
            	messageData = data;
            	messageData.forEach(function(item) {
            	    // 새로운 tr 요소 생성
            	    var $tr = $("<tr onclick='location.href=\"http://localhost:8080/ehr/news/" + item.newsSeq + "\"'>");

            	    // td 요소 추가
            	    $tr.append($("<td>").text(item.newsSeq));
            	    $tr.append($("<td>").text(item.newsTitle));
            	    $tr.append($("<td>").text(item.newsWriter));
            	    $tr.append($("<td>").text(item.newsRegDt));

            	    // tr 요소를 테이블에 추가
            	    $("#newstable").append($tr);
            	    
            	    // 전체 건수 업데이트
            	    $("#total").text(" 전체 " + item.totalCnt + " 건");
            	});
            	
            }
            
        })
        .catch(function(error) { 
            console.error('문제가 발생했습니다:', error);
        });
    	
    }
    
    function prevPage() {
        // 이전 페이지 기능 구현
        alert("이전 페이지 기능은 아직 구현되지 않았습니다.");
    }

    function nextPage() {
        // 다음 페이지 기능 구현
        alert("다음 페이지 기능은 아직 구현되지 않았습니다.");
    }
</script>
</head>
<body>
<div class="container">
    <h1>안전뉴스</h1>
    
    <div class="search-box">
        <div>
            <label for="searchType">기본검색</label>
            <select id="searchType">
                <option value="10">선택</option>
                <option value="20">제목</option>
                <option value="30">내용</option>
            </select>
            <input type="date" id="startDate" value="2024-08-18">
            <input type="date" id="endDate" value="2024-08-20">
            <input type ="text" id="searchWord">
            <button onclick="search()">검색</button>
        </div>
        <div>
            <span id="total">전체 229 건</span>
        </div>
    </div>

    <table>
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>등록일시</th>
            </tr>
        </thead>
        <tbody id ="newstable">
           
        </tbody>
    </table>

    <div class="pagination">
        <button onclick="prevPage()">이전</button>
        <span>1 / 23</span>
        <button onclick="nextPage()">다음</button>
    </div>
</div>

<script>
</script>
</body>
</html>
