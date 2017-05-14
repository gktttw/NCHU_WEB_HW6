<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "db_ini.jsp"%>
<%	
	Statement stmt = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	String result = null;

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String birthday = request.getParameter("birthday");
	String memo = request.getParameter("memo");
		
	stmt = con.createStatement();
	String test = "select * from mytable where name='"+name+"';";
	rs = stmt.executeQuery(test);
	
	if(rs.first()){
		result ="name already exsists! <br />return home after 3 seconds! ";
		response.setHeader("Refresh" , "3;url=home.jsp");
	}else{
		String sql = "insert into mytable (name, password, birthday, memo) values (?, ?, ?, ?)";
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, password);
		pstmt.setString(3, birthday);
		pstmt.setString(4, memo);
		pstmt.executeUpdate();
		result = "register successfully! <br />return home after 3 seconds! ";
		response.setHeader("Refresh" , "3;url=home.jsp");
		
	}
	stmt.close();
	rs.close();
	pstmt.close();
	con.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
<div>
<h1><%=result%></h1>
</div>
</body>
</html>