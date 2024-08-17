<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Highcharts 로드 -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<title>재난안전포털 No.1</title>
<style>
    section {

        background-color: #ECEFF1;
       
    }
    section p{
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: bold;   
        font-size: 17px;
        
    }   
    #divWrap{
        width: 1200px;
        height: 700px;
        margin: 0 auto;
        background-color: #ECEFF1;
        position: relative;
    
    }
    .myPageZone {
        position: absolute;
        top: 20px;
        left: 715px;
        width: 430px;
        height: 138px;
        background-color: #CFD8DC;
        display: flex;
        justify-content: space-around;
        align-items: center;
        padding : 10px;
        border: 1px solid #E0E0E0;
    }
    #disaster-img01,#disaster-img02,#disaster-img03{
        border: 1px solid black;
        width: 150px;
        margin : 5px; 
        height: 130px;
    }
    .settings {
        position: absolute;
        top: 210px;
        left: 20px;
        width: 300px;
        height: 45px;
        background-color: #CFD8DC;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
        border: 1px solid #E0E0E0;
    }
    .shelters {
        position: absolute;
        top: 255px;
        left: 20px;
        width: 625px;
        height:125px;
        background-color: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
        border: 1px solid #E0E0E0;
    }

    .emergency-info {
        position: absolute;
        top: 20px;
        left: 20px;
        right:30px;
        width : 680px;
        height: 160px;
        background-color: #CFD8DC;
       
    }
    .messagesDiv{
        position: absolute;
        top: 400px;
        left: 20px;
        width: 300px;
        height: 45px;
        background-color: #CFD8DC;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
        border: 1px solid #E0E0E0;
    
    }
    #messageTable{
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-size: 13px;
    
    }
    #messageTable tr{
        padding : 5px;
    
    }
    .messages {
        position: absolute;
        top: 445px;
        left: 20px;
        right: 20px;
        width :605px;
        height: 212px;
        background-color: #FFFFFF;
        padding: 10px;
        border: 1px solid #E0E0E0;
    }
    
    .graphText{
        position: absolute;
        top: 210px;
        left: 663px;
        width: 300px;
        height: 45px;
        background-color: #CFD8DC;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
        border: 1px solid #E0E0E0;
    }
    .graph {
        position: absolute;
        top: 255px;
        left: 663px;
        right: 15px;
        width : 483px;
        height: 402px;
        background-color: #FFFFFF;
        display: flex;
        justify-content: center;
        align-items: center;
        padding :10px;
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
        border: 1px solid #E0E0E0;
    }
    .graph img {
        display: block;
        
        
    }
</style>
</head>
<body>

    <%@ include file="header.jsp" %>

    <section>
        <div id= "divWrap">
        
        
		        <div class="myPageZone">
		            <p>로그인해주세요</p>
		            <p>현재 설정 위치</p>
		            <p>ㅇㅇ시 ㅇㅇ동</p>
		            <a><p>위치 재설정</p></a>
		        </div>
		        
		        
		        <div class="emergency-info">
		            <div>
		                <a><img src="/ehr/resources/img/typhoon.png" alt="typhoon"></a>
		            </div>
		        </div>
		          
		        
		
		            <div>
			        <div class="settings">
			            <p>로그인 시 설정 위치로 확인 가능</p>
			        </div>
			        
			        <div>
			           <div class="shelters"></div>
		               
			        
			        </div>
			        
		         </div>
		        
		        <div>
			        <div class="messagesDiv">
			            <p>재난문자</p>
			        </div>
			        <div class="messages">
			            <table id ="messageTable"></table>
			        </div>
		        </div>
		        
		        
		        <div>
			        <div class="graphText">
			             <p>재난 문자 발송 통계</p>
			        </div>
			            
		  
			        <div class="graph" id="graphContainer">
			            <p>로그인 시 확인 가능합니다. </p> 
			            <br>
			            <a href="login.jsp"><img src="/ehr/resources/img/loginIcon.png"></a>
			        </div>
		        </div>
		        
        </div>  <!-- divWrap end -->
        
    </section>

    <%@ include file="footer.jsp" %>
<script>
		
        const disasterTypeSet = new Set();
		function getDisasterMsgList(){
			
            fetch('http://localhost:8080/ehr/messages', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: null, 
            })
            .then(function(response) { //통신상태 확인
                if (!response.ok) {
                    throw new Error('네트워크 응답이 좋지 않습니다.');
                }
                return response.json();
            })
            .then(function(data) { 
            	$("#messageTable").empty();
            	msgList=data;
        		$.each(msgList, function(index, msg) {
        			let row = $("<tr></tr>");
                    row.append($("<td></td>").text(msg.broadcastOrganization));
                    row.append($("<td></td>").text(msg.msgRegDt));
                    row.append($("<td></td>").text(msg.messageContext));
                    $("#messageTable").append(row);
                    if(msg.disasterType != "기타"){
                    	disasterTypeSet.add(msg.disasterType);
                    }
                    
        		});
                
            })
            .catch(function(error) { 
                console.error('문제가 발생했습니다:', error);
            });
		}
		getDisasterMsgList();
		
		console.log(disasterTypeSet);
		
				
		function showGraph(statistics) {
		    $("#graphContainer").empty();
            Highcharts.chart('graphContainer', {
                chart: {
                    type: 'pie'
                },
                title: {
                    text: '전국 최근 한달 재난 문자 누적 통계'
                },
                series: [{
                    name: '문자 수',
                    data: statistics
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
        
        
        
        function callServer(startDate, endDate) {
        	const condition = new StatisticsCondition(1000000000, startDate, endDate);
            fetch('http://localhost:8080/ehr/statistics/3', {
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
            	let datasize =dataMap.size; 
            	const keysArray = [...dataMap.keys()];
            	const resultArray =[];
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
            	
            	
            	showGraph(resultArray);
            	
                
            })
            .catch(function(error) { 
                console.error('문제가 발생했습니다:', error);
            });
        }
        
        function formatDate(date) {
            const year = date.getFullYear();
            const month = String(date.getMonth() + 1).padStart(2, '0'); // 월은 0부터 시작하므로 +1
            const day = String(date.getDate()).padStart(2, '0'); // 날짜는 2자리로 맞추기

            return `${year}/${month}/${day}`;
        }
     // 오늘 날짜 저장
        const today = new Date();

        // 오늘 날짜를 YYYY/MM/DD 형태로 포맷하는 함수
        function formatDate(date) {
            const year = date.getFullYear();
            const month = String(date.getMonth() + 1).padStart(2, '0'); // 월은 0부터 시작하므로 +1
            const day = String(date.getDate()).padStart(2, '0'); // 날짜는 2자리로 맞추기

            return year + '/' + month + '/' + day;
        }

        // 포맷된 오늘 날짜
        const formattedToday = formatDate(today);
        console.log("오늘 날짜:", formattedToday);

        // 한 달 전 날짜 계산
        const lastMonth = new Date(today); // 오늘 날짜를 기반으로 새 객체 생성
        lastMonth.setMonth(today.getMonth() - 1);

        // 포맷된 한 달 전 날짜
        const formattedLastMonth = formatDate(lastMonth);
        console.log("한 달 전 날짜:", formattedLastMonth);
        callServer(formattedLastMonth,formattedToday);
</script>
</body>
</html>