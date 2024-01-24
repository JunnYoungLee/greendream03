<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="/resources/css/Yang/YangLogin.css">
<link href="/resources/js/Yang/YangJs.js">

<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<form action="K-login" method="POST">
	<div id="K-Login">
		<span>아이디 : <input type="text" id="Name" name="name" ></span>
		<span>비밀번호 : <input type="password" id="Pw" name="password" ></span>
		<div>
			<input type="submit" value="로그인" id="Login">
		</div>
	</div>
</form>	
</body>
</html>