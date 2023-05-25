<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<title>/members/insertform.jsp</title>
</head>
<body>
	<div class="container">
		<h1 style="text-align: center">회원 추가</h1>
		<form action="insert.jsp" method="post">
			<div class="mb-2">
				<label for="name" class="form-label">이름</label>
				<input type="text" class="form-control" id="name" name="name" autocomplete="off"/>
			</div>
			<div class="mb-2">
				<label for="addr" class="form-label">주소</label>
				<input type="text" class="form-control" id="addr" name="addr" autocomplete="off"/>
			</div>
			<button type="submit" class="btn btn-outline-primary">추가</button>
		</form>
	</div>
</body>
</html>