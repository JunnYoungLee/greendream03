<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Hugo 0.84.0">
	<title>Sidebars · Bootstrap v5.0</title>
	    
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

	<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sidebars/">

<!-- sidebars.css -->
<link href="/../../resources/css/Joo/sidebars.css" rel="stylesheet">

</head>
  
<body>

<main>

  <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
      <svg class="bi me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      <span class="fs-5 fw-semibold">Staff Only</span>
    </a>
    
    <ul class="list-unstyled ps-0">
    
      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
          	재고관리
        </button>
        <div class="collapse" id="home-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="management" class="link-dark rounded">&emsp;&emsp;재고 조회</a></li>
            <li><a href="order" class="link-dark rounded">&emsp;&emsp;구매 목록</a></li>
          </ul>
        </div>
      </li>

      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
          	발주관리
        </button>
        <div class="collapse" id="dashboard-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark rounded">&emsp;&emsp;발주 목록</a></li>
            <li><a href="#" class="link-dark rounded">&emsp;&emsp;발주 확인</a></li>
          </ul>
        </div>
      </li>
      
      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
          	입고관리
        </button>
        <div class="collapse" id="orders-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark rounded">&emsp;&emsp;입고 일정</a></li>
            <li><a href="#" class="link-dark rounded">&emsp;&emsp;입고 확인</a></li>
          </ul>
        </div>
      </li>
      
     <li class="border-top my-3"></li>
     
     </ul>
  </div>
  
</main>

<!-- sidebars.js -->
<script src="/../../resources/js/Joo/sidebars.js"></script>

</body>
</html>