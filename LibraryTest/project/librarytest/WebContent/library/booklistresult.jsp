<h3>회원 리스트(<span id = "cntSpan">${count }</span>)</h3><br><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<div class ="container">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" /><!--  -->
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/librarytest/css/styles.css" rel="stylesheet" />
        
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
                <a class="navbar-brand js-scroll-trigger" href="#page-top">도서 대여</a>
                <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
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
        <!-- Masthead-->
         <header class="masthead bg-primary text-white text-center">
			    <h1 class="masthead-heading text-uppercase mb-0">도서 리스트</h1></br>
			    <p class="masthead-subheading font-weight-light mb-0">도서목록과 검색</p>
		</header>
		<h3>도서 목록(<span id = "cntSpan">${bcount }</span>)</h3><br>
		<table class = "table table-striped">
		<thead>
			<tr>
				<th>작가</th>
				<th>제목</th>
				<th>출간일</th>
				
				<c:if test="${login!=null }">
				</c:if>
				</tr>
				</thead>
				<tbody>
					<c:forEach items="${book}" var="book" varStatus="bst">
					<tr>
						<td>${book.writer }</td>
						<td>${book.subject}</td>
						<td>${book.since }</td>
					</tr>
					</c:forEach>
				</tbody>
		</table>

</body>
</div>

