<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "db_ini.jsp"%>
<%
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String result = null;
	Statement stmt = null;
	ResultSet rs = null;
	stmt = con.createStatement();

	String query = "SELECT * FROM mytable WHERE name='" + name + "' AND password='" + password + "';";
	stmt.executeQuery(query);
	rs = stmt.getResultSet();
	if (rs.first()){
		result = "login successfully";
		result += "<br />";
		result += "<center><table class='table table-hover'>";
		result += "<tr><td>birthday</td><td>" + rs.getString("birthday") + "</td></tr>";

		result += "<tr><td>memo</td><td>" + rs.getString("memo") + "</td></tr></table></center>";
	}else{
		result = "wrong name or password!<br/>return home after 3 seconds! ";
		response.setHeader("Refresh" , "3;url=home.jsp");
	}
	rs.close();
	stmt.close();
	con.close();
%>
<!DOCTYPE html>
<html>
<head>

    <!-- 最新編譯和最佳化的 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<!-- 選擇性佈景主題 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<!-- 最新編譯和最佳化的 JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
<div>
<h1><%=result%></h1>
</div>
</body>
</html>