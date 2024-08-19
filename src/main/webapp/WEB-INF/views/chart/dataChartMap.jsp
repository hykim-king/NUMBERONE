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
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
<title>전국통계그래프</title>


    <script src="https://code.highcharts.com/maps/highmaps.js"></script>
    <script src="https://code.highcharts.com/maps/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/maps/modules/accessibility.js"></script>
    <script src="https://code.highcharts.com/maps/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/maps/modules/heatmap.js"></script>
    <script src="https://code.highcharts.com/maps/modules/treemap.js"></script>
    <script src="https://code.highcharts.com/maps/modules/map.js"></script>
    <script src="https://code.highcharts.com/mapdata/countries/kr/kr-all.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
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
        
         select {
	        width: 160px;
	        padding: 10px;
	        margin: 20px 0;
	        border: 1px solid #ddd;
	        border-radius: 4px;
            font-size: 16px;
            font-family: "Hahmlet", serif;
            font-optical-sizing: auto;
            font-style: normal;
    }
        #container {
            width: 1000px;
            height: 600px;
            margin:0 auto;
            margin-bottom : 10px;
        }

        .date-container {
            margin :10px;
            background-color: #F5F5F5;
            padding: 9px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

	    .date-container button {
	       
	        font-family: "Hahmlet", serif;
	        font-optical-sizing: auto;
	        font-style: normal;
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
            
            padding: 4px;
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
        const disasterTypeMap = {
            "flood": "침수",
            "typhoon": "태풍",
            "heavyRain": "호우",
            "lightning": "낙뢰",
            "strongWind": "강풍",
            "waves": "풍랑",
            "heavySnow": "대설",
            "coldWave": "한파",
            "heatWave": "폭염",
            "yellowDust": "황사",
            "earthQuake": "지진",
            "tsunami": "해일",
            "quakeTsunami": "지진해일",
            "volcano": "화산폭발",
            "drought": "가뭄",
            "tide": "조수",
            "landslide": "산사태",
            "spaceObject": "자연우주물체추락",
            "spaceRadio": "우주전파재난",
            "greenTide": "조류대발생(녹조)",
            "redTide": "적조",
            "fire": "화재",
            "forestFires": "산불",
            "collapse": "건축물붕괴",
            "explosion": "폭발",
            "trafficAccident": "교통사고",
            "electricGas": "전기가스사고",
            "railway": "철도사고",
            "guideWire": "유도선사고",
            "shipAccident": "해양선박사고",
            "edibleWater": "식용수",
            "nuclear": "원전사고",
            "commonDisaster": "공동구재난",
            "largeWaterPollution": "대규모수질오염",
            "livestockDisease": "가축질병",
            "damCollapse": "댐붕괴",
            "powerShortage": "정전 및 전력부족",
            "preventionInfectious": "감염병예방",
            "marinePollution": "해양오염사고",
            "chemicals": "화학물질사고",
            "aircraftAccident": "항공기사고",
            "artificialSpace": "인공우주물체추락",
            "fineDust": "미세먼지",
            "information": "정보통신사고",
            "gpsRadio": "gps전파혼신재난",
            "healthCare": "보건의료재난",
            "personal": "사업장대규모인적사고",
            "concert": "공연장안전",
            "tunnel": "도로터널사고",
            "stadium": "경기장안전",
            "crudeOil": "원유수급위기",
            "summerWater": "여름철물놀이",
            "mountainSafety": "산행안전사고",
            "firstAid": "응급처치",
            "jellyfish": "해파리피해",
            "cpr": "심폐소생술",
            "fireAnt": "붉은불개미",
            "elevator": "승강기안전사고",
            "childFacilities": "어린이놀이시설",
            "foodPoisoning": "식중독",
            "missing": "실종유괴예방",
            "schoolViolence": "학교폭력예방",
            "familyViolence": "가정폭력예방",
            "petroleum": "석유제품사고",
            "terrorism": "테러",
            "emergency": "비상사태",
            "defenseWarning": "민방공경보",
            "preparation": "비상대비물자준비"
        };

        let chart;

        function createChart(disasterType, startDate, endDate, data) {
            if (chart) {
                chart.destroy();
            }

            const disasterTypeInKorean = disasterTypeMap[disasterType] || "알 수 없는 재난 유형";

            const maxValue = Math.max(...data.map(item => item.value)); // 최대값 설정

            chart = Highcharts.mapChart('container', {
                chart: {
                    map: 'countries/kr/kr-all',
                    	zoomType: 'xy', // 확대/축소 가능
                        panning: true, // 드래그로 이동 가능
                        panKey: 'shift' // 쉬프트 키를 눌러서 이동 가능
                },
                title: {
                    text: '대한민국 재난 통계'
                },
                subtitle: {
                    text: '기간: ' + startDate + ' ~ ' + endDate + ', 재난: ' + disasterTypeInKorean
                },
                colorAxis: {
                    min: 0,
                    max: maxValue || 1, // 데이터가 없을 경우를 대비해 1로 설정
                    minColor: '#EFEFFF',
                    maxColor: '#003399'
                },
                series: [{
                    data: data,
                    name: '재난 통계',
                    mapData: Highcharts.maps['countries/kr/kr-all'],
                    joinBy: ['name', 'name'], // 데이터와 지역명을 매핑
                    dataLabels: {
                        enabled: true,
                        format: '{point.name}'
                    }
                }]
            });
        }

        class StatisticsCondition {
            constructor(locCode, startDate, endDate, disasterType) {
                this.locCode = locCode;
                this.startDate = startDate;
                this.endDate = endDate;
                this.disasterType = disasterType;
            }
        }

        function callServer(startDate, endDate, disasterType) {
            const condition = new StatisticsCondition(1000000000, startDate, endDate, disasterType);
            fetch('http://localhost:8080/ehr/statistics/4', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(condition),
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error('네트워크 응답이 좋지 않습니다.');
                }
                return response.json();
            })
            .then(data => {
                console.log('data:', data);

                // 데이터 포맷 수정: 영어 지역명과 'value'를 포함
                const formattedData = {
                    'Seoul': data['서울특별시'] || 0,
                    'Busan': data['부산광역시'] || 0,
                    'Daegu': data['대구광역시'] || 0,
                    'Incheon': data['인천광역시'] || 0,
                    'Gwangju': data['광주광역시'] || 0,
                    'Daejeon': data['대전광역시'] || 0,
                    'Ulsan': data['울산광역시'] || 0,
                    'Gyeonggi': data['경기도'] || 0,
                    'Gangwon': data['강원특별자치도'] || 0,
                    'North Chungcheong': data['충청북도'] || 0,
                    'South Chungcheong': data['충청남도'] || 0,
                    'North Jeolla': data['전북특별자치도'] || 0,
                    'South Jeolla': data['전라남도'] || 0,
                    'North Gyeongsang': data['경상북도'] || 0,
                    'South Gyeongsang': data['경상남도'] || 0,
                    'Jeju': data['제주특별자치도'] || 0
                };

                const formattedDataArray = Object.keys(formattedData).map(key => ({
                    name: key,
                    value: formattedData[key]
                }));

                createChart(disasterType, startDate, endDate, formattedDataArray);
            })
            .catch(error => {
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

        function updateMap() {
            const startYear = $('#startYear').val();
            const startMonth = $('#startMonth').val();
            const startDay = $('#startDay').val();
            const endYear = $('#endYear').val();
            const endMonth = $('#endMonth').val();
            const endDay = $('#endDay').val();

            const startDate = startYear + '/' + startMonth + '/' + startDay;
            const endDate = endYear + '/' + endMonth + '/' + endDay;
            const disasterType = $('#disasterType').val();

            console.log("Start Date:", startDate);
            console.log("End Date:", endDate);
            console.log("Disaster Type:", disasterType);

            callServer(startDate, endDate, disasterType);
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
                  
            <label for="disasterType">재난 유형:</label>
            <select id="disasterType">
                    <option value="flood">침수</option>
				    <option value="typhoon">태풍</option>
				    <option value="heavyRain">호우</option>
				    <option value="lightning">낙뢰</option>
				    <option value="strongWind">강풍</option>
				    <option value="waves">풍랑</option>
				    <option value="heavySnow">대설</option>
				    <option value="coldWave">한파</option>
				    <option value="heatWave">폭염</option>
				    <option value="yellowDust">황사</option>
				    <option value="earthQuake">지진</option>
				    <option value="tsunami">해일</option>
				    <option value="quakeTsunami">지진해일</option>
				    <option value="volcano">화산폭발</option>
				    <option value="drought">가뭄</option>
				    <option value="flood">홍수</option>
				    <option value="tide">조수</option>
				    <option value="landslide">산사태</option>
				    <option value="spaceObject">자연우주물체추락</option>
				    <option value="spaceRadio">우주전파재난</option>
				    <option value="greenTide">조류대발생(녹조)</option>
				    <option value="redTide">적조</option>
				    <option value="fire">화재</option>
				    <option value="forestFires">산불</option>
				    <option value="collapse">건축물붕괴</option>
				    <option value="explosion">폭발</option>
				    <option value="trafficAccident">교통사고</option>
				    <option value="electricGas">전기가스사고</option>
				    <option value="railway">철도사고</option>
				    <option value="guideWire">유도선사고</option>
				    <option value="shipAccident">해양선박사고</option>
				    <option value="edibleWater">식용수</option>
				    <option value="nuclear">원전사고</option>
				    <option value="commonDisaster">공동구재난</option>
				    <option value="largeWaterPollution">대규모수질오염</option>
				    <option value="livestockDisease">가축질병</option>
				    <option value="damCollapse">댐붕괴</option>
				    <option value="powerShortage">정전 및 전력부족</option>
				    <option value="preventionInfectious">감염병예방</option>
				    <option value="marinePollution">해양오염사고</option>
				    <option value="chemicals">화학물질사고</option>
				    <option value="aircraftAccident">항공기사고</option>
				    <option value="artificialSpace">인공우주물체추락</option>
				    <option value="fineDust">미세먼지</option>
				    <option value="information">정보통신사고</option>
				    <option value="gpsRadio">gps전파혼신재난</option>
				    <option value="healthCare">보건의료재난</option>
				    <option value="personal">사업장대규모인적사고</option>
				    <option value="concert">공연장안전</option>
				    <option value="tunnel">도로터널사고</option>
				    <option value="stadium">경기장안전</option>
				    <option value="crudeOil">원유수급위기</option>
				    <option value="summerWater">여름철물놀이</option>
				    <option value="mountainSafety">산행안전사고</option>
				    <option value="firstAid">응급처치</option>
				    <option value="jellyfish">해파리피해</option>
				    <option value="cpr">심폐소생술</option>
				    <option value="fireAnt">붉은불개미</option>
				    <option value="elevator">승강기안전사고</option>
				    <option value="childFacilities">어린이놀이시설</option>
				    <option value="foodPoisoning">식중독</option>
				    <option value="missing">실종유괴예방</option>
				    <option value="schoolViolence">학교폭력예방</option>
				    <option value="familyViolence">가정폭력예방</option>
				    <option value="petroleum">석유제품사고</option>
				    <option value="terrorism">테러</option>
				    <option value="emergency">비상사태</option>
				    <option value="defenseWarning">민방공경보</option>
				    <option value="preparation">비상대비물자준비</option>
            </select>
            <button onclick="updateMap()">조회</button>
        </div>

        <div id="container"></div>
    </section>


    <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>