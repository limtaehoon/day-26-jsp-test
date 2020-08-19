<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

        <div id="container">
        <h1 align="center">로그인</h1>
        <form name = "frm" method = "post" action = "login.do">
        <ul id="user-info">
        
            <li>
                <label for="userid" class="field">아이디</label>
                <input type="text" id="userid" name="userid" required onchange="checkId()">
            </li>
            <li>
                <label for="pwd1" class="field">비밀번호</label>
                <input type="password" id="password" name="password"required onchange="checkPw()">
            </li>
        </ul>
        <ul id="buttons">
            <li>
                <button type="button" class="btn btn-primary" id="loginBtn">로그인</button>
            	<button type="reset" class="btn btn-primary">취소</button>
            </li>
        </ul>
    </form>
    </div>
    <script>
    $("#loginBtn").click(function(){
    	if($("#userid").val()==""){
    		alert(" ID를 입력해주세요.");
    		$("#userid").focus();
    		return false;
    	}
    	if($("#password").val()==""){
    		alert("비밀번호를 입력 해주세요.");
    		$("#password").focus();
    		return false;
    	}
    	$.ajax({
    		type	: "post",
    		url		: "login.do",
    		data	: {"userid" :$("#userid").val(), "password":$("#password").val()},	
    		success	: function(value){
		    			alert(value.trim());
		    			if(value.trim()==1){
		    				alert("로그인 되었습니다. 반갑습니다.");
		    				location.href = "booklist.jsp";
		    			}else if(value.trim()==0){
		    				alert("관리자 로그인");
		    				location.href = "list.jsp";
		    			}else if(value.trim()==-1){
		    				alert("회원이 아닙니다. 회원 가입 창으로 이동합니다.");
		    				location.href = "insert.do";
		    			}else if(value.trim()==2){
		    				alert("비밀번호가 틀립니다 다시 입력해주세요.");
		    				location.href = "login.do";
		    			}
		    		},
    		error	: function(e){
    			alert("error :" +e);
    		}
    	});//ajax
    	
    })
    
    </script>
    
    


</body>
</html>
