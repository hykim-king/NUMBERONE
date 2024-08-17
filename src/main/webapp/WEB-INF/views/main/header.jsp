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
        background-color: #F5F5F5;
    }

    #logo {
        width: 150px;
        height: auto;
        margin: auto;
        display: block;
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
        color:#201e43;
        font-size: 13px;
        text-decoration: none;
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
        padding: 14px 30px;
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
      display: none;
        position: absolute;
        top: 100%;
        left: 0;
        right: 0;
        box-shadow: 0 8px 8px rgba(0, 0, 0, 0.1);
        z-index: 100;
        background-color: #F5F5F5;
        
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
        color: #134b70;
        text-decoration: none;
        display: block;
        font-size: 14.5px;
        text-align: center;
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
        
    }

    .gnbWrap ul ul li a:hover {
        text-decoration: underline;
    }

    li a:hover:not(.active) {
        background-color: #ddd;
    }

    li a.active {
        color: white;
        background-color: #04AA6D;
    }

    #gnbWrap1:hover {
        background-color: #eeeeee;
    }
    #gnbWrap1:hover #navMenu1{
        background-color: #eeeeee;
    }
    #gnbWrap2:hover {
        background-color: #eeeeee;
    }

    #gnbWrap3:hover {
        background-color: #eeeeee;
    }

    #gnbWrap4:hover {
        background-color: #eeeeee;
        
    }
    #gnbWrap5:hover {
        background-color: #eeeeee;
    }
</style>


<meta charset="UTF-8">
<title>header</title>
</head>
<body>
    <div id="headerMenu">
        <ul>
            <li><a href="http://localhost:8080/ehr/member/signInUp.do" id ="loginBtn">로그인 / 회원가입</a></li>
        </ul>
    </div>
    <div>
        <a href="http://localhost:8080/ehr/main/index.do"><img src="/ehr/resources/img/logo1.png" alt="logo" id="logo"></a>
    </div>

    <div id="nav">
        <div id="navWrap">
            <ul>
                <li><a id="navMenu1" href="#">재난상황</a></li>
                <li><a id="navMenu2" href="#">재난뉴스</a></li>
                
                <li><a id="navMenu3" href="#">재난대비</a></li>
                <li><a id="navMenu4" href="#">행동요령</a></li>
                <li><a id="navMenu5" href="http://localhost:8080/ehr/board/doRetrieve.do">커뮤니티</a></li>
            </ul>

            <div class="gnbWrap">
                <ul>
                    <li id="gnbWrap1">
                       
                        <ul>
                            <li><a href="#">재난 문자</a></li>
                            <li><a href="http://localhost:8080/ehr/chart/dataChartMap.do">전국 통계 그래프</a></li>
                            <li><a href="#">지역 재난 그래프</a></li>
                        </ul>
                    </li>

                    <li id="gnbWrap2">
                       
                        <ul>
                            <li><a href="#">재난뉴스</a></li>
                        </ul>
                    </li>
                    
                    
                   

                    <li id="gnbWrap3">
                        
                        <ul>
                           
                            <li><a href="#">훈련영상</a></li>
                            <li><a href="#">안전시설</a></li>
                        </ul>
                    </li>
                    
                    <li id="gnbWrap4">
                        
                        <ul>
                            <li><a href="http://localhost:8080/ehr/nature/natureMain.do#">자연재난행동요령</a></li>
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
