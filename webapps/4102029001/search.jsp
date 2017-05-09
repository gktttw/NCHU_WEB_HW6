<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "db_ini.jsp"%>
<%
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String result = null;
	Statement stmt = null;
	ResultSet rs = null;
	stmt = con.createStatement();

	String query = "SELECT * FROM mytable";
	stmt.executeQuery(query);
	rs = stmt.getResultSet();
	
	if(rs != null){
		result = "login successfully";
		result += "<br />";
		result += "<center><table class='table table-hover'>";
		result += "<tr><th>Userid</th><th>name</th><th>password</th><th>birthday</th><th>memo</th></tr>";
		while (rs.next()){
		
		result += "<tr><td>" + rs.getInt("Userid") + "</td>";
		result += "<td>" + rs.getString("name") + "</td>";
		result += "<td>" + rs.getString("password") + "</td>";
		result += "<td>" + rs.getString("birthday") + "</td>";
		result += "<td>" + rs.getString("memo") + "</td></tr>";
	
	}
	result += "</table></center>";
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
<%=result%>
</div>
</body>
</html>