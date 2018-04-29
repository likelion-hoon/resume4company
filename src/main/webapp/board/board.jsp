<!-- QnA게시판 메인페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title> QnA 게시판 </title>
	
	<!--  css 적용 -->
	<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="/css/bootstrap-theme.min.css" />"
		rel="stylesheet">
	
	<!-- font-awesome 적용 -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
		
	<!--  js 적용 -->
	<script src="<c:url value="/js/bootstrap.min.js" />"></script>
	
	<!--  jquery 적용 -->
	<script src="<c:url value="/js/jquery-3.3.1.min.js" />"></script>
</head>
<body>
	<div class="container" style="margin-top:60px;">
	
	<h2> QnA 게시판 </h2>
		<table class="table table-striped">
		  <!-- 컬럼(열)은 8개 -->
		  <thead>
		    <tr>
		      <th style="width:20%"> 번호 </th>
		      <th> 제목 </th>
		      <th> 작성자 </th>
		      <th><i class="fa fa-eye"></i></th>
		      <th><i class="fa fa-comments"></i></th>
        	  <th><span class="glyphicon glyphicon-thumbs-up"></span></th>
        	  <th><span class="glyphicon glyphicon-time"></span></th>
		    </tr>
		  </thead>
		  
		  	<tr> 
		  	  <td> 1 </td>
		  	  <td> 샘플 데이터 입니다. </td>
		  	  <td> 이종훈 </td>
		  	  <td> 1 </td>
		  	  <td> 2 </td>
		  	  <td> 2 </td>
		  	  <td> 2 </td>
		    </tr>
		 </table>
	</div>
</body>
</html>