<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<style>

#container{
    width: 600px;
    margin: 0 auto;
   
}
navi ul li{
	padding: 10px;
}

ul{
    list-style:  none;
}

ul li{
    clear: both;
    
}

.field{
    float: left;
    width:  100px;
    font-size:  0.9em;
    font-weight: bold;
    line-height: 55px;
    text-align: right;
    margin-right: 15px;
}

input[type ="text"],input[type="email"],input[type="password"]{
    float: left;
    width: 350px;
    height: 35px;
    border: 1px solid #aaa;
    border-radius: 5px;
    padding: 5px;
    margin: 10px 0;
}

.r{
    line-height: 55px;
}

#buttons>li{
    display: inline-block;
}
button{
    width: 250px;
    height: 50px;
    margin-right: 10px;
    border:  1px solid #ccc;
    background: #eee;
    font-size: 0.9em;
    
}
</style>
<!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" /><!--  -->
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/librarytest/css/styles.css" rel="stylesheet" />
       

   
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
        </nav>
        <!-- Masthead-->
        <header class="masthead bg-primary text-white text-center">
            <div class="container d-flex align-items-center flex-column">
               
                <!-- Masthead Heading-->
                <h1 class="masthead-heading text-uppercase mb-0">도서목록 </h1>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Masthead Subheading-->
                <p class="masthead-subheading font-weight-light mb-0">회원님 반갑습니다. 도서를 검색하고 목록을 볼수있습니다.</p>
            </div>
        </header>
</head>
<body>

</body>
</html>