<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="/../../resources/css/Yang/YangLogin.css">

<meta charset="UTF-8">
<title>로그인</title>
</head>

<body>
	<div id="K-Login">
		<span>아이디 : <input type="text" id="Id" name="id" ></span>
		<span>비밀번호 : <input type="password" id="Pw" name="password" ></span>
		<div>
			<input type="button" value="로그인" id="Login">
		</div>
	</div>
</body>

<script type="text/javascript" src="/../../resources/js/Yang/Yang.js"></script>

</html>