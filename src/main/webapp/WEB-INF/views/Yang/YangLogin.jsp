<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="/../../resources/css/Yang/YangLogin.css">
<script type="text/javascript" src="/../../resources/js/Yang/Yang.js"></script>
<meta charset="UTF-8">
<title>로그인</title>
</head>

<body style="background-color: #fffafa;">
	<div id="K-Login">
	<span id="loginFont">로그인</span>
	<table style="margin-bottom: 7%;">
		<tr>
			<td><span class="log">아이디 : </span></td>
			<td><input type="text" id="Id" name="id"></td>
			<td rowspan="2"><input type="button" value="로그인" id="Login"></td>
		</tr>
		<tr>
			<td><span class="log">비밀번호 : </span></td>
			<td><input type="password" id="Pw" name="password"></td>
		</tr>
		<tr>
			<td colspan=3 style="padding-top: 4%; padding-RIGHT: 15PX; font-size: 20px"><a href="member">회원가입</a></td>
		</tr>
	</table>
	</div>
</body>
</html>