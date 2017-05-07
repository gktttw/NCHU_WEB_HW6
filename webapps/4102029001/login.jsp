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
		result += "birthday: " + rs.getString("birthday");
		result += "<br />";
		result += "memo: " + rs.getString("memo");
	}else{
		result = "wrong name or password!<br/>return home after 3 seconds! ";
		response.setHeader("Refresh" , "3;url=home.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
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