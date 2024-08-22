<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">

<style>
    * {
        margin: 0;
        padding: 0;
        list-style: none;
        text-decoration: none;
    }
    
    body {
        background-color: white;
    }

	#logo {
	    width: 145px;
	    height: auto;
	    margin: auto;
	    display: block;
	    position: relative; 
	    z-index: 1;
	}

    ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
    }

    #headerMenu {
        margin-right: 500px;
        position: relative;
        top: 70px;
        right: -120px;
    }

    #headerMenu ul {
        display: flex;
        justify-content: flex-end;
    }

    #headerMenu ul a {
        display: block;
        color:#134b70;
        font-size: 13px;
        text-decoration: none;
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
        padding: 14px 30px;
        font-weight: 500;
    }

    li {
        float: left;
        position: relative;
    }

    #nav {
        display: flex;
        justify-content: center;
        margin-top: 20px;
        border: 1px solid #E0E0E0;
        position: relative;
    }

    #navWrap {
        position: relative;
        margin: 0px auto;
        display: flex;
        justify-content: center;
        text-align: center;
        font-size: 15.5px;
        padding: 20px 0;
        text-decoration: none;
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
        font-weight: bold;
        width: 100%;
    }

    #navWrap ul {
        display: flex;
        justify-content: center;
    }
    #navMenu1,#navMenu2,#navMenu3,#navMenu4,#navMenu5{
     padding: 10px 70px;
     color: #134b70;
    }


    #navMenu {
        font-size: 15px;
          
    }

    #navWrap>a {
        font-size: 13px;
      
    }

    .gnbWrap {
        display:none;
        height : 170px;
        position: absolute;
        top: 100%;
        left: 0;
        right: 0;
        box-shadow: 0 8px 8px rgba(0, 0, 0, 0.1);
        z-index: 100;
        background-color: #134b70;
        
        width: 100%;
    }

    #navWrap:hover .gnbWrap {
        display: block;
    }

    .gnbWrap>ul {
        display: flex;
        justify-content: center;
    }

    .gnbWrap>ul>li {
       border-left: 1px solid #123a54;
       border-right: 1px solid #123a54;
    }


    .gnbWrap ul ul {
        display: flex;
        flex-direction: column;
        padding: 0;
    }

    .gnbWrap ul ul li {
        padding: 5px 0;
    }

    .gnbWrap ul ul li a {
        padding: 5px 0px 5px 0px;
        width:195.8px;
        color: #eee;
        text-decoration: none;
        display: block;
        font-size: 14.5px;
        text-align: center;
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
        
    }

    .gnbWrap ul ul li a:hover {
        transform: scale(1.1); /* 링크를 1.1배 확대 */
        transition: transform 0.1s ease; /* 부드러운 전환 효과 */
    }


    #loginBtn:hover:not(.active) {
        background-color: #ddd;
    }
    
    
    li a.active {
        color: white;
        background-color: #04AA6D;
    }



</style>


<meta charset="UTF-8">
<title>header</title>
</head>
<body>
    <div id="headerMenu">
        <ul>
            <li><a href="http://localhost:8080/ehr/member/signInUp.do" id ="loginBtn">로그인/회원가입</a></li>
        </ul>
    </div>
	<div>
	    <a href="http://localhost:8080/ehr/main/index.do">
	        <img src="/ehr/resources/images/logo1.png" alt="logo" id="logo">
	    </a>
	</div>

    <div id="nav">
        <div id="navWrap">
            <ul>
                <li><a id="navMenu1" href="#">재난상황</a></li>
                <li><a id="navMenu2" href="#">안전뉴스</a></li>
                
                <li><a id="navMenu3" href="#">재난대비</a></li>
                <li><a id="navMenu4" href="#">행동요령</a></li>
                <li><a id="navMenu5" href="http://localhost:8080/ehr/board/doRetrieve.do">커뮤니티</a></li>
            </ul>

            <div class="gnbWrap">
                <ul>
                    <li id="gnbWrap1">
                       
                        <ul>
                            <li><a href="http://localhost:8080/ehr/disasterMsg/disasterMsg">재난 문자</a></li>
                            <li><a href="http://localhost:8080/ehr/chart/dataChartMap.do">전국 통계 그래프</a></li>
                            <li><a href="http://localhost:8080/ehr/chart/dataChart.do">지역 재난 그래프</a></li>
                        </ul>
                    </li>

                    <li id="gnbWrap2">
                       
                        <ul>
                            <li><a href="http://localhost:8080/ehr/news">안전뉴스</a></li>
                        </ul>
                    </li>
                    
                    
                   

                    <li id="gnbWrap3">
                        
                        <ul>
                           
                            <li><a href="http://localhost:8080/ehr/video/videoView.do">훈련영상</a></li>
                            <li><a href="http://localhost:8080/ehr/location/location/1">대피시설</a></li>
                        </ul>
                    </li>
                    
                    <li id="gnbWrap4">
                        
                        <ul>
                            <li><a href="http://localhost:8080/ehr/nature/natureMain.do">자연재난행동요령</a></li>
                            <li><a href="http://localhost:8080/ehr/society/societyMain.do">사회재난행동요령</a></li>
                            <li><a href="http://localhost:8080/ehr/living/livingMain.do">생활안전행동요령</a></li>
                            <li><a href="http://localhost:8080/ehr/emergencyPre/emergencyPreMain.do">비상대비행동요령</a></li>
                        </ul>
                    </li>
                    <li id="gnbWrap5">
                       
                        <ul>
                            <li><a href="http://localhost:8080/ehr/board/doRetrieve.do">정보공유</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div id="section">
    </div>
    
    <script>
    
    let memberFromSession=null;

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
            console.log("memberFromSession:",memberFromSession);

            if (data.locCode!=0) {
                document.getElementById('loginBtn').textContent = '로그아웃';
            } else{
                document.getElementById('loginBtn').textContent = '로그인/회원가입';
            }
        })
        .catch(error => {
            console.error('Fetch error: ', error);
        });
    }

    document.addEventListener('DOMContentLoaded', getSession);
    

    
    
    function logout() {
        fetch('http://localhost:8080/ehr/member/logout.do', {
            method: 'GET',
            credentials: 'include' // 쿠키 포함
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok ' + response.statusText);
            }
            return response.json(); // JSON 형식으로 응답을 파싱
        })
        .then(data => {
            console.log(data);
            memberFromSession = data;
            if (data.locCode=0) {
                // 로그아웃 성공 시
                document.getElementById('loginBtn').textContent = '로그인/회원가입';
            }
        })
        .catch(error => {
            console.error('Fetch error: ', error);
        });
    }
    
    document.getElementById('loginBtn').addEventListener('click', () => {
        const buttonText = document.getElementById('loginBtn').textContent;
        
        if (buttonText === '로그인/회원가입') {
            // 로그인 페이지로 이동
            window.location.href = '/signInUp.jsp';
        } else if (buttonText === '로그아웃') {
            logout(); // 로그아웃 호출
        }
    });
    
    
    
    
    
    
    
    function createHoverEffect(gnbWrapId, navMenuId) {
        const navMenu = document.getElementById(navMenuId);

        const afterElement = document.createElement("div");
        afterElement.style.position = "absolute";
        afterElement.style.top = "100%";
        afterElement.style.left = "0";
        afterElement.style.width = "100%";
        afterElement.style.height = "1px";
        afterElement.style.background = "#508c9b";
        afterElement.style.content = "''";
        afterElement.style.opacity = "0";
        afterElement.style.transition = "height 0.3s, opacity 0.3s, transform 0.3s";
        afterElement.style.transform = "translateY(-10px)";

        navMenu.style.position = "relative";
        navMenu.appendChild(afterElement);

        document.getElementById(gnbWrapId).addEventListener("mouseover", function() {
            afterElement.style.height = "5px";
            afterElement.style.opacity = "0.8";
            afterElement.style.transform = "translateY(0px)";
        });

        document.getElementById(gnbWrapId).addEventListener("mouseout", function() {
            afterElement.style.height = "1px";
            afterElement.style.opacity = "0";
            afterElement.style.transform = "translateY(-10px)";
        });
    }

    createHoverEffect("gnbWrap1", "navMenu1");
    createHoverEffect("gnbWrap2", "navMenu2");
    createHoverEffect("gnbWrap3", "navMenu3");
    createHoverEffect("gnbWrap4", "navMenu4");
    createHoverEffect("gnbWrap5", "navMenu5");
      
    </script>
</body>
</html>
