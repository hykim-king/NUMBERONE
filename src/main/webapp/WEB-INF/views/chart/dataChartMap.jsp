<%--
/**
	Class Name: 
	Description:
	Author:user
	Modification information
	
	수정일     수정자      수정내용
    -----   -----  -------------------------------------------
    2024. 8. 2        최초작성 
    
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
<title>전국통계그래프</title>

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


</style>
    <script src="https://code.highcharts.com/maps/highmaps.js"></script>
    <script src="https://code.highcharts.com/maps/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/maps/modules/accessibility.js"></script>
    <script src="https://code.highcharts.com/maps/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/maps/modules/heatmap.js"></script>
    <script src="https://code.highcharts.com/maps/modules/treemap.js"></script>
    <script src="https://code.highcharts.com/maps/modules/map.js"></script>
    <script src="https://code.highcharts.com/mapdata/countries/kr/kr-all.js"></script>
    
    
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
        #container {
            width: 1000px;
            height: 600px;
            margin-bottom :20px;
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
            font-size: 18px;
            margin-bottom: 10px;
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
        }

        .date-input-group span {
            margin: 0 10px;
        }

        .date-container select {
            
            padding: 5px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
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

        .date-input-group {
            display: flex;
            align-items: center;
             justify-content: center;
            margin-bottom: 10px 0;
        }
    </style>
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
                  
	        <label for="disasterType">재난 유형:</label>
	        <select id="disasterType">
	            <option value="flood">침수</option>
	            <option value="typhoon">태풍</option>
	            <option value="heavyRain">호우</option>
	            <option value="lightning">낙뢰</option>
	            <option value="strongWind">강풍</option>
	            <option value="storm">풍랑</option>
	            <option value="heavySnow">대설</option>
	            <option value="coldWave">한파</option>
	            <option value="heatWave">폭염</option>
	            <option value="dust">황사</option>
	            <option value="earthquake">지진</option>
	            <option value="tsunami">해일</option>
	            <option value="quakeTsunami">지진해일</option>
	            <option value="volcano">화산폭발</option>
	            <option value="drought">가뭄</option>
	            <option value="flooding">홍수</option>
	            <option value="tide">조수</option>
	            <option value="landslide">산사태</option>
	            <option value="spaceObject">자연우주물체추락</option>
	            <option value="spaceRadiation">우주전파재난</option>
	            <option value="algaeBloom">조류대발생(녹조)</option>
	            <option value="redTide">적조</option>
	        </select>
	        <button onclick="updateMap()">조회</button>
	    </div>
	    
    
    <div id="container" style="width: 1200px; height: 600px; margin: 0 auto; margin-bottom:20px"></div>
    
    
    </section>
    
    
    
    
    
    <script>
        let chart;

        function createChart(disasterType, startYear, endYear) {
            // 예시 데이터: 각 지역 코드와 재난 데이터 값
            const data = {
                'flood': [
                    ['KR-11', 10],
                    ['KR-26', 20],
                    ['KR-27', 30],
                    ['KR-28', 40],
                    ['KR-29', 50]
                ],
                'typhoon': [
                    ['KR-11', 15],
                    ['KR-26', 25],
                    ['KR-27', 35],
                    ['KR-28', 45],
                    ['KR-29', 55]
                ],
                // 다른 재난 데이터 추가...
            };

            if (chart) {
                chart.destroy();
            }

            chart = Highcharts.mapChart('container', {
                chart: {
                    map: 'countries/kr/kr-all'
                },
                title: {
                    text: '대한민국 재난 통계'
                },
                subtitle: {
                    text: `연도: ${startYear} ~ ${endYear}, 재난: ${disasterType}`
                },
                mapNavigation: {
                    enabled: true,
                    buttonOptions: {
                        verticalAlign: 'bottom'
                    }
                },
                colorAxis: {
                    min: 0,
                    minColor: '#EFEFFF',
                    maxColor: '#003399'
                },
                series: [{
                    data: data[disasterType] || [],
                    name: '재난 통계',
                    dataLabels: {
                        enabled: true,
                        format: '{point.name}'
                    }
                }]
            });
        }

        function updateMap() {
            const startYear = document.getElementById('startYear').value;
            const endYear = document.getElementById('endYear').value;
            const disasterType = document.getElementById('disasterType').value;
            
            createChart(disasterType, startYear, endYear);
        }

        // 초기 차트 생성
        createChart('flood', 2020, 2024);
        
        
        
        
        
        
        
    </script>
    
    
    
    <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>