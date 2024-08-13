<%-- 
    Class Name: list.jsp
    Description: Updated JSP with new table structure
    Author: acorn
    Modification information
    
    수정일         수정자      수정내용
    -----   -----  -------------------------------------------
    2024. 7. 18        최초작성 
    
    
    author eclass 개발팀
    since 2020.11.23
    Copyright (C) by KandJang All right reserved.
--%>
<%@page import="com.pcwk.ehr.cmn.StringUtil"%>
<%@page import="com.pcwk.ehr.cmn.Search"%>
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

<title>재난 게시판</title>
<script>
   document.addEventListener("DOMContentLoaded", function(){
       console.log("DOMContentLoaded");
       
       const doRetrieveBtn = document.querySelector("#doRetrieve");
       const moveToRegBtn = document.querySelector("#moveToReg");
       const searchWordInput = document.querySelector("#searchWord");
       const searchDivSelect = document.querySelector("#searchDiv");
       const pageSizeSelect = document.querySelector("#pageSize");
       
       moveToRegBtn.addEventListener("click",function(event){
           console.log("moveToRegBtn click");
           moveToReg();
       });
       
       searchDivSelect.addEventListener("change", function(event){
    	   if("" === searchDivSelect.value){
    		   searchWordInput.value = "";
    		   pageSizeSelect.value = 10;
    	   }   
      
    	   
       });
       
       
       searchWordInput.addEventListener("keydown",function(event){
           console.log("searchWordInput keydown");
           if(event.key === 'Enter' && event.keyCode === 13){
               event.stopPropagation();
               doRetrieve(1);
           }
       });
       
       doRetrieveBtn.addEventListener("click",function(event){
           console.log("doRetrieveBtn click");
           event.stopPropagation();
           doRetrieve(1);
       });
   });
   
   function doSelectOne(boardNo){
       console.log("doSelectOne boardNo:"+boardNo);
       const frm      = document.querySelector("#boardForm");
       window.location.href = "/ehr/board/doSelectOne.do?boardNo="+boardNo;
   }
   
   function moveToReg(){
       const frm = document.querySelector("#boardForm");
       frm.action = "/ehr/board/moveToReg.do";
       frm.submit();
   }
   
   function pageRetrieve(url, pageNo){
       console.log("pageRetrieve()");
       const frm = document.querySelector("#boardForm");
       let searchDiv = frm.searchDiv.value;
       let searchWord = frm.searchWord.value;
       let pageSize = frm.pageSize.value;
       frm.pageNo.value = pageNo;
       console.log("searchDiv:"+searchDiv);
       console.log("searchWord:"+searchWord);
       console.log("pageSize:"+pageSize);
       console.log("pageNo:"+pageNo);
       console.log("url:"+url);
       
       frm.action = url;
       frm.submit();       
   }
   
   function doRetrieve(pageNo){
       console.log("doRetrieve()");
       const frm = document.querySelector("#boardForm");
       let searchDiv = frm.searchDiv.value;
       let searchWord = frm.searchWord.value;
       let pageSize = frm.pageSize.value;
       frm.pageNo.value = pageNo;
       let div = frm.div.value;
       console.log("searchDiv:"+searchDiv);
       console.log("searchWord:"+searchWord);
       console.log("pageSize:"+pageSize);
       console.log("pageNo:"+pageNo);
       console.log("div:"+div);
       
       frm.action = "/ehr/board/doRetrieve.do";
       frm.submit();
   }
</script>
</head>
<body>
<!-- container -->
<div class="container">
  <!-- 제목 -->
  <div class="page-header mb-4">
    <h2>게시판 목록</h2>
  </div>
  <!--// 제목 end ------------------------------------------------------------->
  
  <!-- 버튼 -->
  <div class="mb-2 d-grid gap-2 d-md-flex justify-content-md-end">
      <input type="button" value="조회" id="doRetrieve" class="btn btn-primary">
      <input type="button" value="등록" id="moveToReg"  class="btn btn-primary">
  </div>
  <!--// 버튼 ----------------------------------------------------------------->
  
  <!-- 검색 -->
    <form action="#" name="boardForm" class="row g-2 align-items-center" id="boardForm">
        <input type="hidden" name="pageNo" id="pageNo" value="${search.pageNo}">
        <div class="col-sm-3"></div>
        <div class="col-sm-2 text-end g-2">
            <label for="searchDiv" class="form-label ">구분</label>
        </div>
        <div class="col-sm-2">
            <select name="searchDiv" class="form-select" id="searchDiv">
                <option value="">전체</option>
                <c:forEach var="item" items="${BOARD_SEARCH }">
                   <option value="${item.detCode}"  <c:if test="${item.detCode == search.searchDiv }">selected</c:if>    >${ item.detNm}</option>
                </c:forEach>
            </select>  
        </div>
        <div class="col-sm-4">
            <input type="search" name="searchWord" class="form-control" id="searchWord"
             value="${search.searchWord }"
             placeholder="검색어">
        </div>
        <div class="col-sm-1">
            <select name="pageSize" id="pageSize" class="form-select">
                <c:forEach var="item" items="${COM_PAGE_SIZE }">
                   <option value="${item.detCode}"   <c:if test="${item.detCode == search.pageSize }">selected</c:if> >${ item.detNm}</option>
                </c:forEach>            
            </select>
        </div> 
    </form>
  <!--// 검색 end ------------------------------------------------------------->
  
  <!-- table -->
    <table class="table table-striped table-hover table-bordered" id="boardTable">
      <thead>
        <tr class="table-success">
          <th class="text-center col-sm-1">No</th>
          <th class="text-center col-sm-5">제목</th>
          <th class="text-center col-sm-2">등록자</th>
          <th class="text-center col-sm-2">등록일</th>
          <th class="text-center col-sm-1">조회수</th>
          <th class="text-center col-sm-1 d-none">BOARD_NO</th>
        </tr>
      </thead>  
      <tbody>
          <c:choose>
            <c:when test="${list.size() > 0 }">
              <c:forEach var="vo" items="${list }">
                  <tr>
                    <td class="text-center" ><c:out value="${vo.no }"></c:out></td>
                    <td class="text-left">
                      <a href="/ehr/board/doSelectOne.do?boardNo=${vo.boardNo }"><c:out value="${vo.title }"></c:out></a>
                    </td>
                    <td class="text-center"><c:out value="${vo.regId }"></c:out></td>
                    <td class="text-center"><c:out value="${vo.regDt }"></c:out></td>
                    <td class="text-end"><c:out value="${vo.readCnt }"></c:out></td>
                    <td class="text-center d-none"><c:out value="${vo.boardNo }"></c:out></td>
                  </tr>
              </c:forEach>            
            </c:when>
            <c:otherwise>
                <tr><td class="text-center" colspan="99">No data found!</td></tr>
            </c:otherwise>
          </c:choose>
      </tbody>
     </table> 
  <!--// table end ------------------------------------------------------------->
  
  <!-- pagination -->
  <div class="text-center">
     <div id="page-selection" class="text-center page">    
      <c:if test="${totalCnt > 0 }"> 
            <c:if test="${totalCnt > 0 && totalCnt < search.pageSize }">
            Showing <strong><c:out value="${totalCnt }" /></strong> of <strong><c:out value="${totalCnt }" /></strong> entries
            </c:if>
            
            <c:if test="${totalCnt > search.pageSize }">
            Showing <strong><c:out value="${firstCnt }" /></strong> to <strong><c:out value="${lastCnt }" /></strong> of <strong><c:out value="${totalCnt }" /></strong> entries
            </c:if>
          <ul class="pagination justify-content-center">
             <c:forEach var="item" items="${PAGE_DATA }">
                 <li class="page-item <c:if test='${item.active }'>active</c:if>'">
                     <a href="javascript:pageRetrieve('/ehr/board/doRetrieve.do', ${item.pageNo })" class="page-link">${item.pageNo }</a>
                 </li>
             </c:forEach>
          </ul>
       </c:if>      
     </div>     
  </div>
  <!--// pagination end ------------------------------------------------------------->
  <div class="text-center">
     <div id="page-selection" class="text-center page">    
      <%
         //총글수 : 
         int totalCnt   = (Integer)request.getAttribute("totalCnt");
         
         Search  search = (Search)request.getAttribute("search");
         
         //페이지 번호 
         int pageNo     = search.getPageNo();
         
         //페이지 사이즈 
         int pageSize   = search.getPageSize();
         
         //바닥글
         int bottomCount = search.BOTTOM_COUNT;
         
         String url        = "/ehr/board/doRetrieve.do";
         String scriptName = "pageRetrieve";    
         
         //out.print(StringUtil.renderingPaging(totalCnt, pageNo, pageSize, bottomCount, url, scriptName));
      %>    
      <%=StringUtil.renderingPaging(totalCnt, pageNo, pageSize, bottomCount, url, scriptName)  %>  
     </div>
  </div>
  <!--// pagenation -->
    
</div>
<!--// container end ------------------------------------------------------------->
</body>
</html>
