<%--
/**
    Class Name: board_mng.jsp
    Description:
    Author: acorn
    Modification information
    
    수정일         수정자      수정내용
    -----   -----  -------------------------------------------
    2024. 7. 30        최초작성 
    
    
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
<link rel="shortcut icon" href="${CP}/resources/img/favicon.ico" type="image/x-icon">

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
<style>
   .readonly-input {
     background-color: #e9ecef;
   }
</style>
<title>오늘 사람 프로그램</title>
<script>
   //doDelete:삭제
    document.addEventListener("DOMContentLoaded", function(){
        console.log("DOMContentLoaded");
        
        //목록으로 이동: 
        const moveToListBtn = document.querySelector("#moveToList");
        
        //수정버튼:doUpdate
        const doUpdateBtn = document.querySelector("#doUpdate");
        
        //삭제버튼
        const doDeleteBtn = document.querySelector("#doDelete");
        console.log("doDeleteBtn",doDeleteBtn);
        
        //boardNo
        const boardNoInput = document.querySelector("#boardNo");
        
        //제목
        const titleInput = document.querySelector("#title");
        
        //내용
        const contentsTextArea = document.querySelector("#contents");
        
        
        moveToListBtn.addEventListener("click",function(event){
            console.log("moveToListBtn click",event);
            event.stopPropagation();
            if(confirm('목록으로 이동 하시겠습니까?') === false)return;
            
            moveToList();
            
        });
        
        doUpdateBtn.addEventListener("click",function(event){
            console.log("doUpdateBtn click",event);
            event.stopPropagation();
            doUpdate();
        });
        
        doDeleteBtn.addEventListener("click",function(event){
            console.log("doDeleteBtn click",event);
            event.stopPropagation();
            doDelete(); 
        });
        
        function doUpdate(){
            console.log("doUpdate()");
            if(isEmpty(boardNoInput.value) == true){
                alert('boardNo를 확인 하세요.')
                return;
            }           
            
           if(isEmpty(titleInput.value) == true){
                alert('제목을 입력 하세요.')
                titleInput.focus();
                return;
           }
        
            //markdown getter : simplemde.value()
            if(isEmpty(simplemde.value()) == true){
                alert('내용을 입력 하세요.')
                contentsTextArea.focus();
                return;
                
            } 
           
            if(confirm('수정 하시겠습니까?') === false)return;
            
            //비동기 통신
            let type= "POST";  
            let url = "/ehr/board/doUpdate.do";
            let async = "true";
            let dataType = "html";
            
            let params = {  
                "boardNo": boardNoInput.value,
                "title": titleInput.value,
                "contents": simplemde.value()      
            }
            
            PClass.pAjax(url,params,dataType,type,async,function(data){
                
                if(data){
                    try{
                        const message = JSON.parse(data);
                        if(isEmpty(message) === false && 1 === message.messagId){
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
        
        function moveToList(){
            window.location.href ="/ehr/board/doRetrieve.do";
        }
        
        function doDelete(){
            console.log("doDelete()");
            if(isEmpty(boardNoInput.value) == true){
                alert('boardNo를 확인 하세요.')
                return;
            }
            if(confirm('삭제 하시겠습니까?') === false)return;
            
            //비동기 통신
            let type= "GET";  
            let url = "/ehr/board/doDelete.do";
            let async = "true";
            let dataType = "html";
            
            let params = { 
                "boardNo": boardNoInput.value
            }            
            
            PClass.pAjax(url,params,dataType,type,async,function(data){
                
                if(data){
                    try{
                        const message = JSON.parse(data);
                        if(isEmpty(message) === false && 1 === message.messagId){
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
<!-- container -->
<div class="container">
  
  <!-- 제목 -->
  <div class="page-header">
      <h2>
        <c:choose>
            <c:when test="">공지사항-등록</c:when>
            <c:when test="">자유게시판-등록</c:when>
            <c:otherwise>
                공지사항/자유게시판
            </c:otherwise>
        </c:choose>
      </h2>  
  </div>
  <!--// 제목 end ------------------------------------------------------------->

  <!-- 버튼 -->
  <div class="mb-2 d-grid gap-2 d-md-flex justify-content-md-end">
      <input type="button" value="목록"  id="moveToList"    class="btn btn-primary">
      <input type="button" value="수정"  id="doUpdate" class="btn btn-primary">
      <input type="button" value="삭제"  id="doDelete" class="btn btn-primary">
  </div>
  <!--// 버튼 ----------------------------------------------------------------->
  
  <!-- form -->
  <form action="#" class="form-horizontal"  name="regForm" id="regForm">
    <div class="row mb-2">
        <label for="boardNo" class="col-sm-2 col-form-label">boardNo</label>
        <div class="col-sm-10">
          <input type="text"  value="<c:out value='${board.boardNo }'/>" class="form-control readonly-input" readonly="readonly" name="boardNo" id="boardNo"  >        
        </div>      
    </div>  
    <div class="row mb-2">
        <label for="readCnt" class="col-sm-2 col-form-label">조회수</label>
        <div class="col-sm-10">
          <input type="text"  value="<c:out value='${board.readCnt }'/>" class="form-control readonly-input" readonly="readonly" name="readCnt" id="readCnt"  >        
        </div>      
    </div>     
    <div class="row mb-2">
        <label for="regId" class="col-sm-2 col-form-label">등록자</label>
        <div class="col-sm-10">
          <input type="text"  value="<c:out value='${board.regId }'/>" class="form-control readonly-input" readonly="readonly" name="regId" id="regId"  >        
        </div>      
    </div>     
    <div class="row mb-2">
        <label for="title" class="col-sm-2 col-form-label">제목</label>
        <div class="col-sm-10">
          <input type="text" value="<c:out value='${board.title }'/>" class="form-control" name="title" id="title"  maxlength="75" required="required">
        </div>      
    </div>
    <!-- 일반 사용자 -->
    <div class="row mb-2"">
       <label for="contents" class="col-sm-2 col-form-label">내용</label>
       <div class="col-sm-10">${markdownContents}</div>
    </div>
    <!-- 관리자 -->
    <div class="row mb-2"">
        <label for="contents" class="col-sm-2 col-form-label">내용</label>
        <div class="col-sm-10">    
         <textarea style="height: 200px"  class="form-control" id="contents" name="contents"><c:out value='${board.contents }'/></textarea>
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
