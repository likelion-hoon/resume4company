<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!--  css 적용 -->
<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/css/bootstrap-theme.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/css/sidebar.css" />" rel="stylesheet">

<!--  js 적용 -->
<script src="<c:url value="/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/js/sidebar.js" />"></script>

<!--  jquery 적용 -->
<script src="<c:url value="/js/jquery-3.3.1.min.js" />"></script>

<script>
	$(document).ready(function() {
		$('#sidebarCollapse').on('click',function() {
			$('#sidebar').toggleClass('active');
		});
	}); 
</script>
</head>
<body>
	<div class="wrapper">
		<nav id="sidebar">
			<div class="sidebar-header">
				<h4> resume 4 company </h4>
			</div>
		
			<ul class="list-unstyled components">
				<li><a href="#">홈페이지 소개</a></li>
				<li><a href="#"> 지원서 작성 </a></li>
				<li><a href="#"> 지원서 수정 </a></li>
				<li><a href="#"> 결과 조회 </a></li>
				<li><a href="#"> 온라인 검사 실시 </a></li>
				<li><a href="board/board.jsp"> QnA 게시판 </a></li>
			</ul>
		</nav>
	
		<div id="content">
			<button type="button" id="sidebarCollapse"
				class="btn btn-info navbar-btn">
				<i class="glyphicon glyphicon-align-left"></i> 
			</button>
		</div>
	</div>
</body>
</html>