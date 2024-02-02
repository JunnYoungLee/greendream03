<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> GreenDreamHospital </title>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display= swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
	
	<!-- adminPage.css -->
	<link href="/../../resources/css/Joo/adminPage.css" rel="stylesheet">
	<link href="/../../resources/css/Joo/headers.css" rel="stylesheet">
</head>
<body>

<div class="headers">
<!-- 공통 헤더 -->
<main>
  <div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="#" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none" style="pointer-events:none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap" /></svg>
      </a>

	<div class="title">
		<label class="mainPage">
			<a href="/" class="mainPage" style="text-decoration:none; margin:0 auto;">
				<h1 class="headerTitle">꿈을그린병원</h1>
				<h4 class="headerTitle">Dream Green Hospital</h4>
			</a>
		</label>
	</div>
	
	  <a href="#" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none" style="pointer-events:none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap" /></svg>
      </a>
     </header>
  </div>
</main>
</div>
<div class="sidebars">
<!-- 메뉴 사이드 바 -->
<jsp:include page = "sidebars.jsp" ></jsp:include>
</div>

<div class="main">

<div id="loginBox">
	<jsp:include page = "../Yang/YangLogin.jsp" ></jsp:include>
</div>
	
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<!-- sidebars.js -->
<script src="/../../resources/js/Joo/sidebars.js"></script>

</body>
</html>