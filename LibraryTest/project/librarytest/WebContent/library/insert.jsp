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
        <h1 align="center">회원 가입</h1>
        <form name = "frm" method = "post" action = "insert.do">
        <ul id="user-info">
            <li>
                <label for="name" class="field">이름</label>
                <input type="text" id="userid" name="name">
            </li>
            <li>
                <label for="userid" class="field">아이디</label>
                <input type="text" id="userid" name="userid" placeholder="4자리에서 15자리의 영문과 숫자 혼용" required onchange="checkId()">
            </li>
            <li>
                <label for="pwd1" class="field">비밀번호</label>
                <input type="password" id="password" name="password" placeholder="8자리 이상" required onchange="checkPw()">
            </li>
            <li>
                <label for="pwd2" class="field">비밀번호 확인</label>
                <input type="password" name="pwd2" id="pwd2"  required onchange="ComparePw()">
            </li>
            <li>
                <label for="tell" class="field">전화번호</label>
                <input type="text" name="tell" id="tell" placeholder="-빼고 입력하세요">
            </li>
         
            <li>
                <label for="addr" class="field">주소</label>
                <input type="text" name="addr" id="addr" placeholder="" required onchange="ComparePw()">
            </li>
            <li>
                <div class="form-check-inline">
					<label class="form-check-label">
						<input type="radio" class="form-check-input" name="admin" value="0">관리자
					</label>
				</div>
				<div class="form-check-inline">
					<label class="form-check-label">
						<input type="radio" class="form-check-input" name="admin" value="1">일반회원
				  </label>
				</div>
					<script>
						if(${member.admin==0}){ //일반회원
							  $("input:radio[value='0']").prop("checked",true);
						  }else{ //관리자
							  $("input:radio[value='1']").prop("checked",true);
						  }
					</script>
			</li>
          
            
        </ul>
        <ul id="buttons">
            <li>
                <button type="submit" id="send"  class="btn btnBlack">가입하기</button>
            	<button type="reset" class="btn btnGray">취소</button>
            </li>
        </ul>
    </form>
    </div>
    
    <script src="js/Insert.js"></script>


</body>
</html>