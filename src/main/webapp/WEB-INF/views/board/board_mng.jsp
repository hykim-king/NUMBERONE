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
<title>재난 커뮤니티</title>
<script>
document.addEventListener("DOMContentLoaded", function(){
    console.log("DOMContentLoaded");
    
    const moveToListBtn = document.querySelector("#moveToList");
    const doUpdateBtn = document.querySelector("#doUpdate");
    const doDeleteBtn = document.querySelector("#doDelete");
    const boardNoInput = document.querySelector("#boardNo");
    const titleInput = document.querySelector("#title");
    const contentsTextArea = document.querySelector("#contents");
    const doSaveReplyBtn = document.querySelector("#doSaveReply");
    const replyContentsInput = document.querySelector("#replyContents");
    
    console.log("doDeleteBtn", doDeleteBtn);

    moveToListBtn.addEventListener("click", function(event){
        console.log("moveToListBtn click", event);
        event.stopPropagation();
        if(confirm('목록으로 이동 하시겠습니까?') === false) return;
        moveToList();
    });
    
    doUpdateBtn.addEventListener("click", function(event){
        console.log("doUpdateBtn click", event);
        event.stopPropagation();
        doUpdate();
    });
    
    doDeleteBtn.addEventListener("click", function(event){
        console.log("doDeleteBtn click", event);
        event.stopPropagation();
        doDelete(); 
    });
    
    doSaveReplyBtn.addEventListener("click", function(event){
        console.log("doSaveReplyBtn click", event);
        event.stopPropagation();
        doSaveReply();
    });

    loadReplies();
});

function doUpdate(){
    console.log("doUpdate()");
    const boardNoInput = document.querySelector("#boardNo");
    const titleInput = document.querySelector("#title");
    const contentsTextArea = document.querySelector("#contents");

    if(isEmpty(boardNoInput.value)){
        alert('boardNo를 확인 하세요.')
        return;
    }           
    
    if(isEmpty(titleInput.value)){
        alert('제목을 입력 하세요.')
        titleInput.focus();
        return;
    }

    if(isEmpty(simplemde.value())){
        alert('내용을 입력 하세요.')
        contentsTextArea.focus();
        return;
    } 
    
    if(confirm('수정 하시겠습니까?') === false) return;
    
    let type = "POST";  
    let url = "/ehr/board/doUpdate.do";
    let async = "true";
    let dataType = "html";
    
    let params = {  
        "boardNo": boardNoInput.value,
        "title": titleInput.value,
        "contents": simplemde.value()      
    }
    
    PClass.pAjax(url, params, dataType, type, async, function(data){
        if(data){
            try{
                const message = JSON.parse(data);
                if(!isEmpty(message) && 1 === message.msgId){
                    alert(message.msgContents);
                    moveToList();
                }else{
                    alert(message.msgContents);
                }
            }catch(e){
                 alert("data를 확인 하세요.");     
            }
        }
    });           
}

function moveToList(){
    window.location.href = "/ehr/board/doRetrieve.do";
}

function doDelete(){
    console.log("doDelete()");
    const boardNoInput = document.querySelector("#boardNo");

    if(isEmpty(boardNoInput.value)){
        alert('boardNo를 확인 하세요.')
        return;
    }
    if(confirm('삭제 하시겠습니까?') === false) return;
    
    let type = "GET";  
    let url = "/ehr/board/doDelete.do";
    let async = "true";
    let dataType = "html";
    
    let params = { 
        "boardNo": boardNoInput.value
    }            
    
    PClass.pAjax(url, params, dataType, type, async, function(data){
        if(data){
            try{
                const message = JSON.parse(data);
                if(!isEmpty(message) && 1 === message.msgId){
                    alert(message.msgContents);
                    moveToList();
                }else{
                    alert(message.msgContents);
                }
            }catch(e){
                 alert("data를 확인 하세요.");     
            }
        }
    });            
}

function doSaveReply(){
    console.log("doSaveReply()");
    const replyContentsInput = document.querySelector("#replyContents");
    const boardNoInput = document.querySelector("#boardNo");

    if(isEmpty(replyContentsInput.value)){
        alert('댓글 내용을 입력하세요.')
        replyContentsInput.focus();
        return;
    }
    
    if(confirm('댓글을 작성하시겠습니까?') === false) return;
    
    let type = "POST";
    let url = "/ehr/reply/doSave.do";
    let async = "true";
    let dataType = "html";
    
    let params = {
        "boardNo": boardNoInput.value,
        "replyContents": replyContentsInput.value
    }
    
    PClass.pAjax(url, params, dataType, type, async, function(data){
        if(data){
            try{
                const message = JSON.parse(data);
                if(!isEmpty(message) && 1 === message.msgId){
                    alert(message.msgContents);
                    replyContentsInput.value = '';
                    loadReplies();
                } else {
                    alert(message.msgContents);
                }
            } catch(e) {
                alert("데이터를 확인하세요.");
            }
        }
    });
}

function doDeleteReply(replyNo){
    console.log("doDeleteReply()");
    if(isEmpty(replyNo)){
        alert('댓글 번호를 확인하세요.')
        return;
    }
    if(confirm('댓글을 삭제하시겠습니까?') === false) return;
    
    let type = "GET";
    let url = "/ehr/reply/doDelete.do";
    let async = "true";
    let dataType = "html";
    
    let params = { 
        "replyNo": replyNo
    }
    
    PClass.pAjax(url, params, dataType, type, async, function(data){
        if(data){
            try{
                const message = JSON.parse(data);
                if(!isEmpty(message) && 1 === message.msgId){
                    alert(message.msgContents);
                    loadReplies();
                } else {
                    alert(message.msgContents);
                }
            } catch(e) {
                alert("데이터를 확인하세요.");
            }
        }
    });
}

function loadReplies(){
    console.log("loadReplies()");
    const boardNoInput = document.querySelector("#boardNo");
    
    let type = "GET";
    let url = "/ehr/reply/doRetrieve.do";
    let async = "true";
    let dataType = "html";
    
    let params = { 
        "boardNo": boardNoInput.value
    }
    
    PClass.pAjax(url, params, dataType, type, async, function(data){
        if(data){
            try{
                const replies = JSON.parse(data);
                let replyHtml = '';
                replies.forEach(function(reply){
                    replyHtml += '<div class="reply">';
                    replyHtml += '<p><strong>' + reply.regId + '</strong>: ' + reply.replyContents + '</p>';
                    replyHtml += '<p><small>' + reply.regDt + '</small></p>';
                    replyHtml += '<button onclick="doDeleteReply(' + reply.replyNo + ')">삭제</button>';
                    replyHtml += '</div>';
                });
                document.querySelector("#replyList").innerHTML = replyHtml;
            } catch(e) {
                console.error("댓글 로딩 실패:", e);
            }
        }
    });
}
</script>
</head>
<body>
<!-- container -->
<div class="container">
  
  <!-- 제목 -->
  <div class="page-header">
      <h2>공지사항/자유게시판</h2>  
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
    <div class="row mb-2">
        <label for="contents" class="col-sm-2 col-form-label">내용</label>
        <div class="col-sm-10">    
         <textarea style="height: 200px"  class="form-control" id="contents" name="contents"><c:out value='${board.contents }'/></textarea>
        </div> 
    </div>    
  </form>
  <!--// form end -->
  
  <!-- 댓글 섹션 -->
  <div class="mt-5">
    <h3>댓글</h3>
    
    <!-- 댓글 입력 폼 -->
    <form id="replyForm" class="mb-4">
        <div class="form-group">
            <textarea class="form-control" id="replyContents" rows="3" placeholder="댓글을 입력하세요"></textarea>
        </div>
        <button type="button" id="doSaveReply" class="btn btn-primary mt-2">댓글 작성</button>
    </form>

    <!-- 댓글 목록 -->
    <div id="replyList">
        <!-- 댓글이 여기에 동적으로 로드됩니다 -->
    </div>
  </div>
  <!-- 댓글 섹션 끝 -->
  
</div>
<!--// container end ---------------------------------------------------------->
<script>
    var simplemde = new SimpleMDE({ element: document.getElementById("contents") })
</script>
<%-- bootstrap js --%>
<script src="${CP}/resources/js/bootstrap.bundle.js"></script>
</body>
</html>