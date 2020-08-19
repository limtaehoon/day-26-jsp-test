<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file ="../include/managerheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

        <div id="container">
        <h1 align="center">도서 추가</h1>
        <form name = "frm" method = "post" action = "bookinsert.do">
        <ul id="user-info">
            <li>
                <label for="writer" class="field">작가</label>
                <input type="text" id="writer" name="writer">
            </li>
            <li>
                <label for="subject" class="field">제목</label>
                <input type="text" id="subject" name="subject">
            </li>

            <li>
                <label for="since" class="field">출간 일</label>
                <input type="text" name="since" id="since">
            </li>
        </ul>
        <ul id="buttons">
            <li>
                <button type="submit" id="send"  class="btn btnBlack">추가하기</button>
            	<button type="reset" class="btn btnGray">취소</button>
            </li>
        </ul>
    </form>
    </div>
    
    


</body>
</html>
</head>
<body>

</body>
</html>