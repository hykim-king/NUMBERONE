<%--
/**
    Class Name: 
    Description:
    Author:user
    Modification information
    
    수정일     수정자      수정내용
    -----   -----  -------------------------------------------
    2024. 7. 27        최초작성 
    
    author eclass 개발팀
    since 2024.07.01
    Copyright (C) by KandJang All right reserved.
*/
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역 재난 그래프</title>
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon01.ico">
<meta charset="UTF-8">

<!-- jQuery 로드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Highcharts 로드 -->
<script src="https://code.highcharts.com/highcharts.js"></script>

<style>

	   *{
	        margin : 0;
	        padding : 0;
	        text-decoration: none;
	        font-style: none;
	    }
	    body{
	        font-family: "Hahmlet", serif;
	        font-optical-sizing: auto;
	        font-style: normal;
	    }
	    
	    #locationMessage {
	       width:auto;
	       display:flex;
	       justify-content: center;
            align-items: center;
		    margin: 20px auto; 
		    position: relative;
	    }
	        
        
        .date-container {
            margin :10px;
            background-color: #F5F5F5;
            padding: 9px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        
        .date-container p {
            margin: 0 0 10px;
             font-size: 18px;
        }
        .date-input-group {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 10px 0;
        }
        .date-input-group input[type="number"] {
            width: 70px;
            padding: 5px;
            margin: 0 5px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .date-input-group label {
            margin: 0 5px;
            font-size: 1em;
        }
        .date-input-group span {
            margin: 0 10px;
            font-size: 1.2em;
        }
        .date-container button {
            padding: 5px 25px;
            font-size: 1em;
            border: 1px solid #E0E0E0;
            border-radius: 4px;
            background-color: #508c9b;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .date-container button:hover {
            background-color: #134b70;
        }
        

</style>
</head>
<body>
      <%@ include file="/WEB-INF/views/main/header.jsp" %>
     
    <section>
			 <div class="date-container">
			        <p>【날짜 설정】</p>
			        <div class="date-input-group">
			            <input type="number" id="startYear" value="2020" min="2000" max="2024">
			            <label for="startYear">년</label>
			            <input type="number" id="startMonth" value="1" min="1" max="12">
			            <label for="startMonth">월</label>
			            <span>~</span>
			            <input type="number" id="endYear" value="2024" min="2000" max="2024">
			            <label for="endYear">년</label>
			            <input type="number" id="endMonth" value="12" min="1" max="12">
			            <label for="endMonth">월</label>
			        </div>
			        <button onclick="updateMap()">조회</button>
			    </div>

        
        
            <h1 id="locationMessage">지역 재난 그래프</h1>
	       
        
            <div id="container" style="width: 650px; height: 500px; margin: 0 auto; margin-bottom:20px" ></div> 
    </section>
    
     <%@ include file="/WEB-INF/views/main/footer.jsp" %>
    
    
    
    
    
    <script>
        function showGraph(statisticcs) {
            Highcharts.chart('container', {
                chart: {
                    type: 'pie'
                },
                title: {
                    text: '재난 누적 그래프'
                },
                series: [{
                    name: '재난 수',
                    data: statisticcs
                }]
            });
        }
        class StatisticsCondition {
            constructor(locCode, startDate, endDate) {
                this.locCode = locCode;
                this.startDate = startDate;
                this.endDate = endDate;
            }
        }
        
        function callServer() {
        	const condition = new StatisticsCondition(1111010200,"2024/01/01","2024/07/01")
            fetch('http://localhost:8080/ehr/statistics/1', {
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
            	const dataMap = new Map(Object.entries(data));
            	const resultObject = Object.fromEntries(dataMap);
            	let datasize =dataMap.size; 
            	const keysArray = [...dataMap.keys()];
            	const resultArray =[]
            	for (let i =0;i<datasize; i++) {
            		 const key = keysArray[i];
   					 const value = dataMap.get(keysArray[i]);
   					
   					 resultArray.push([key,value]); 
				}
            	
            	showGraph(resultArray);
            	
                
            })
            .catch(function(error) { 
                console.error('문제가 발생했습니다:', error);
            });
        }
        callServer();

    </script>
</body>
</html>
