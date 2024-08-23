<%--
/**
	Class Name: board_reg.jsp
	Description: 부트스트랩 template
	Author: acorn
	Modification information
	
	수정일                    수정자      수정내용
    -----        -----  -------------------------------------------
    2024. 7. 18         최초작성 
    
    
    author eclass 개발팀
    since 2020.11.23
    Copyright (C) by KandJang All right reserved.
*/
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var="CP"  value="${pageContext.request.contextPath}"  /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- favicon  --%>
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">

<%-- bootstrap css --%>
<link rel="stylesheet" href="${CP}/resources/css/bootstrap.css">

<%-- jquery --%>
<script src="${CP}/resources/js/jquery_3_7_1.js"></script>

<%-- common js --%>
<script src="${CP}/resources/js/common.js"></script> 

<%-- google Nanum+Gothic --%>
<link rel="stylesheet"  href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap">

<%-- FontAwesome for icons --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">


<%-- simplemde --%>
<link rel="stylesheet" href="${CP}/resources/css/simplemde.min.css">
<script src="${CP}/resources/js/simplemde.min.js"></script>

<title>재난 커뮤니티</title>
<style>
    body {
            font-family: "Hahmlet", serif;
            font-optical-sizing: auto;
            font-style: normal;
    }
    .container {

        border-radius: 8px;
        padding: 20px;
        width : 900px;
        margin-top:30px;
       
    }
    .page-header {
        font-size: 2rem;
        font-weight: bold;
        color: #333;
        border-bottom: 2px solid #508c9b;
        padding-bottom: 5px;
        margin-bottom: 10px;
    }
    .btn-primary {
        background-color: #134b70;
        border-color: #134b70;
    }
    .btn-primary:hover {
        background-color: #508c9b;
        border-color: #508c9b;
    }
    .form-control {
        border-radius: 4px;
        box-shadow: none;
    }
    .readonly-input {
        background-color: #e9ecef;
    }
    .form-group {
        margin-bottom: 1rem;
    }
    .reply {
        border-bottom: 1px solid #dee2e6;
        padding: 10px 0;
    }
    .reply button {
        border: none;
        background: none;
        color: #dc3545;
        cursor: pointer;
    }
    .reply button:hover {
        text-decoration: underline;
    }
    .reply p {
        margin: 0;
    }
    .reply p small {
        color: #6c757d;
    }
    .btn-primary.mt-2 {
        background-color: #007bff;
        border-color: #007bff;
    }
    .btn-primary.mt-2:hover {
        background-color: #0056b3;
        border-color: #004085;
    }
</style>
<script>
document.addEventListener("DOMContentLoaded", function(){
	console.log("DOMContentLoaded");
	 
	 
	const doSaveBtn = document.querySelector("#doSave");
	const moveToListBtn = document.querySelector("#moveToList");
	const titleInput = document.querySelector("#title");
	const nicknameInput = document.querySelector("#nickname");
	const contentsTextArea = document.querySelector("#contents");
	const divInput = document.querySelector("#div");
	//Event감지
	doSaveBtn.addEventListener("click", function(event){
	    console.log("doSaveBtn click");	
	    doSave();
	});
	
	moveToListBtn.addEventListener("click", function(event){
        console.log("moveToListBtn click", event);
        event.stopPropagation();
        if(confirm('목록으로 이동 하시겠습니까?') === false) return;
        moveToList();
    });
	
	
	function moveToList(){
        window.location.href = "/ehr/board/doRetrieve.do";
    }
	
	function doSave(){
		console.log("doSave()");
		
		if(isEmpty(titleInput.value) == true){
			alert('아이디를 입력 하세요.')
			titleInput.focus();
			return;
			
		}
		
        if(isEmpty(nicknameInput.value) == true){
            alert('닉네임을 입력 하세요.')
            nicknameInput.focus();
            return;
            
        }
        //markdown getter : simplemde.value()
        if(isEmpty(simplemde.value()) == true){
            alert('내용을 입력 하세요.')
            contentsTextArea.focus();
            return;
            
        }  
        
        console.log("simplemde",simplemde.value());
        if(confirm('등록 하시겠습니까?') === false)return;
        
        //비동기 통신
        let type= "POST";  
        let url = "/ehr/board/doSave.do";
        let async = "false";
        let dataType = "html";
        
        //markdown getter : simplemde.value()
        let params = { 
        	"title": titleInput.value,
        	"nickname": nicknameInput.value,	
        	"contents": simplemde.value(),
        	"div": divInput.value
        }
        
        PClass.pAjax(url,params,dataType,type,async,function(data){
        	
        	if(data){
        		try{
        			const message = JSON.parse(data);
        			if(message !== null && 1 === message.messageId){
        				alert(message.messageContents);
        				moveToList();
        			}else{
        				alert(message.messageContents);
        				
        			}
        			
        			
        		}catch(e){
        			 alert("data를 확인 하세요.");     
        		}
        		
        	}
        	
        });
        
        
	}
	
});
</script>
</head>
<body>
<%@ include file="/WEB-INF/views/main/header.jsp" %>
<!-- container -->
<div class="container">
  
  <!-- 제목 -->
  <div class="page-header">
      <h2>
        <c:choose>
            <c:when test="${ '10'==board.getDiv() }">공지사항-등록</c:when>
            <c:when test="${ '20'==board.getDiv() }">자유게시판-등록</c:when>
            <c:otherwise>
                                 재난 커뮤니티
            </c:otherwise>
        </c:choose>
      </h2>  
  </div>
  <!--// 제목 end ------------------------------------------------------------->
  
  <!-- 버튼 -->
  <div class="mb-2 d-grid gap-2 d-md-flex justify-content-md-end">
      <input type="button" value="목록" id="moveToList" class="btn btn-primary">
      <input type="button" value="등록"  id="doSave" class="btn btn-primary">
  </div>
  <!--// 버튼 ----------------------------------------------------------------->
  
  <!-- form -->  
  <form action="#" class="form-horizontal"  name="regForm" id="regForm">
    <input type="hidden" name="div"    id="div" value="${board.getDiv() }">
    <input type="hidden" name="regId" id="regId" value="${board.getRegId() }">
    <div class="row mb-2">   
        <label for="title" class="col-sm-2 col-form-label">제목</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="title" id="title"  maxlength="75" required="required">
        </div>      
    </div>
    <div class="row mb-2">
        <label for="nickname" class="col-sm-2 col-form-label">등록자</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="nickname" id="nickname" value="${sessionScope.member.nickname}" readonly>          
        </div>      
    </div>    
    <div class="row mb-2"">
        <label for="nickname" class="col-sm-2 col-form-label">내용</label>
        <div class="col-sm-10">    
         <textarea style="height: 200px"  class="form-control" id="contents" name="contents"></textarea>
        </div> 
    </div>  
    
  </form>  
  
  <!--// form end -->
</div>
<!--// container end ---------------------------------------------------------->
<%@ include file="/WEB-INF/views/main/footer.jsp" %>
<script>
    var simplemde = new SimpleMDE({ element: document.getElementById("contents") })
</script>
<%-- bootstrap js --%>
<script src="${CP}/resources/js/bootstrap.bundle.js"></script> 
</body>
</html>