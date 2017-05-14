<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>註冊</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
<div>
	<form action="insert.jsp" method="POST">
		<br/>
		<h1>註冊</h1><br/><br/>
		User name:<input type="text" name="name"/><br/><br/>
		password:<input type="password" name="password"/><br/><br/>
		birthday:<input type="date" name="birthday"/><br/><br/>
		memo:<input type="text" name="memo"/><br/><br/>
		
		<input type="submit" value="提交" />
	</form>
</div>
</body>
</html>