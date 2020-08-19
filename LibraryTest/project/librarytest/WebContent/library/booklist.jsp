<%@ page import ="com.librarytest.model.LibraryDTOImpl" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 	<script>
$(document).ready(function(){
	getData(1,"","");
	
	$("#btnbSearch").on("click",function(){//검색버튼 클릭
		
		getData(1,$("#bfield").val(),$("#bword").val());
	})
	
})//document
function getData(pageNum, field, word){
	$.get("booklist",
		  {"bfield":field, "bword":word}, 
		  function(d){
			  
			 $("#bresult").html(d);
	})
}
</script>

<!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" /><!--  -->
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/librarytest/css/styles.css" rel="stylesheet" />
       
<title>Insert title here</title>
</head>
   
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                
                
                    
                
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        
                        
                        <li class="nav-item mx-0 mx-lg-1">
                        	<a href="home.jsp" class="nav-link py-3 px-0 px-lg-3 rounded ">
                        		로그아웃</a></li>
                        <li class="nav-item mx-0 mx-lg-1">
                        	<a href="booklist.jsp" class="nav-link py-3 px-0 px-lg-3 rounded ">
                        		도서리스트</a></li>
                        
                        
                       </ul>
                </div>
            </div>
  		</div>
        </nav>  
        <div id="bresult"></div>
        <br>
        <br>
        <div align="center">
        <form name="bsearch" id="bsearch">
        	<select nam ="bfield" id="bfield">
        		<option value="writer">작가</option>
        		<option value="subject">제목</option>
        	 </select>
        	 <input type="text" name="bword" id="bword">
        	 <input type="button" value="검색" id="btnbSearch">
        </form>       
                </div>
            </body>
  		</div>
        </nav>
        </div>      
                        
         
        
        