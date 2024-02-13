<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 발주서 </title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="/../../resources/js/Joo/headers.js">
	<link href="/../../resources/css/Joo/headers.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display= swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

	<!-- headers.css -->
</head>
<body>
<main>
  <div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="#" class="d-flex align-items-center mb-2 mb-md-0 text-dark text-decoration-none" style="pointer-events:none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap" /></svg>
      </a>

	<div class="title">
		<label class="mainPage">
			<a href="/" class="mainPage" style="text-decoration:none">
				<h1 class="headerTitle">꿈을그린병원</h1>
				<h4 class="headerTitle">Dream Green Hospital</h4>
			</a>
		</label>
	</div>
     <form action="logout">
       	<div id="K_information">
       		<div id="K_information_box01">
       			<div id="K_dept"> 부서 : ${yldto.dept} </div>
       			<div id="K_name"> 이름 : ${yldto.name} </div>
       		</div>
       		<div id="K_information_box02">
       			<input type="submit" id="K_logout" value="로그아웃">
       		</div>
       	</div>
       </form>
     </header>
  </div>
</main>
</body>



</html>
 