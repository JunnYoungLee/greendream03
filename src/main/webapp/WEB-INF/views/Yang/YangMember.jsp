<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="/../../resources/css/Yang/YangLogin.css">
<link href="/../../resources/js/Yang/Yang.js">
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form action="K-member" method="POST">
	<div id="K-01" class="K-MemberContainer">
		<div id="K-id" class="K-SectionContainer01">
			<label for="Id">아이디 : </label>
			<input type="text" id="Id" name="Id"  placeholder="아이디를 입력해주세요">
		</div>
		
		<div id="K-pw" class="K-SectionContainer02">
			<label for="Pw">비밀번호 : </label>
			<input type="password" id="Pw" name="password" placeholder="최대12자까지 특수문자포함한 값을 입력해주세요">

		</div>
		
		<div id="K-name" class="K-SectionContainer03">
			<label for="Name">이름 : </label>
			<input type="text" id="Name" name="name"  placeholder="영문이름으로 입력해주세요">
		</div>
		
		<div id="K-department" class="K-SectionContainer04">
			<label for="Dept">부서 : </label>
			<select id="Dept" name="dept">
				 <option value="select" disabled selected>선택해주세요</option>
	  				 <option>정형외과</option>
	  				 <option>내과</option>
	  				 <option>재무과</option>
			</select>
		</div>
				
		<div id="K-birth" class="K-SectionContainer05">
			<label for="Brh">생년월일 :</label>
			<input type="text" id="brh" name="brh">
		</div>
		
		<div id="K-email" class="K-SectionContainer06">
			<label for="Email">이메일 :</label>
			<input type="email" id="email" name="email">
		</div>
		
		<div id="K-phone" class="K-SectionContainer07">
			<label id="Pn">휴대폰 번호 :</label>
			<input type="tel" id="Pn" name="pn">
		</div>
		
		<input type="submit" value="완료">
	</div>
</form>
</body>
</html>