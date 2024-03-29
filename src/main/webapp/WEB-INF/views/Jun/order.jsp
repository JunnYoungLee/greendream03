<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 구매 요청 목록 </title>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display= swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

	<!-- inventoryPage.css -->
	<link href="/../../resources/css/Joo/orderPage.css" rel="stylesheet">

</head>
<body>

<div class="headers">
<!-- 공통 헤더 -->
<jsp:include page = "../Joo/headers.jsp" ></jsp:include>
</div>

<div class="sidebars">
<!-- 메뉴 사이드 바 -->
<jsp:include page = "../Joo/sidebars.jsp" ></jsp:include>
</div>

<h3> 구매 요청 목록 </h3>

<div class="main">
	<div id="inline">
	
			<div>
			<select id="supSelect" name="supplier">
			   <option value="all" 
			   <c:choose>
				   <c:when test="${sessionScope.supplier eq null}">selected="selected"
				   </c:when>
				   <c:when test="${sessionScope.supplier eq '전체보기'}">selected="selected"
				   </c:when>
				   <c:otherwise>
					
				   </c:otherwise> 
			  </c:choose>
			  >전체보기</option>
			   <option value="gr" <c:if test="${sessionScope.supplier eq '그린제약'}">selected="selected"</c:if>>그린제약</option>
			   <option value="dr" <c:if test="${sessionScope.supplier eq '드림제약'}">selected="selected"</c:if>>드림제약</option>
			   <option value="sj" <c:if test="${sessionScope.supplier eq '세정코리아'}">selected="selected"</c:if>>세정코리아</option>
			   <option value="mi" <c:if test="${sessionScope.supplier eq '미래드림'}">selected="selected"</c:if>>미래드림</option>
			</select>
			</div>
	
	</div>
	
	<div>
		
	
		<table border="1" class="table table-bordered table-sm" id="tableContainer">
			<tbody id="test_tbody">
				<thead>
					<tr>
						<td><p>선택</p></td>
						<td><p>No</p></td>
						<td><p>부서</p></td>
						<td><p>의료용품 코드</p></td>
						<td><p>의료용품 명</p></td>
						<td><p>규격</p></td>
						<td><p>단위</p></td>
						<td><p>공급회사명</p></td>
						<td><p>단가</p></td>
						<td><p>발주수량</p></td>
						<td><p>공급가액</p></td>
						<td><p>부가세</p></td>
						<td><p>총액</p></td>
						<td><p>담당자</p></td>
						<td><p>요청일</p></td>
						<td><p>특이사항</p></td>
						<td><p>진행상태</p></td>
						
					</tr>
				</thead>
				<tbody class="checkbox-part">
				<c:forEach items="${inList}" var="list" varStatus="abc"><input type="hidden" value="${list.rno}" id="hidden" name="hidden">
					<tr>
						<td><input type="checkbox" name="checkList" class="chbox" value="${list.rno}"></td>
						<td>${abc.count}</td>
						<td>${list.dept}</td>
						<td>${list.medical_supply_code}</td>
						<td>${list.medical_supplies_name}</td>
						<td>${list.standard}</td>
						<td>${list.unit}</td>
						<td>${list.supplier}</td>
						<td><fmt:formatNumber value="${list.unit_price}" pattern="#,###" /></td>
						<td>${list.request_quantity}</td>
						<td><fmt:formatNumber value="${list.supply_price}" pattern="#,###" /></td>
						<td><fmt:formatNumber value="${list.surtax}" pattern="#,###" /></td>
						<td><fmt:formatNumber value="${list.total_price}" pattern="#,###" /></td>
						<td>${list.person_in_charge}</td>
						<td>${list.date}</td>
						<td>${list.special_note}</td>
						<td>${list.progress_status}</td>
					</tr>
				</c:forEach>
				</tbody>
			</tbody>
		</table>
	</div>
	<div id="aaa"></div>

	<div class="buttonContainer">
	<button type="button" id="allselect" class="btn btn-outline-dark">전체선택</button>
	<button type="button" id="order" name="order" class="btn btn-outline-dark">발주</button>
	<button type="button" id="delete" class="btn btn-outline-dark">삭제</button>
	</div>
	<div id="result"></div>

</div>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/../../resources/js/Jun/oder.js"></script>
</body>

</html>