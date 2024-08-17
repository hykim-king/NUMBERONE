<%--
/**
	Class Name: 
	Description:
	Author: user
	Modification information
	
	수정일     수정자      수정내용
    -----   -----  -------------------------------------------
    2024. 8. 17        최초작성 
    
    NUMBERONE TEAM
    since 2024-07-18
    Copyright (C) by KandJang All right reserved.
*/


--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<title>상세 게시판</title>

<script>
document.addEventListener("DOMContentLoaded", function(){
    console.log("DOMContentLoaded");

    
    const moveToListBtn = document.querySelector("#moveToList");
    const boardNoInput = document.querySelector("#boardNo");
    const titleInput = document.querySelector("#title");
    const nickNameInput = document.querySelector("#nickName");
    const contentsTextArea = document.querySelector("#contents");
    const divInput = document.querySelector("#div");   
    //const replyInput = document.querySelector("#reply");
    
    moveToListBtn.addEventListener("click", function(event){
        window.history.back();
        
    });
    
    function doSelectOne(){
    	console.log("doSelectOne boardNo:"+ boardNo);
    	const frm = document.querySelector("#boardForm");
    	
    }
    
    
});
</script>


</head>
<body>
<!-- container -->



<!--// container end ---------------------------------------------------------->
<script>
    var simplemde = new SimpleMDE({ element: document.getElementById("contents")} )
</script>
<%-- bootstrap js --%>
<script src="${CP}/resources/js/bootstrap.bundle.js"></script>
</body>
</html>