<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sidebars · Bootstrap v5.0</title>
    
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	
<!-- sidebars.css -->
<!-- 	<link href="../../resources/css/Joo/sidebars.css" rel="stylesheet"> -->
	<style type="text/css">
	body {
	  min-height: 100vh;
	  min-height: -webkit-fill-available;
	}
	
	html {
	  height: -webkit-fill-available;
	}
	
	main {
	  display: flex;
	  flex-wrap: nowrap;
	  height: 100vh;
	  height: -webkit-fill-available;
	  max-height: 100vh;
	  overflow-x: auto;
	  overflow-y: hidden;
	}
	
	.b-example-divider {
	  flex-shrink: 0;
	  width: 1rem;
	  height: 100vh;
	  background-color: rgba(0, 0, 0, .1);
	  border: solid rgba(0, 0, 0, .15);
	  border-width: 1px 0;
	  box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
	}
	
	.bi {
	  vertical-align: -.125em;
	  pointer-events: none;
	  fill: currentColor;
	}
	
	.dropdown-toggle { outline: 0; }
	
	.nav-flush .nav-link {
	  border-radius: 0;
	}
	
	.btn-toggle {
	  display: inline-flex;
	  align-items: center;
	  padding: .25rem .5rem;
	  font-weight: 600;
	  color: rgba(0, 0, 0, .65);
	  background-color: transparent;
	  border: 0;
	}
	.btn-toggle:hover,
	.btn-toggle:focus {
	  color: rgba(0, 0, 0, .85);
	  background-color: #d2f4ea;
	}
	
	.btn-toggle::before {
	  width: 1.25em;
	  line-height: 0;
	  content: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='rgba%280,0,0,.5%29' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M5 14l6-6-6-6'/%3e%3c/svg%3e");
	  transition: transform .35s ease;
	  transform-origin: .5em 50%;
	}
	
	.btn-toggle[aria-expanded="true"] {
	  color: rgba(0, 0, 0, .85);
	}
	.btn-toggle[aria-expanded="true"]::before {
	  transform: rotate(90deg);
	}
	
	.btn-toggle-nav a {
	  display: inline-flex;
	  padding: .1875rem .5rem;
	  margin-top: .125rem;
	  margin-left: 1.25rem;
	  text-decoration: none;
	}
	.btn-toggle-nav a:hover,
	.btn-toggle-nav a:focus {
	  background-color: #d2f4ea;
	}
	
	.scrollarea {
	  overflow-y: auto;
	}
	
	.fw-semibold { font-weight: 600; }
	.lh-tight { line-height: 1.25; }

	</style>
	
	</head>
  
<body>

<main>

  <div class="b-example-divider"></div>

  <div class="flex-shrink-0 p-3 bg-white" style="width: 200px;">
    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
      <svg class="bi me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      <span class="fs-5 fw-semibold">Collapsible</span>
    </a>
    <ul class="list-unstyled ps-0">
      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
          Home
        </button>
        <div class="collapse show" id="home-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark rounded">Overview</a></li>
            <li><a href="#" class="link-dark rounded">Updates</a></li>
            <li><a href="#" class="link-dark rounded">Reports</a></li>
          </ul>
        </div>
      </li>
      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
          Dashboard
        </button>
        <div class="collapse" id="dashboard-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark rounded">Overview</a></li>
            <li><a href="#" class="link-dark rounded">Weekly</a></li>
            <li><a href="#" class="link-dark rounded">Monthly</a></li>
            <li><a href="#" class="link-dark rounded">Annually</a></li>
          </ul>
        </div>
      </li>
      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
          Orders
        </button>
        <div class="collapse" id="orders-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark rounded">New</a></li>
            <li><a href="#" class="link-dark rounded">Processed</a></li>
            <li><a href="#" class="link-dark rounded">Shipped</a></li>
            <li><a href="#" class="link-dark rounded">Returned</a></li>
          </ul>
        </div>
      </li>
      <li class="border-top my-3"></li>
      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
          Account
        </button>
        <div class="collapse" id="account-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark rounded">New...</a></li>
            <li><a href="#" class="link-dark rounded">Profile</a></li>
            <li><a href="#" class="link-dark rounded">Settings</a></li>
            <li><a href="#" class="link-dark rounded">Sign out</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>

 <div class="b-example-divider"></div>
  
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<!-- <script src="../../resources/js/Joo/sidebars.js"></script> -->

<!-- sidebars.js -->
<script type="text/javascript">
	/* global bootstrap: false */
	
	(function () {
	  'use strict'
	  var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
	  tooltipTriggerList.forEach(function (tooltipTriggerEl) {
	    new bootstrap.Tooltip(tooltipTriggerEl)
	  })
	})()
</script>

</body>
</html>