<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "db_ini.jsp"%>
<%
	String name = request.getParameter("name");
	String result = null;
	Statement stmt = null;
	ResultSet rs = null;
	stmt = con.createStatement();
	
	String query = "SELECT * FROM mytable WHERE name='" + name + "'";
	rs=stmt.executeQuery(query);
	
	if (!rs.next()){
		out.print("OK");
	}
	if (rs.first()){
		out.print("Already exist");
	}
	stmt.close();
	rs.close();
	con.close();
%>