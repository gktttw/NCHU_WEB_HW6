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
	if (rs != null){
		session.setAttribute("login","ok");
	}
	String login = (String) session.getAttribute("login");
	if (login == "ok"){
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
	stmt.close();
	rs.close();
	con.close();
	}else{
		response.sendRedirect("home.jsp");
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
<form action="search.jsp" method="POST">
<input type="hidden" value="x" name="x">
	<SELECT name="month" size=1>
		<OPTION value = 1 >1</OPTION>
		<OPTION value = 2 >2</OPTION>
		<OPTION value = 3 >3</OPTION>
		<OPTION value = 4 >4</OPTION>
		<OPTION value = 5 >5</OPTION>
		<OPTION value = 6 >6</OPTION>
		<OPTION value = 7 >7</OPTION>
		<OPTION value = 8 >8</OPTION>
		<OPTION value = 9 >9</OPTION>
		<OPTION value = 10 >10</OPTION>
		<OPTION value = 11 >11</OPTION>
		<OPTION value = 12 >12</OPTION>
	</SELECT><input type="submit" value="搜尋月分">
</form>
<form method="link" action="logout.jsp">
    <input type="submit" value="Logout"/>
</form>
</div>
</body>
</html>