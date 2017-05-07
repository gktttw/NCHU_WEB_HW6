<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "db_ini.jsp"%>
<%
	String name = request.getParameter("name");
	Statement stmt = null;
	ResultSet rs = null;
	
	stmt = con.createStatement();
	String test = "select * from mytable where name='"+name+"';";
	rs = stmt.executeQuery(test);
	
	// if(rs.first()){
		// %> dasf<%
	// }else{
		// %>asdf<%
	// }
	our.print(name);
%>