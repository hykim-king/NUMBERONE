<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재난안전포털 No.1</title>
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon01.ico">
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
    .disaster-status {
        position: absolute;
        top: 20px;
        left: 20px;
        width: 430px;
        height: 140px;
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
        left: 485px;
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
        
        
		        <div class="disaster-status">
		            <div id="disaster-img01">그림</div>
		            <div id="disaster-img02">그림</div>
		            <div id="disaster-img03">그림</div>
		        </div>
		        
		        
		        <div class="emergency-info">
		            <div>
		                <a><img src="/ehr/resources/img/info_image01.png" alt="info_banner01"></a>
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
			            <p>재난 문자 내용</p>
			        </div>
		        </div>
		        
		        
		        <div>
			        <div class="graphText">
			             <p>발생 건수 그래프</p>
			        </div>
			            
		  
			        <div class="graph">
			            <p>로그인 시 확인 가능합니다. </p> 
			            <br>
			            <a href="login.jsp"><img src="/ehr/resources/img/loginIcon.png"></a>
			        </div>
		        </div>
		        
        </div>  <!-- divWrap end -->
        
    </section>

    <%@ include file="footer.jsp" %>

</body>
</html>
