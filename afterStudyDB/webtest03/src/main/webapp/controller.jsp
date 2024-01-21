<%@page import="javax.script.ScriptContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "webtest02.DBConnection" %>

<%
	Connection conn = DBConnection.getConnection();
	PreparedStatement pstmt = null;

	String pageType = request.getParameter("pageType");
	
	int code = 0;
	String name = "";
	int age = -1;
	String address = "";
	String sql ="";
	if(pageType.equals("insert"))
	{
		sql = "insert into member values(0, ?, ?, ?, now())";
		pageType = request.getParameter("pageType");
		name = request.getParameter("names");
		age = Integer.parseInt(request.getParameter("age"));
		address = request.getParameter("address");
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setInt(2, age);
		pstmt.setString(3, address);
		
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
%>
<script>
	alert("성공적으로 등록되었습니다!");
	location.href = "./view.jsp";
</script>
<%
	}
	else if (pageType.equals("delete"))
	{
		code = Integer.parseInt(request.getParameter("code"));
		System.out.println("code="+code);
		sql = "delete from member where code = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, code);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
%>
<script>
	alert("데이터가 성공적으로 삭제되었습니다.")
	location.href = "./view.jsp"
</script>
<%
	}
	else if(pageType.equals("update"))
	{
		code = Integer.parseInt(request.getParameter("code"));
		
		sql = "update member set name = ?, age = ?, address = ? where code = ?";
		name = request.getParameter("names");
		age = Integer.parseInt(request.getParameter("age"));
		address = request.getParameter("address");
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setInt(2, age);
		pstmt.setString(3, address);
		pstmt.setInt(4,code);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();

%>
	<script>
		alert("데이터가 성공적으로 업데이트 되었습니다.")
		location.href = "./view.jsp"
	</script>

<%
		
	}
		
%>