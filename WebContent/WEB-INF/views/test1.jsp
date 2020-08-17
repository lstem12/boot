<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/common/head.jsp"></jsp:include>
<style>
div>div{
	border:1px solid
}
</style>
</head>
<body>
<img src="/res/images/aac.jfif" class="rounded-circle mx-auto d-block">
<div class="row">
	<div class="col-sm-3">1 로우, 1 컬럼</div>
	<div class="col-sm-3">1 로우, 2 컬럼</div>
	<div class="col-sm-3">1 로우, 3 컬럼</div>
</div>

<div class="row">
	<div class="col-sm-2">2 로우, 1 컬럼</div>
	<div class="col-sm-7">2 로우, 2 컬럼</div>
</div>
<table class="table table-bordered table-striped table-hover table-dark">
	<tr>
		<td>td1</td>
		<td>td2</td>
		<td>td3</td>
	</tr>
	<tr>
		<td>td1</td>
		<td>td2</td>
		<td>td3</td>
	</tr>
	<tr>
		<td>td1</td>
		<td>td2</td>
		<td>td3</td>
	</tr>
</table>
<button>눌러1</button>
<button class="btn btn-primary">눌러2</button>
<div class="dropdown">
	<button class="btn dropdown-toggle" data-toggle="dropdown">드랍다운</button>
	<div class="dropdown-menu">
		<a href="" class="dropdown-item">다운1</a>
		<a href="" class="dropdown-item">다운2</a>
		<a href="" class="dropdown-item">다운3</a>
	</div>
</div>
</body>
</html>