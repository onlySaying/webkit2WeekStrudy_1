<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "webtest02.DBConnection"%>

<%
	Connection conn = DBConnection.getConnection();
	if(conn != null)
	{
		System.out.println("DB와 연결되었습니다.");
	}
	else{
		System.out.println("연결실패");
	}

%>
<title>Insert title here</title>
</head>
<body>
	웹 페이지
	<br>
	<a href= "./insert.jsp"> 등록하기 </a>
	<br>
	<a href= "./view.jsp"> 목록보기 </a>
</body>
</html>