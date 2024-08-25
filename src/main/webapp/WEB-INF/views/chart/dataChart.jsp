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
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
<title>지역 재난 그래프</title>


<!-- jQuery 로드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Highcharts 로드 -->
<script src="https://code.highcharts.com/highcharts.js"></script>

<style>
    * {
        margin: 0;
        padding: 0;
        text-decoration: none;
        font-style: none;
    }

    body {
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
    }

    #locationMessage {
        width: auto;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 20px auto;
        position: relative;
    }

    .date-container {
        margin: 10px;
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
        width: 50px;
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
        margin: 5px;
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
    }

    .date-container button:hover {
        background-color: #134b70;
    }

    .auto-set-buttons {
        margin-top: 10px;
        display: flex;
        justify-content: center;
    }

    .auto-set-buttons button {
        padding: 5px 15px;
        font-size: 0.9em;
        border: 1px solid #ccc;
        border-radius: 4px;
        background-color: #eeeeee;
        color: #201e43  ;
        cursor: pointer;
        transition: background-color 0.3s;
        margin: 0 5px;
        
    }

    .auto-set-buttons button:hover {
        background-color: #134b70;
        color : #eeeeee;
        
    }

</style>
    
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
            console.log(data);
            memberFromSession = data;
            console.log("-----------------");
            console.log("memberFromSession:",memberFromSession);
            console.log("-----------------");
            console.log(memberFromSession.locCode);
            if (memberFromSession.locCode!=0) {
            	callServerUpward(memberFromSession.locCode,formattedLastMonth,formattedToday);
                
            } else{
            	callServer(1000000000,formattedLastMonth,formattedToday);
                
            }
        })
        .catch(error => {
            console.error('Fetch error: ', error);
        });
    }
    
    function showGraph(dataArray,statistics) {
		let titleText ='전국 재난 문자 누적 통계(실종문자 제외)';
		console.log(statistics.locCode);
		if(statistics.locCode!=1000000000){
			titleText ='우리 동네 재난 문자 누적 통계(실종문자 제외)'
		}
	    $("#graphContainer").empty();
        Highcharts.chart('container', {
            chart: {
                type: 'pie'
            },
            title: {
                text: titleText
            },
            series: [{
                name: '문자 수',
                data: dataArray
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


        function callServer(locCode,startDate, endDate) {
        	const condition = new StatisticsCondition(1000000000, startDate, endDate);
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
                
            	
            	console.log(resultArray);
            	showGraph(resultArray,condition);
            	
                
            })
            .catch(function(error) { 
                console.error('문제가 발생했습니다:', error);
            });
        }
        
        function callServerUpward(locCode,startDate, endDate) {
        	const condition = new StatisticsCondition(locCode, startDate, endDate);
            fetch('/ehr/statistics/1', {
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
        
        
        function setPeriod(months) {
            const today = new Date();
            const endYear = today.getFullYear();
            const endMonth = today.getMonth() + 1;
            const endDay = today.getDate();

            const startDate = new Date(today);
            startDate.setMonth(startDate.getMonth() - months);
            const startYear = startDate.getFullYear();
            const startMonth = startDate.getMonth() + 1;
            const startDay = startDate.getDate();

            $('#startYear').val(startYear);
            $('#startMonth').val(startMonth);
            $('#startDay').val(startDay);

            $('#endYear').val(endYear);
            $('#endMonth').val(endMonth);
            $('#endDay').val(endDay);

            
        }

         function updateMap(locCode) {
                const startYear = $('#startYear').val();
                const startMonth = $('#startMonth').val();
                const startDay = $('#startDay').val();
                const endYear = $('#endYear').val();
                const endMonth = $('#endMonth').val();
                const endDay = $('#endDay').val();

                const startDate = startYear+'/'+startMonth+'/'+startDay ;
                const endDate = endYear+'/'+endMonth+'/'+endDay ;

                console.log("Start Date:", startDate);
                console.log("End Date:", endDate);

                callServer(locCode,startDate, endDate);
            }

        

         
        

    </script>
    
</head>
<body>
      <%@ include file="/WEB-INF/views/main/header.jsp" %>
     
    <section>
		<div class="date-container">
		    <p>【날짜 설정】</p>
		    <div class="date-input-group">
		        <!-- 시작 년도 -->
		        <input type="number" id="startYear" value="2020" min="2000" max="2024">
		        <label for="startYear">년</label>
		
		        <!-- 시작 월 -->
		        <input type="number" id="startMonth" value="1" min="1" max="12">
		        <label for="startMonth">월</label>
		
		        <!-- 시작 일 -->
		        <input type="number" id="startDay" value="1" min="1" max="31">
		        <label for="startDay">일</label>
		
		        <span>~</span>
		
		        <!-- 종료 년도 -->
		        <input type="number" id="endYear" value="2024" min="2000" max="2024">
		        <label for="endYear">년</label>
		
		        <!-- 종료 월 -->
		        <input type="number" id="endMonth" value="12" min="1" max="12">
		        <label for="endMonth">월</label>
		
		        <!-- 종료 일 -->
		        <input type="number" id="endDay" value="31" min="1" max="31">
		        <label for="endDay">일</label>
		    </div>
		    
		    <div class="auto-set-buttons">
		        <button onclick="setPeriod(1)">1개월</button>
		        <button onclick="setPeriod(3)">3개월</button>
		        <button onclick="setPeriod(6)">6개월</button>
		        <button onclick="setPeriod(12)">1년</button>
	        </div>
			      
		    <button onclick="updateMap()">조회</button>
		</div>

        
        
            <h1 id="locationMessage">지역 재난 그래프</h1>
	       
        
            <div id="container" style="width: 650px; height: 500px; margin: 0 auto; margin-bottom:20px" ></div> 
    </section>
    
     <%@ include file="/WEB-INF/views/main/footer.jsp" %>
    
    
    
    

</body>
</html>
