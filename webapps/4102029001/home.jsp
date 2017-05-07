<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "db_ini.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登入</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
<div>
	<form action="login.jsp" method="POST">
		<br/>
		<h1>登入</h1><br/><br/>
		User name:<input type="text" name="name"/><br/><br/>
		password:<input type="password" name="password"/><br/><br/>
		<input type="submit" value="登入" /><input type="button" value="註冊新帳號" onclick="window.location='register.jsp';" /> 
	</form>
</div>
</body>
</html>