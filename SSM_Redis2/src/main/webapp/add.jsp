<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
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
	<form action="add">
		<table id="tab" class="table table-bordered table-hover">
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" placeholder="请填写用户名" /></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input type="text" name="name" placeholder="请填写用户名" /></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text" name="password" placeholder="请填写用户名" /></td>
			</tr>
			<tr>
				<td>余额</td>
				<td><input type="text" name="money" placeholder="请填写用户名" /></td>
			</tr>
		</table>
		<div class="row" style="margin-bottom: 1%; text-align: center;">
			<input type="submit" class="btn btn-primary" value="保存" /> <a
				href="javascript:" onclick="self.location=document.referrer;"
				class="btn btn-primary">返回</a>
		</div>
	</form>
</body>
</html>