<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/main/header.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>훈련 영상</title>
    <link rel="stylesheet" href="/ehr/resources/css/content.css" />
    <link rel="stylesheet" href="/ehr/resources/css/dp_sub.min.css" />
    
    <style>
        * {
            font-family: "Hahmlet", serif;
            font-optical-sizing: auto;
        }

        main {
            background-color: #FAFAFA;
            width: 1082px;
            border: 2px solid #EEEEEE;
            margin: 20px auto;
            padding: 20px;
            border-radius: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        td {
            padding: 15px;
            text-align: left;
            border: 1px solid #ddd;
        }

        td a {
            text-decoration: none;
            color: #134b70;
            font-weight: bold;
        }
        td:hover{
            cursor: pointer;
    
         }
        td:hover a {
            text-decoration: underline;
            
        }

        .level1_title {
            color: #134b70;
        }
    </style>
        <script>
        document.addEventListener('DOMContentLoaded', function() {
            var cells = document.querySelectorAll('td');

            cells.forEach(function(cell) {
                cell.addEventListener('click', function() {
                    var link = cell.querySelector('a');
                    if (link) {
                        window.location.href = link.href;
                    }
                });
            });
        });
    </script>
</head>
<body>
    <main>
        <div class="level1_titleWrap">
            <h2 class="level1_title">훈련 영상</h2>
            
        </div>
        <p style="margin-top:15px; color:#757575; font-size:16px;">* 아래의 재난을 클릭하시면 훈련영상을 보실 수 있습니다.</p>
        <table>
            <tbody>
                <tr>
                    <td><a href="http://localhost:8080/ehr/video/video01.do"><span>침수</span></a></td>
                    <td><a href="http://localhost:8080/ehr/video/video02.do">태풍</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video03.do">호우</a></td>
                </tr>
                <tr>
                    <td><a href="http://localhost:8080/ehr/video/video04.do">낙뢰</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video05.do">폭염</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video06.do">대설</a></td>
                </tr>
                <tr>
                    <td><a href="http://localhost:8080/ehr/video/video07.do">한파</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video08.do">지진</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video09.do">산사태</a></td>
                </tr>
                <tr>
                    <td><a href="http://localhost:8080/ehr/video/video10.do">황사</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video11.do">테러</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video12.do">핵</a></td>
                </tr>
                <tr>
                    <td><a href="http://localhost:8080/ehr/video/video13.do">화학</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video14.do">생물학</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video15.do">화재</a></td>
                </tr>
                <tr>
                    <td><a href="http://localhost:8080/ehr/video/video16.do">폭발사고</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video17.do">원전사고</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video18.do">감염병</a></td>
                </tr>
            </tbody>
        </table>
    </main>
    <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>
