<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="com.jonghoon.resume.user.UserVO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	
	<!--  부트스트랩 적용 -->
	<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="/css/bootstrap-theme.min.css" />" rel="stylesheet">
	<script src="<c:url value="/js/bootstrap.min.js" />"></script>
	
	<!--  jquery 적용 -->
	<script src="<c:url value="/js/jquery-3.3.1.min.js" />"></script>
	<title> 로그인 </title>
	
	<style type="text/css">
	
		h3 {
			text-align:center;
		}
	
		.container {
			margin-top:50px;
		}
		
		
		input {
			margin-bottom:10px;
		}
		
		button {
			float:right;
		}
		
	</style>
</head>
<body>
	
	<%
		UserVO user = new UserVO(); 
	%>

	<div class="container"> 
	   <div class="row">
	   	<div class="col-sm-offset-3 col-sm-6">
		 	<form action="login.do" method="POST">
		 		<h3> resume 4 company</h3>
		 		<label> 아이디 </label>
				<input type="text" class="form-control" name="id">
				
				<label> 패스워드 </label>
				<input type="password" class="form-control" name="password"> 
		
				<button class="btn btn-success"> 로그인 </button>
			</form>
		</div>
	   </div>
	</div>

	
	<!-- Oauth 2.0 구현 네이버로 로그인 구현 -->
</body>
</html>