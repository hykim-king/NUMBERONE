<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
<title>훈련영상</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">
<link href="/ehr/resources/css/behavior.css" rel="stylesheet" />
<script>
    function navigateToCategory() {
        var selectBox = document.getElementById("categorySelect");
        var selectedValue = selectBox.options[selectBox.selectedIndex].value;
        if (selectedValue) {
            window.location.href = selectedValue;
        }
    }
    
    window.onload = function() {
        var currentURL = window.location.pathname;
        console.log("Current URL:", currentURL);
        var selectBox = document.getElementById("categorySelect");
        for (var i = 0; i < selectBox.options.length; i++) {
            var optionValue = selectBox.options[i].value;
            console.log("Checking option:", optionValue);
            if (optionValue && currentURL.endsWith(optionValue.split("/").pop())) {
                selectBox.selectedIndex = i;
                console.log("Selected index:", i);
                break;
            }
        }
    }
    
    function changeVideo(videoSrc, videoTitle) {
        var iframe = document.getElementById('mainVideo');
        if (iframe) {
            iframe.src = videoSrc;
            var titleElement = document.getElementById('videoTitle');
            if (titleElement) {
                titleElement.textContent = videoTitle;
            }
        }
    }
</script>
<style>
    main {
        width: 100%;
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
    }

    .header-container {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        margin-bottom: 20px;
    }

    .video-container {
        width: 100%;
        display: flex;
        justify-content: space-between;
    }

    .main-video {
        width: 70%;
    }

    .related-videos {
        width: 25%;
    }

    h1 {
        color: #201e4b;
        margin-bottom: 10px;
    }

    h2 {
        color: #134b70;
        font-size: 1.2em;
        margin-bottom: 15px;    
    }

    select {
        width: 200px;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 4px;
        font-size: 16px;
    }

    iframe {
        width: 100%;
        height: 450px;
    }

    .related-video {
        margin-bottom: 15px;
        display: flex;
        align-items: center;
    }

    .related-video img {
        width: 80%;
        height: auto;
        cursor: pointer;
        margin-right: 10px;
    }

    .related-video p {
        margin: 0;
        font-size: 12px;
    }
</style>
</head>
<body>
  <%@ include file="/WEB-INF/views/main/header.jsp" %> 

<main>
    <h1>훈련영상</h1>
    <div class="video-container">
        <div class="main-video">
            <!-- 드롭다운 메뉴 추가 -->
            <select id="categorySelect" onchange="navigateToCategory()">
                <option value="">카테고리 선택</option>
                <option value="http://localhost:8080/ehr/video/video01.do">침수</option>
                <option value="http://localhost:8080/ehr/video/video02.do">태풍</option>
                <option value="http://localhost:8080/ehr/video/video03.do">호우</option>
                <option value="http://localhost:8080/ehr/video/video04.do">낙뢰</option>
                <option value="http://localhost:8080/ehr/video/video05.do">폭염</option>
                <option value="http://localhost:8080/ehr/video/video06.do">대설</option>
                <option value="http://localhost:8080/ehr/video/video07.do">한파</option>
                <option value="http://localhost:8080/ehr/video/video08.do">지진</option>
                <option value="http://localhost:8080/ehr/video/video09.do">산사태</option>
                <option value="http://localhost:8080/ehr/video/video10.do">황사</option>
                <option value="http://localhost:8080/ehr/video/video11.do">테러</option>
                <option value="http://localhost:8080/ehr/video/video12.do">핵</option>
                <option value="http://localhost:8080/ehr/video/video13.do">화학</option>
                <option value="http://localhost:8080/ehr/video/video14.do">생물학</option>
                <option value="http://localhost:8080/ehr/video/video15.do">화재</option>
                <option value="http://localhost:8080/ehr/video/video16.do">폭발사고</option>
                <option value="http://localhost:8080/ehr/video/video17.do">원전사고</option>
                <option value="http://localhost:8080/ehr/video/video18.do">감염병</option>
            </select>    
            <iframe 
                id="mainVideo"
                src="https://www.youtube.com/embed/8VMErCHu_RE?si=R_Qu36FzqDlClcat" 
                title="YouTube video player" frameborder="0" 
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                referrerpolicy="strict-origin-when-cross-origin" 
                allowfullscreen>
            </iframe>
        </div>
        <div class="related-videos">
            <h2>관련 영상</h2>
            <div class="related-video" onclick="changeVideo('https://www.youtube.com/embed/XtwfBT4uFzs?si=kvkkdlTsPIhN5FFn')">
                 <img src="/ehr/resources/thumbnail/heatwave2_thumbnail.png" alt="폭염2">
            </div>
            <div class="related-video" onclick="changeVideo('https://www.youtube.com/embed/Urk2du23pPc?si=So11d9evb5DCyWwz')">
                 <img src="/ehr/resources/thumbnail/heatwave3_thumbnail.png" alt="폭염3">
            </div>
            <div class="related-video" onclick="changeVideo('https://www.youtube.com/embed/__LHKld0gRw?si=PzC5uRGS6b--yoPo')">
                 <img src="/ehr/resources/thumbnail/heatwave4_thumbnail.png" alt="폭염4">
            </div>
            <div class="related-video" onclick="changeVideo('https://www.youtube.com/embed/0gu2fw06qdY?si=Ko2FyDS3UEnZd8p8')">
                 <img src="/ehr/resources/thumbnail/heatwave5_thumbnail.png" alt="폭염5">
            </div>
            
        </div>
    </div>
</main>

   <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>