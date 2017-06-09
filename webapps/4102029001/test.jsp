<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String login = (String) session.getAttribute("login");
if (login == "ok"){
	out.print("fuck");
}else{
	response.setHeader("Refresh" , "3;url=home.jsp");
}
%>