<%--
/**
    Class Name:
    Description:
    Author: Jinseo
    Modification information
    
    수정일     수정자      수정내용
    -----   -----  -------------------------------------------
    2024. 8. 13        최초작성 
    
    author eclass NUMBERONE
    since 2020.11.23
    Copyright (C) by KandJang All right reserved.
*/
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
<%-- bootstrap --%>
<link rel="stylesheet" href="${CP}/resources/css/bootstrap.css">
<%-- jquery --%>
<script src="${CP}/resources/js/jquery_3_7_1.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
<%-- common.js --%>
<script src="${CP}/resources/js/common.js"></script>
<%-- kakao Map --%>
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=caeb693362f61c09ef1fc4e0b640aaf4"></script>
<title>Insert title here</title>
<style>
    /* 지도 크기 지정 */
    #map {
        width: 100%;
        height: 700px; /* 원하는 높이로 조정 */
    }
    #header {
       background-color: #0558be;
       height: 48px;
       padding: 0 8px;
    }
    
</style>
</head>
<body>
    
<header data-role="header" id="header">
    <div class="setTypehead">
        <h1 style="color:#fff;text-align: center;letter-spacing: -0.1em;font-size: 20px;line-height: 48px;margin: 0px;">지도</h1>
        <div class="setMapheader" style="text-align: center; position: absolute; top: 3px; right: 5px;"></div>
    </div>
</header>
    <div id="map">
    </div>
    
    <script>
        function openKakaoMap(lat,lon,facilityName) {
        	var mapContainer = document.getElementById('map');
            var mapOption = {
                center: new kakao.maps.LatLng(lat,lon),
                level: 3
            };
            
            // 지도 생성
            var map = new kakao.maps.Map(mapContainer, mapOption);
            
            // 지도 타입 변경 컨트롤
            var mapTypeControl = new kakao.maps.MapTypeControl();
            
            map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
            
            // 지도 확대 축소 컨트롤
            var zoomControl = new kakao.maps.ZoomControl();
            
            map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
            
            // 마커 추가
            var markerPosition = new kakao.maps.LatLng(lat,lon);
            var marker = new kakao.maps.Marker({
                position: markerPosition,
                map : map
            });
            
            marker.setMap(map); // 지도에 마커 추가
            
            var infoWindow = new kakao.maps.InfoWindow({
            	position: new kakao.maps.LatLng(lat,lon),
            	content : '<div style="padding:5px; white-space: normal; width: auto; max-width: 230px;">'+ facilityName +'</div>'
            });
            
            infoWindow.open(map,marker);
            
        } // -- openKakaoMap end

        // JSP에서 전달된 LAT, LON 변수를 사용
        openKakaoMap(${LAT},${LON},"${FacilityName}");

    </script>    
</body>
</html>
