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
<link rel="shortcut icon" href="/ehr/resources/img/favicon.ico" type="image/x-icon">

<%-- bootstrap css --%>
<link rel="stylesheet" href="/ehr/resources/css/bootstrap.css">

<%-- jquery --%>
<script src="/ehr/resources/js/jquery_3_7_1.js"></script>

<%-- common js --%>
<script src="/ehr/resources/js/common.js"></script> 

<%-- google Nanum+Gothic --%>
<link rel="stylesheet"  href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap">

<%-- FontAwesome for icons --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">


<%-- simplemde --%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
<script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>

<title>오늘 사람 프로그램</title>
<script>
document.addEventListener("DOMContentLoaded", function(){
    console.log("DOMContentLoaded");
     
     
    const doSaveBtn = document.querySelector("#doSave");
    const moveToListBtn = document.querySelector("#moveToList");
    const titleInput = document.querySelector("#title");
    const regIdInput = document.querySelector("#regId");
    const contentsTextArea = document.querySelector("#contents");
    const divInput = document.querySelector("#div");    
    //Event감지
    moveToListBtn.addEventListener("click", function(event){
    	console.log("moveToListBtn click");
    	moveToList();
    });
    
    function moveToList(){
    	const frm = document.querySelector("#regForm");
    	frm.action = "/ehr/board/moveToList.do";
    	frm.submit();
    }
    
    doSaveBtn.addEventListener("click", function(event){
        console.log("doSaveBtn click");     
        doSave();
    });
    
    function doSave(){
        console.log("doSave()");
        
        if(isEmpty(titleInput.value) == true){
            alert('제목을 입력 하세요.')
            titleInput.focus();
            return;
            
        }
        
        if(isEmpty(regIdInput.value) == true){
            alert('등록자 아이디를 입력 하세요.')
            regIdInput.focus();
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
        let async = "true";
        let dataType = "html";
        
        //markdown getter : simplemde.value()
        let params = { 
            "title": titleInput.value,
            "regId": regIdInput.value,  
            "contents": simplemde.value(),
            "div": divInput.value
        }
        
        PClass.pAjax(url,params,dataType,type,async,function(data){
            
            if(data){
                try{
                    const message = JSON.parse(data);
                    if(isEmpty(message) === false && 1 === message.messagId){
                        alert(message.messageContents);
                        window.location.href ="/ehr/board/doRetrieve.do?div="+divInput.value;
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
<!-- container -->
<div class="container">
  
  <!-- 제목 -->
  <div class="page-header">
      <h2>
        <c:choose>
            <c:when test="${ '10'==board.getDiv() }">공지사항-등록</c:when>
            <c:when test="${ '20'==board.getDiv() }">자유게시판-등록</c:when>
            <c:otherwise>
                                 공지사항/자유게시판
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
    <div class="row mb-2">
        <label for="title" class="col-sm-2 col-form-label">제목</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="title" id="title"  maxlength="75" required="required">
        </div>      
    </div>
    <div class="row mb-2">
        <label for="regId" class="col-sm-2 col-form-label">등록자</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="regId" id="regId"  maxlength="20" required="required">        
        </div>      
    </div>    
    <div class="row mb-2"">
        <label for="regId" class="col-sm-2 col-form-label">내용</label>
        <div class="col-sm-10">    
         <textarea style="height: 200px"  class="form-control" id="contents" name="contents"></textarea>
        </div> 
    </div>    
    
  </form>
  
  <!--// form end -->
</div>
<!--// container end ---------------------------------------------------------->
<script>
    var simplemde = new SimpleMDE({ element: document.getElementById("contents") })
</script>
<%-- bootstrap js --%>
<script src="${CP}/resources/js/bootstrap.bundle.js"></script> 
</body>
</html>