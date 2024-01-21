<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "webtest02.DBConnection"%>



<% 
	Connection conn = DBConnection.getConnection();
	Statement stmt = null;
	ResultSet rs = null;
	int code = Integer.parseInt(request.getParameter("code"));
	String sql = "select * from member where code =" +code ;
	
	String name = "";
	int age = -1;
	String address = "";
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	if(rs.next())
	{
		name = rs.getString("name");
		age = rs.getInt("age");
		address = rs.getString("address");
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./checkform.js"></script>
<script src = "./checkform.js"></script>
</head>
<body>
	수정화면 입니다.
	
	<form name = "regist">
	<input type = "hidden" name ="pageType" value = "update"/>
	<input type = "hidden" name ="code" value = "<%=code%>"/>
	<table>
		<tr><td> <input type = "text" name ="names" value = "<%=name%>" /> </td></tr>
		<tr><td> <input type = "text" name ="age" value = "<%=age%>"/> </td></tr>
		<tr><td> <input type = "text" name ="address" value = "<%=address%>"/> </td></tr>
		<tr><td> <input type = "button" value = "regist" onclick = "javascript:chkfrm(this.form);" /> </td></tr>
	</table>
	</form>
	<a href="./view.jsp">목록 화면으로 가기</a>
</body>
</html>