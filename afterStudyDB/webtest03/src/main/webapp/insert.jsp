<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = "./checkform.js"></script>
</head>
<body>
	등록화면 입니다.
	
	<form name = "regist">
	<input type = "hidden" name ="pageType" value = "insert"/>
	<table>
		<tr><td> <input type = "text" name ="names" /> </td></tr>
		<tr><td> <input type = "text" name ="age" /> </td></tr>
		<tr><td> <input type = "text" name ="address" /> </td></tr>
		<tr><td> <input type = "button" value = "regist" onclick = "javascript:chkfrm(this.form);" /> </td></tr>
	</table>
	</form>
	<a href="./index.jsp">주 화면으로 가기</a>
</body>
</html>