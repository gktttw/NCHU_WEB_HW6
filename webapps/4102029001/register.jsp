<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>註冊</title>
<style>
.invalid {
    border: 2px solid red;
}
.valid {
    border: 2px solid green;
}
</style>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
$('#name').blur(function() {
var nameVal = $('#name').val();
if($('#name').val().length == 0) {
alert("no")
}
$.post("validate.jsp",
{name:nameVal},
function(response){
if (response.trim()=="OK"){
	$('#name').addClass('valid');
	$('#error').html("可以用")
}else{
	$('#name').addClass('invalid');
	$('#error').html("不可以用")
}
});
});
$('#name').focus(function() {
$('#name').removeClass();
$('#error').html("");
});
});
</script>
</head>
<body>
<div>
	<form action="insert.jsp" method="POST">
		<br/>
		<h1>註冊</h1><br/><br/>
		User name:<input type="text" name="name" id="name"/><p id="error" style="display: inline;"></p><br/><br/>
		password:<input type="password" name="password"/><br/><br/>
		birthday:<input type="date" name="birthday"/><br/><br/>
		memo:<input type="text" name="memo"/><br/><br/>
		
		<input type="submit" value="提交" />
	</form>
</div>
</body>
</html>