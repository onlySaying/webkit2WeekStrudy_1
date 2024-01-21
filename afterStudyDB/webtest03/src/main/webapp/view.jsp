<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "webtest02.DBConnection"%>

<script src = "./datadelete.js"></script>
<script src = "./dataUpdate.js"></script>

<%
	Connection conn = DBConnection.getConnection();
	Statement stmt = null;
	ResultSet rs = null;
	
	String sql = "select * from member";
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	
	String name = "";
	int age = -1;
	String addr = "";
	int code = 0;
	while(rs.next())
	{
		code = rs.getInt("code");
		name = rs.getString("name");
		age = rs.getInt("age");
		addr = rs.getString("address");

%>

	<table border = "1" width = "400px">
	<tr>
		<td>이름</td><td><%=name %></td>
	
		<td>나이</td><td><%=age %></td>
	
		<td>주소</td><td><%=addr %></td>
	</tr>	
	</table>
	<form name = "frmUpdate">
		<input type = "hidden" name = "pageType" value = "update"/>
		<input type = button value = "update"
		onclick = "javascript:dataUpdate(this.form,<%=code%>)"/>
	</form>
	<form name = "frmdelete">
		<input type = "hidden" name = "pageType" value = "delete"/>
		<input type = button value = "delete"
		onclick = "javascript:dataRemove(this.form,<%=code%>)"/>
	</form>
	
	
<%
	}
%>
<a href="./index.jsp">주 화면으로 가기</a>