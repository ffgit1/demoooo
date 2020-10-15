<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>show</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome-4.7.0/css/font-awesome.min.css"
	type="text/css">
<style type="text/css">
.table th, .table td {
	text-align: center;
	vertical-align: middle !important;
}
</style>
</head>
<body>
	<div class="row" style="text-align: right;">
		<a href="add.jsp"
			class="btn btn-primary">添加用户</a>
	</div>
	<table id="tab" class="table table-bordered table-hover">
		<tr>
			<th>ID</th>
			<th>姓名</th>
			<th>密码</th>
			<th>余额</th>
			<th>操作</th>
		</tr>			
		<c:forEach items="${list }" var="user">
			<tr>
				<td>${user.id}</td>
				<td>${user.name}</td>
				<td>${user.password}</td>
				<td>${user.money}</td>
				<td><a href="selectById?id=${user.id}">✎</a>
					<a href="delete?id=${user.id}">X</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<a href="show?pagenum=1">第一页</a>
	
	<a href="show?pagenum=${pageInfo.prePage}">上一页</a>
	
	
	<c:forEach items="${pageInfo.navigatepageNums}" var="a">
		<a href="show?pagenum=${a}">${a}</a>
	</c:forEach>
	
	<a href="show?pagenum=${pageInfo.nextPage}">下一页</a>	
	
	
	<a href="show?pagenum=${pageInfo.pages}">尾页</a> 
	<br>
	共${pageInfo.total}条数据，共${pageInfo.pages}页，当前为${pageInfo.pageNum}页
</body>
</html>