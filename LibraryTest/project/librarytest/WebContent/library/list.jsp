<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
$(document).ready(function(){
	getData(1,"","");
	
	$("#btnSearch").on("click",function(){//검색버튼 클릭
		
		getData(1,$("#field").val(),$("#word").val());
	})
	
})//document
function getData(pageNum, field, word){
	$.get("list",
		  {"field":field, "word":word}, 
		  function(d){
			  
			 $("#result").html(d);
	})
}
</script>

   
  
      

		<div id="result"></div>
		<br>
		<br>
		<div align="center">
		<form name="search" id="search">
			<select name ="field" id="field">
				<option value="name">이름</option>
				<option value="userid">id</option>
			</select>
			<input type="text" name="word" id="word">
			<input type="button" value="찾기" id="btnSearch">
		
		</form>
		
		</div>
		
</body>
</div>

</html>


