<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="CP" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
<!-- Highcharts 로드 -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
<script src="${CP}/resources/js/jquery-1.11.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <%-- jquery --%>
    <script src="${CP}/resources/js/jquery_3_7_1.js"></script>
<title>재난안전포털 No.1</title>
<style>

	*{
	        font-family: "Hahmlet", serif;
	        font-optical-sizing: auto;
	        text-decoration: none;
	        color: inherit;
	}
	    



    section {

	    background: linear-gradient(
	        to bottom,
	        #EEEEEE 0px, /*  0px부터 시작 */
	        #EEEEEE 220px, /*  0px부터 500px까지 */
	        #CFD8DC 220px, 

	        #CFD8DC 1300px 
	    );
        height: 1300px;
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
        position: relative;
    
    }
    .myPageZone {
        position: absolute;
        top: 30px;
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
	    top: 5px;
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
	    top: 505px;
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
	    box-shadow:0 4px 8px rgba(0, 0, 0, 0.2), 1px 2px 5px rgba(255, 255, 255, 0.3) inset;
    }
    .settings>p{
        text-align: center;
        font-size: 20px;
        font-weight: 600;
        color : #eee
    }
    .shelters {
        position: absolute;
        top: 550px;
        left: 20px;
        width: 580px;
        height: 422px;
        background-color: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
        
        box-shadow: 2px 2px 5px 1px rgba(0, 0, 0, 0.3);
    }
    
    
    #sheltersBtn {
        display:none;
	    width: 576px;
	    height: 424px;
	    position: relative;
	    top: 577px;
	    left: 110px;
	    align-items: center;
	    z-index: 10;
    }
  

    #sheltersBtn ul {
        list-style-type: none; /* 기본 리스트 스타일 제거 */
        padding: 0;
        margin: 0;
        width: 100%;

        flex-wrap: wrap;
        justify-content: space-between;
    }

    #sheltersBtn li {
        width: 35%; /* 3개의 열로 분배 */
        margin-bottom: 15px;
        text-align: center; /* 텍스트 가운데 정렬 */
        padding:5px;
       
    }

    #sheltersBtn a {
        display: block;
        padding: 10px;
        background-color: #ECEFF1;
        color: black;
        font-weight:600;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
        padding :10px;
         box-shadow: 2px 3px 2px rgba(0, 0, 0, 0.2);   
    }

    #sheltersBtn a:hover {
        background-color: #134b70; /* 마우스 오버 시 배경색 변경 */
        color:#eee;
    }
    .sheltersBottom{
	    position: absolute;
	    top: 929px;
	    left: 20px;
	    background-color: #134b70;
	    width: 580px;
	    height: 45px;
	    font-size: 29px;
	    color: #CFD8DC;
	    font-weight: 1000;
	    font-family: 'Tahoma', sans-serif;
	    line-height: 1.5;
	    overflow: hidden;
    }
    .emergency-info {
        position: absolute;
        top: 30px;
        left: 20px;
        right:30px;
        width : 680px;
        height: 160px;
        background-color: #CFD8DC;
        box-shadow: 0px 2px 3px 1px rgba(0, 0, 0, 0.2);
    }
    .messagesDiv{
	    position: absolute;
	    top: 240px;
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
	    box-shadow: 5px 2px 2px rgba(0, 0, 0, 0.4), 1px 2px 5px rgba(255, 255, 255, 0.3) inset;
    
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
	   width: 100%; /* 테이블의 너비를 100%로 설정 */
	    table-layout: fixed; /* 테이블의 너비를 고정 */
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
        top: 240px;
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
	    top: 505px;
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
	   box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 1px 2px 5px rgba(255, 255, 255, 0.3) inset;
    }
    .graph {
        position: absolute;
        top: 550px;
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
        box-shadow: 2px 2px 5px 1px rgba(0, 0, 0, 0.3);
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
	    top: 1010px;
	    left: 20px;
	    width: 580px;
	    height: 240px;
	    background-color: #fff;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    border: 2px solid #134b70;
        box-shadow: 2px 2px 5px 1px rgba(0, 0, 0, 0.3);
    }
    .behavior{
        padding :15px;
    }
    .behaviorImg{
        background-color: #134b70;
	    width: 140px;
	    height: 242px;
	   box-shadow: 0 4px 5px rgba(0, 0, 0, 0.2), 0px 1px 7px rgba(255, 255, 255, 0.3) inset;
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
        top: 1010px;
        left: 615px;
        width: 550px;
        height: 240px;
        background-color: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
        border: 2px solid #134b70;
        box-shadow: 2px 2px 5px 1px rgba(0, 0, 0, 0.3);
    }
    
    .searchImg{
	    background-color: #134b70;
	    width: 125px;
	    height: 242px;
	    position: relative;
	    left: -22px;
        box-shadow: 0 4px 5px rgba(0, 0, 0, 0.2), 0px 1px 7px rgba(255, 255, 255, 0.3) inset;
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
	    font-weight: 600;
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
	.toast {
	    position: relative;
	    display: block;
	    width: 260px; 
	    margin-bottom: 1rem;
	    border: none;

	    box-shadow: 0px 0px 4px 1px rgba(0, 0, 0, 0.3);
	    opacity: 0;
	    transition: opacity 0.5s ease-in-out;
	    background-color: #ffffff; /* 토스트 배경색 */
        border-radius: 0.375rem; /* 토스트 모서리 둥글게 */
}

	.toast-header {
	  
	    display: flex;
	    align-items: center;
	    padding: 0.5rem 1rem;      
	    background-color: #134b70; /* 헤더 배경색 */
	    color: #495057; /* 헤더 텍스트 색상 */
	    border-bottom: 1px solid #dee2e6; /* 헤더 하단 테두리 */
	}
	.toast-header strong{
	   text-align: center;
	   font-size: 20px;
	   color: white;
	}
	.toast-header small{
       text-align: center;
       font-size: 13px;
       color: white;
    }
	.toast-header>button {
	    font-size: 1.4rem; /* X 버튼 크기 */
	    color: white; /* X 버튼 색상 */
	    cursor: pointer; 
	    border: none;
	    background: none; 
	    margin-left: auto; /* 오른쪽 정렬 */
	    margin-bottom: 0.5rem; /* 아래 여백 */
	    transition: color 0.2s ease-in-out; /* 색상 변화 애니메이션 */
    }

	.toast-header>button:hover {
	    color: #2196F3; /* 호버 시 색상 변화 */
	}
	.toast-body {
	     padding: 1.1rem 1rem;
	     color: #212529; /* 본문 텍스트 색상 */
         font-size: 15px; /* 본문 텍스트 크기 */    
         text-align: center;
	}
	
	.toast.show {
	    opacity: 1; /* 토스트가 보일 때의 투명도 */
	}
	
	.toast.hide {
	    opacity: 0; /* 토스트가 숨겨질 때의 투명도 */
	}
	
	.btn-close {
    filter: brightness(0.8); /* 닫기 버튼 밝기 조절 */
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
                <div class="toast-container" id="toastContainer" style="position: fixed; top: 20px; right: 20px;">
        			<!-- 토스트가 여기에 추가됩니다. -->
    			</div>  
        
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
                        <div id="sheltersBtn">
                             <ul>
                                 <li><a href="#">민방위 대피시설</a></li>
                                 <li><a href="#">지진대피장소</a></li>
                                 <li><a href="#">이재민 임시주거시설</a></li>
                                 <li><a href="#">무더위 쉼터</a></li>
                                 <li><a href="#">산사태 대피소</a></li>
                                 <li><a href="#">민방위 급수시설</a></li>
                                 <li><a href="#">지진겸용 임시주거시설</a></li>
                                 <li><a href="#">화학사고 대피장소</a></li>
                                 <li><a href="#">미세먼지 쉼터</a></li>
                             </ul>
                        </div>
                        			
			        
			        <div>
			           <div class="shelters"></div>
		               <div class="sheltersBottom">──────────────────────────────</div>
			        
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
			             <a href="http://localhost:8080/ehr/chart/dataChart.do"><p>재난 문자 발송 통계</p></a>
			        </div>
			            
		  
			        <div class="graph" id="graphContainer">
			            <p>* 로그인 하시면 맞춤 정보로 확인 가능 합니다. </p> 
			        </div>
		        </div>
		        
		        
		        
		        
		        <div id="bottomDivGroup">
		        <div id="behaviorDiv">
                    <div class="behaviorImg">
                        <img src="/ehr/resources/images/behaviorImg.png">
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
                        <img src="/ehr/resources/images/searchImg.png">
                    </div>
                    <div class="search">
                        <h3>재난발생 정보 조회</h3>
                        <ul>
                        <li><a href="http://localhost:8080/ehr/disasterMsg/disasterMsg">재난문자</a></li>
                        <li><a href="http://localhost:8080/ehr/news">안전뉴스</a></li>
                        <li><a href="http://localhost:8080/ehr/video/videoView.do">훈련영상</a></li>
                        <li><a href="http://localhost:8080/ehr/chart/dataChartMap.do">전국통계</a></li>
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
		            document.getElementById('sheltersBtn').style.display = 'inline-block';
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
			    
			    
			     const disasterTypeNum = {
			    		    "flood": 16,
			    		    "heavyRain": 3,
			    		    "waves": 6,
			    		    "yellowDust": 10,
			    		    "strongWind": 5,
			    		    "heavySnow": 7,
			    		    "coldWave": 8,
	                        "heatWave": 9,
	                        "earthQuake": 11,
	                        "landslide": 18/* 
			                "화재": "fire",
			                "산불": "forestFires",
			                "교통사고": "trafficAccident",
			                "감염병예방": "preventionInfectious",
			                "미세먼지": "fineDust" */
		         };
			    
			    
			    
			    
			    disasterTypesInEnglish.forEach((type, index) => {
			        const slide = document.createElement('a');
			        const img = document.createElement('img');
			        img.src = '/ehr/resources/images/'+type + '.png';
			        img.alt = type;
			        
			        const typeNumber = disasterTypeNum[type] || 'unknown';
			        slide.href = 'http://localhost:8080/ehr/nature/' + typeNumber + '.do'; 
			        
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
                    	"width": "30px", /* 첫 번째 열 너비 */
                        "white-space": "nowrap",
                        "overflow": "hidden",
                        "text-overflow": "ellipsis",
                        "max-width": "90px",
                        "padding": "6px",
                        "background-color":"#F5F5F5"
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
                    	"width": "35px", /* 두 번째 열 너비 */                        
                        "background-color": emergencyLevelColor,
                        "text-align" : "center"
                    }));
                    
                    row.append($("<td></td>").text(msg.msgRegDt).css({
                        "width": "30px", /* 세 번째 열 너비 */
                        "white-space": "nowrap",
                        "overflow": "hidden",
                        "text-overflow": "ellipsis",
                        "text-align" : "center"
                    }));
                    row.append($("<td></td>").text(msg.messageContext).css({
                    	"width": "300px", /* 네 번째 열 너비 */
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
                    	"width": "30px", /* 첫 번째 열 너비 */
                        "white-space": "nowrap",
                        "overflow": "hidden",
                        "text-overflow": "ellipsis",
                        "max-width": "90px",
                        "padding": "6px",
                        "background-color":"#F5F5F5"
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
                    	"width": "35px", /* 두 번째 열 너비 */                        
                        "background-color": emergencyLevelColor,
                        "text-align" : "center"
                    }));
                    row.append($("<td></td>").text(msg.msgRegDt).css({
                        "width": "30px", /* 세 번째 열 너비 */
                        "white-space": "nowrap",
                        "overflow": "hidden",
                        "text-overflow": "ellipsis",
                        "text-align" : "center"
                    }));
                    row.append($("<td></td>").text(msg.messageContext).css({
                    	"width": "300px", /* 네 번째 열 너비 */
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
		
		

        
		
				
		function showGraph(dataArray,statistics) {
			let titleText ='전국 최근 한달 재난 문자 누적 통계';
			console.log(statistics.locCode);
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
            	showGraph(resultArray,condition);
            	
                
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
            	showGraph(resultArray,condition);
            	
                
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
        
        const eventSource = new EventSource('/ehr/sse'); // SSE 연결을 설정합니다.

        eventSource.onmessage = function(event) {
        	
            const message = event.data;
            console.log("message",message);
            // Bootstrap 토스트 생성
            const toastHTML = `
                <div class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-autohide="false" style="margin-bottom: 10px;">
                    <div class="toast-header">
                        <strong class="mr-auto">알림</strong>
                        <small>방금</small>
                        <button type="button" class="ml-2 mb-1 close" onclick="toast.hide()" data-dismiss="toast" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="toast-body">
                                                           새로운 재난문자가 등록되었습니다. 새로고침시 확인 가능합니다.
                    </div>
                </div>
            `;

            // 토스트를 컨테이너에 추가
            const toastContainer = document.getElementById('toastContainer');
            toastContainer.insertAdjacentHTML('beforeend', toastHTML);

            // 토스트를 보여줍니다.
            const toastElement = toastContainer.lastElementChild;
            const toast = new bootstrap.Toast(toastElement);
            toast.show();
        };	
        	

        
</script>
</body>
</html>