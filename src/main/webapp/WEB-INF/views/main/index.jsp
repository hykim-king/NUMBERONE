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
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
<title>재난안전포털 No.1</title>
<style>

	*{
	        font-family: "Hahmlet", serif;
	        font-optical-sizing: auto;
	        text-decoration: none;
	        color: inherit;
	}
	    



    section {

        background-color: #ECEFF1;
        height: 1280px;
    }
    section p{
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: bold;   
        font-size: 17px;
        font-weight: 500;
    }   
    #divWrap{
        width: 1200px;
        height: 1000px;
        margin: 0 auto;
        background-color: #ECEFF1;
        position: relative;
    
    }
    .myPageZone {
        position: absolute;
        top: 20px;
        left: 730px;
        width: 415px;
        height: 138px;
        background-color: white;
        display: flex;
        justify-content: space-around;
        align-items: center;
        padding : 10px;
        box-shadow: 3px 3px 7px rgba(0, 0, 0, 0.2); 
        border-radius: 50px;
    }
    
    
    
    /* 배너 */
	 .slider {
	    position: relative;
	    width: 100%;
	    max-width: 600px; /* 원하는 슬라이더의 최대 너비 */
	    margin: auto;
	    overflow: hidden;
	}
	
	.slides {
	    display: flex;
	    transition: transform 0.5s ease-in-out;
	}
	
	.slide {
	    min-width: 100%;
	    box-sizing: border-box;
	}
	
	.slide img {
	    width: 100%;
	    height: auto;
	    display: block;
	}
	
	.nav-buttons {
	    text-align: center;
	    text-align: center;
	    position: relative;
	    top: 145px;
	}
	
	.nav-btn {
	    background-color: #bbb;
	    border: none;
	    border-radius: 50%;
	    cursor: pointer;
	    height: 7px;
	    width: 7px;
	    margin: 5px;
	    padding: 0;
	    outline: none;
	   position: relative;
	    top: -8px;
	}
	
	.nav-btn.active {
	    background-color: #717171;
	}

    .mypageDiv{
        width : 80px;
        height: 158px;
        font-family: 'Tahoma', sans-serif;
        position: absolute;
        left: 0;
        border-left : 9px solid #eee;
         display: flex; /* Flexbox 활성화 */
	    justify-content: center; /* 가로 중앙 정렬 */
	    align-items: center; /* 세로 중앙 정렬 */
	    font-weight: 900;
	    font-size:70px;
	    color:#eee;
	    writing-mode: vertical-rl; /* 텍스트가 위에서 아래로 배치 */
        transform: rotate(180deg); 
         border-radius: 0px 47px 47px 0px; /* 왼쪽 위, 왼쪽 아래는 50px, 오른쪽은 0 */
         overflow: hidden;
    }
  
    #showName{
        color:#eeeeee;
        position: absolute;
        top:20px;
        left : 110px;
    }
    #showLocation{
        position: absolute;
        top:60px;
        left : 110px;
        color:#134b70;
        font-size: 15px;
        font-weight: 600;
    }
    
    #locResetButton{
             display: none; 
            position: absolute;
            top: 105px;
            left: 215px; 
            width: 80px;
            height: 30px;
            background-color: #eee;
            color: #201e4b;
            font-weight:600;
            border: none;
            border-radius: 15px;
            font-family: "Hahmlet", serif;
            font-size: 14px;
            cursor: pointer;
            box-shadow: 2px 3px 5px rgba(0, 0, 0, 0.6); 
        
        
    
    }
      /* hover 상태에서 그림자가 안쪽으로 들어가는 효과 */
    #locResetButton:hover {
        box-shadow: inset 2px 2px 5px rgba(0, 0, 0, 0.4); /* 버튼 안쪽으로 들어가는 그림자 */
    }
    #loginGoBtn{
             display: none; 
            position: absolute;
            top: 105px;
            left: 195px; 
            width: 110px;
            height: 30px;
            background-color: #eee;
            color: #201e4b;
            font-weight:600;
            border: none;
            border-radius: 15px;
            font-family: "Hahmlet", serif;
            font-size: 14px;
            cursor: pointer;
            box-shadow: 1px 2px 2px rgba(0, 0, 0, 0.4);
        
        
    
    }
          /* hover 상태에서 그림자가 안쪽으로 들어가는 효과 */
    #loginGoBtn:hover {
        box-shadow: inset 2px 2px 5px rgba(0, 0, 0, 0.4); /* 버튼 안쪽으로 들어가는 그림자 */
    }
    #disaster-img01,#disaster-img02,#disaster-img03{
        border: 1px solid black;
        width: 150px;
        margin : 5px; 
        height: 130px;
    }
    .settings {
	    position: absolute;
	    top: 485px;
	    left: 20px;
	    width: 209px;
	    height: 45px;
	    background-color: #134b70;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    font-family: "Hahmlet", serif;
	    font-optical-sizing: auto;
	    font-style: normal;
	    border-radius: 10px 10px 0px 0px;
	    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 1px 3px 6px rgba(255, 255, 255, 0.4) inset;
    }
    .settings>p{
        text-align: center;
        font-size: 20px;
        font-weight: 600;
        color : #eee
    }
    .shelters {
        position: absolute;
        top: 530px;
        left: 20px;
        width: 580px;
        height: 422px;
        background-color: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
        border: 1px solid #E0E0E0;
    }
    
    .sheltersBottom{
	    position: absolute;
	    top: 872px;
	    left: 21px;
	    background-color: #134b70;
	    width: 580px;
	    height: 81px;
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
	    top: 215px;
	    left: -21px;
	    width: 40px;
	    height: 144px;
	    background-color: #134b70;
	    color: #eee;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    font-family: "Hahmlet", serif;
	    font-optical-sizing: auto;
	    /* font-weight: 800; */
	    font-style: normal;
	    /* border: 1px solid #E0E0E0; */
	    border-radius: 10px 0px 0px 10px;
	    box-shadow: 5px 2px 2px rgba(0, 0, 0, 0.4);
    
    }
    .messagesDiv>p{
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    text-align: center;
	    font-size: 20px;
	    font-weight: 600;
    }
    #messageTable{
	   
	    
	    
	    font-weight: 500;
    }
    #messageTable tr{
        padding : 5px;
    
    }
    
    #messageTable td{
        
        
        border-bottom: 3px solid #9E9E9E;
        font-weight: 500;
    }
    .messages {
        position: absolute;
        top: 215px;
        left: 20px;
        right: 20px;
        width :1125px;
        height: 212px;
        background-color: #FFFFFF;
        padding: 10px;
        border: 1px solid #E0E0E0;
        box-shadow: 2px 2px 5px 1px rgba(0, 0, 0, 0.3);
    }
    
    .graphText{
	    position: absolute;
	    top: 485px;
	    left: 615px;
	    width: 209px;
	    height: 45px;
	    background-color: #134b70;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    font-family: "Hahmlet", serif;
	    font-optical-sizing: auto;
	    font-style: normal;
	    border-radius: 10px 10px 0px 0px;
	   box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 1px 3px 6px rgba(255, 255, 255, 0.4) inset;
    }
    .graph {
        position: absolute;
        top: 530px;
        left: 615px;
        right: 15px;
        width : 530px;
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
    .graphText p{
        text-align: center;
        font-size: 20px;
        font-weight: 600;
        color : #eee;
    }
    .graph img {
        display: block;
        
        
    }
    
    #bottomDivGroup{
        background-color: #134b70;
    
    }
    
    #behaviorDiv{
        position: absolute;
	    top: 990px;
	    left: 20px;
	    width: 580px;
	    height: 240px;
	    background-color: #fff;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    border: 2px solid #134b70;
    
    }
    .behavior{
        padding :15px;
    }
    .behaviorImg{
        background-color: #134b70;
	    width: 140px;
	    height: 242px;
	   
    }
    .behaviorImg img, .searchImg img{
       position: relative; 
       top: 50px;
    }
    .behavior h3, .search h3{
        color : #134b70;    
    
    }
    
    
    #searchDiv{
        position: absolute;
        top: 990px;
        left: 615px;
        width: 550px;
        height: 240px;
        background-color: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
        border: 2px solid #134b70;
    
    }
    
    .searchImg{
	    background-color: #134b70;
	    width: 125px;
	    height: 242px;
	    position: relative;
	    left: -22px;
        
    }
    
	.behavior ul, .search ul {
	    list-style: none;
	    padding: 0;
	    margin: 0;
	    display: flex;
	    flex-wrap: wrap;
	    justify-content: space-around;
	}
	
	.behavior ul li{
	    background-color: #ECEFF1;
	    border-radius: 10px;
	    padding: 10px 15px;
	    margin: 5px;
	    width: 39%; 
	    height: 30px;
	    line-height: 2.2;
	    text-align: center;
	    font-size: 15px;
	    font-weight: 500;
	    box-shadow: 2px 3px 2px rgba(0, 0, 0, 0.2);
	}
	
	
	.search ul li {
	    background-color: #ECEFF1;
	    border-radius: 50%;
	    padding: 10px 15px;
	    margin: 5px;
	
	    height: 59px;
	    line-height: 4;
	    text-align: center;
	    font-weight: 600;
	    font-size: 15px;
	    box-shadow: 2px 3px 2px rgba(0, 0, 0, 0.2);
	}
	
	.behavior ul li:hover, .search ul li:hover {
	    background-color: #134b70;
	    cursor: pointer;
	}
	
	.behavior ul li:hover a, .search ul li:hover a {
	    color: #eeeeee;
	    cursor: pointer;
	}
	
	
	.scroll-to-top {
	    position: fixed;
	    bottom: 20px;
	    right: 20px;
	    display: none; 
	    background-color: #2196F3;
	    color: white;
	    border: none;
	    border-radius: 50%;
	    width: 50px;
	    height: 50px;
	    text-align: center;
	    line-height: 50px;
	    font-size: 24px;
	    cursor: pointer;
	    z-index: 1000; 
	}
	
	.scroll-to-top:hover {
	    background-color: #007bff;
	}
</style>
<script>
//.scroll-to-top
document.addEventListener('DOMContentLoaded', function() {
    const scrollToTopBtn = document.getElementById('scrollToTopBtn');
    
    window.addEventListener('scroll', function() {
        if (window.scrollY > 200) { // 스크롤 위치가 300px을 넘었을 때
            scrollToTopBtn.style.display = 'block'; // 버튼을 보이게
        } else {
            scrollToTopBtn.style.display = 'none'; // 버튼을 숨김
        }
    });

    scrollToTopBtn.addEventListener('click', function() {
        window.scrollTo({ top: 0, behavior: 'smooth' }); // 부드럽게 페이지 상단으로 이동
    });
});

</script>
</head>
<body>

    <%@ include file="header.jsp" %>

    <section>
        <div id= "divWrap">
        
        
		        <div class="myPageZone">
		            <div class="mypageDiv">NO.1</div>
		            <a href="http://localhost:8080/ehr/member/signInUp.do"><button id="loginGoBtn" >로그인하러가기</button></a>
		            <p id= "showName"></p>
		            <p id= "showLocation">* 로그인 하시면 맞춤 정보로 확인 가능 합니다. </p>
		            <a href="http://localhost:8080/ehr/member/locCodeUpdate.do" ><button id="locResetButton" >위치 재설정</button></a>
		        </div>
		        
		        
		        
		        
		        <div class="emergency-info">
		            <div class="slides">
		                
		            </div>
		            
		                <div class="nav-buttons">
				            
                        </div>
		        </div>
		          
		        
		
		            <div id="sheltersDiv">
			        <div class="settings">
			            <p>안전시설 정보 조회</p>
			        </div>
                        <div>
                             <ul>
<!--                                  <li><a href="#">민방위 대피시설</a></li>
                                 <li><a href="#">지진대피장소</a></li>
                                 <li><a href="#">이재민 임시주거시설</a></li>
                                 <li><a href="#">무더위 쉼터</a></li>
                                 <li><a href="#">산사태 대피소</a></li>
                                 <li><a href="#">민방위 급수시설</a></li>
                                 <li><a href="#">지진겸용 임시주거시설</a></li>
                                 <li><a href="#">화학사고 대피장소</a></li>
                                 <li><a href="#">미세먼지 쉼터</a></li> -->
                             </ul>
                        </div>
                        			
			        
			        <div>
			           <div class="shelters"></div>
		               <div class="sheltersBottom"></div>
			        
			        </div>
			        </div><!-- sheltersDiv end -->        
		         
		        
		        
		        
		        
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
			            <p>* 로그인 하시면 맞춤 정보로 확인 가능 합니다. </p> 
			        </div>
		        </div>
		        
		        
		        
		        
		        <div id="bottomDivGroup">
		        <div id="behaviorDiv">
                    <div class="behaviorImg">
                        <img src="/ehr/resources/img/behaviorImg.png">
                    </div>
                    <div class="behavior">
                        <h3>재난 발생 시 국민행동요령</h3>
                        <ul>
                        <li><a href="http://localhost:8080/ehr/nature/natureMain.do">자연재난행동요령</a></li>
                        <li><a href="http://localhost:8080/ehr/society/societyMain.do">사회재난행동요령</a></li>
                        <li><a href="http://localhost:8080/ehr/living/livingMain.do">생활안전행동요령</a></li>
                        <li><a href="http://localhost:8080/ehr/emergencyPre/emergencyPreMain.do">비상대비행동요령</a></li>
                        </ul>
                    </div>
                </div>
                
                
                
		        <div id="searchDiv">
                    <div class="searchImg">
                        <img src="/ehr/resources/img/searchImg.png">
                    </div>
                    <div class="search">
                        <h3>재난발생 정보 조회</h3>
                        <ul>
                        <li><a href="#">재난문자</a></li>
                        <li><a href="#">재난뉴스</a></li>
                        <li><a href="#">훈련영상</a></li>
                        <li><a href="#">대피시설</a></li>
                        </ul>
                    </div>
                </div>
		        
		        </div>
		        
        </div>  <!-- divWrap end -->
        
        
        <button id="scrollToTopBtn" class="scroll-to-top">↑</button>
    </section>

    <%@ include file="footer.jsp" %>
<script>








		function getSession() {
		    fetch('http://localhost:8080/ehr/session/api/session', {
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
		        
		        if (data.locCode!=0) {
		            document.getElementById('showName').textContent = '"' + memberFromSession.nickname+'" 님 환영합니다!';
		            locToAddress(memberFromSession.locCode); 
		            
		            
		            document.getElementById('locResetButton').style.display = 'inline-block'; // 위치 재설정 버튼 보이게 하기
		            
		            document.querySelector('.myPageZone').style.backgroundColor = '#134b70';
		            document.getElementById('showLocation').style.color = '#eee';
		            
		            console.log(memberFromSession);
		            callServerUpward(memberFromSession.locCode,formattedLastMonth,formattedToday);
		            getDisasterMsgList(memberFromSession.locCode);
		            
		        } else{
		            document.getElementById('showLocation').textContent = '* 로그인 하시면 맞춤 정보로 확인 가능 합니다.';
		            document.getElementById('loginGoBtn').style.display = 'inline-block'; // 위치 재설정 버튼 보이게 하기
		            callServer(1000000000,formattedLastMonth,formattedToday);
		            getDisasterMsgListAll();
		        }
		    })
		    .catch(error => {
		        console.error('Fetch error: ', error);
		    });
		}
		
		document.addEventListener('DOMContentLoaded', getSession);
		
		
		
		
		
		
		
		
		function locToAddress(locCode) {
		       const url = new URL('http://localhost:8080/ehr/location/locToAddress');
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
		            const showLocationElement = document.getElementById('showLocation');
		            if (showLocationElement) {
		   
		                showLocationElement.textContent = "현재 설정 위치 : " + location;
		            } else {
		                console.error('showLocation 요소를 찾을 수 없습니다.');
		            }
		        } else {
		            document.getElementById('showLocation').textContent = '* 지역 정보를 불러오는데 실패했습니다.';
		        }
		    })
		    .catch(error => {
		        console.error('Fetch error: ', error);
		        document.getElementById('showLocation').textContent = '* 지역 정보를 불러오는데 실패했습니다.';
		    });
		}
		

		
		
/* -배너------------------------------------------------------------------------------------- */
			let disasterTypesInEnglish = [];    
	
	
			function createBanner(disasterTypesInEnglish) {
			    const slidesContainer = document.querySelector('.slides');
			    const navButtonsContainer = document.querySelector('.nav-buttons');
			    
			    disasterTypesInEnglish.forEach((type, index) => {
			        const slide = document.createElement('a');
			        const img = document.createElement('img');
			        img.src = '/ehr/src/main/webapp/resources/img/'+type + '.png';
			        img.alt = type;
			        slide.appendChild(img);
			        slidesContainer.appendChild(slide);
			    
			        const navButton = document.createElement('button');
			        navButton.className = 'nav-btn';
			        navButton.dataset.slide = index;
			        navButton.addEventListener('click', () => showSlide(index));
			        navButtonsContainer.appendChild(navButton);
			    });
	
			    showSlide(0); // 첫 슬라이드를 초기 설정으로 보여줌
			}
			
			
		    
		    setInterval(() => {
		        currentSlide = (currentSlide + 1) % disasterTypesInEnglish.length;
		        showSlide(currentSlide);
		    }, 5000);
		         
	        
	        function convertDisasterTypes(disasterTypes) {
	        const disasterTypeMap = {
	            "홍수": "flood",
	            "호우": "heavyRain",
	            "풍랑": "waves",
	            "황사": "yellowDust",
	            "강풍": "strongWind",
	            "대설": "heavySnow",
	            "한파": "coldWave",
	            "폭염": "heatWave",
	            "지진": "earthQuake",
	            "산사태": "landslide",
	            "화재": "fire",
	            "산불": "forestFires",
	            "교통사고": "trafficAccident",
	            "감염병예방": "preventionInfectious",
	            "미세먼지": "fineDust"
	        };
	        
	        return Array.from(disasterTypes).map(type => disasterTypeMap[type]);
	    }
	    
	
	    
	    // 슬라이드 보여주기
	    let currentSlide = 0;
	    
	    function showSlide(index) {
	        const slides = document.querySelectorAll('.slides a');
	        const buttons = document.querySelectorAll('.nav-btn');
	        
	        if (index < 0 || index >= slides.length) return;
	    
	        slides.forEach((slide, i) => {
	            slide.style.display = (i === index) ? 'block' : 'none';
	        });
	    
	        buttons.forEach((button, i) => {
	            button.classList.toggle('active', i === index);
	        });
	    
	        currentSlide = index;
	    }
	    
	    // 초기 슬라이드 설정
	    showSlide(currentSlide);
	    
	   

		
//------------------------------------------------------------------------------------
		
		
        const disasterTypeSet = new Set();
		function getDisasterMsgListAll(){
			
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
                    row.append($("<td></td>").text(msg.broadcastOrganization).css({
                        "white-space": "nowrap",
                        "overflow": "hidden",
                        "text-overflow": "ellipsis",
                        "max-width": "90px",
                        "background-color":"#eee"
                    }));
                    
                    console.log("Final disasterTypeSet:", Array.from(disasterTypeSet));
                    const disasterTypesInEnglish = convertDisasterTypes(disasterTypeSet);
                    console.log("Converted Types:", disasterTypesInEnglish);
                    

                    // 위험도에 따른 배경색 설정
                    let emergencyLevelColor;
                    switch(msg.emergencyLevel) {
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
                            emergencyLevelColor = "white"; // 기본 색상
                    }
                    
                    row.append($("<td></td>").text(msg.emergencyLevel).css({
                        "background-color": emergencyLevelColor
                    }));
                    
                    row.append($("<td></td>").text(msg.msgRegDt));
                    row.append($("<td></td>").text(msg.messageContext).css({
                        "white-space": "nowrap",
                        "overflow": "hidden",
                        "text-overflow": "ellipsis",
                        "max-width": "900px"
                    }));
                    
                    $("#messageTable").append(row);
                    
                    if(msg.disasterType != "기타"){
                    	disasterTypeSet.add(msg.disasterType);
                    }
                    
        		});
                
          
                // 재난 종류를 변환한 후 배너를 생성
                disasterTypesInEnglish = convertDisasterTypes(disasterTypeSet);
                console.log("Converted Types:", disasterTypesInEnglish);
                createBanner(disasterTypesInEnglish);
        		
            })
            .catch(function(error) { 
                console.error('문제가 발생했습니다:', error);
            });
		}
		
		function getDisasterMsgList(locCode){
			const startDay =formatDate(today);
			const tempDate = new Date(today); // 오늘 날짜를 기반으로 새 객체 생성
			tempDate.setMonth(today.getMonth() - 1);
			const endDay=formatDate(tempDate);
			const condition = new StatisticsCondition(locCode, startDay, endDay);
            fetch('http://localhost:8080/ehr/messageRetrieve', {
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
            .then(function(data) { 
            	$("#messageTable").empty();
            	msgList=data;
        		$.each(msgList, function(index, msg) {
        			let row = $("<tr></tr>");
                    row.append($("<td></td>").text(msg.broadcastOrganization).css({
                        "white-space": "nowrap",
                        "overflow": "hidden",
                        "text-overflow": "ellipsis",
                        "max-width": "90px",
                        "background-color":"#eee"
                    }));
                    
                     // 위험도에 따른 배경색 설정
                    let emergencyLevelColor;
                    switch(msg.emergencyLevel) {
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
                            emergencyLevelColor = "white"; // 기본 색상
                    }
                    
                    row.append($("<td></td>").text(msg.emergencyLevel).css({
                        "background-color": emergencyLevelColor
                    }));
                    row.append($("<td></td>").text(msg.msgRegDt));
                    row.append($("<td></td>").text(msg.messageContext).css({
                        "white-space": "nowrap",
                        "overflow": "hidden",
                        "text-overflow": "ellipsis",
                        "max-width": "900px"
                    }));
                    $("#messageTable").append(row);
                    if(msg.disasterType != "기타"){
                    	disasterTypeSet.add(msg.disasterType);
                    }
                    
        		});
        		
        		
                // 재난 종류를 변환한 후 배너를 생성
                disasterTypesInEnglish = convertDisasterTypes(disasterTypeSet);
                console.log("Converted Types:", disasterTypesInEnglish);
                createBanner(disasterTypesInEnglish);
                
            })
            .catch(function(error) { 
                console.error('문제가 발생했습니다:', error);
            });
		}
		
		
		
		console.log(disasterTypeSet);
		
		

        
		
				
		function showGraph(statistics) {
			let titleText ='전국 최근 한달 재난 문자 누적 통계';
			if(statistics.locCode!=1000000000){
				titleText ='우리동네 최근 한달 재난 문자 누적 통계'
			}
		    $("#graphContainer").empty();
            Highcharts.chart('graphContainer', {
                chart: {
                    type: 'pie'
                },
                title: {
                    text: titleText
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
        
        
        
        function callServer(locCode,startDate, endDate) {
        	const condition = new StatisticsCondition(locCode, startDate, endDate);
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
            	showGraph(resultArray);
            	
                
            })
            .catch(function(error) { 
                console.error('문제가 발생했습니다:', error);
            });
        }
        
        function callServerUpward(locCode,startDate, endDate) {
        	const condition = new StatisticsCondition(locCode, startDate, endDate);
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
        
        	
        	
        	

        
        
</script>
</body>
</html>