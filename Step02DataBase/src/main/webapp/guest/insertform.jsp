<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<title>/guest/insertform.jsp</title>
</head>
<body>
	<div class="container">
		<h1 style="text-align: center">방명록 작성</h1>
		<form action="insert.jsp" method="post">
			<div class="mb-2">
				<label for="writer" class="form-label">이름</label>
				<input type="text" class="form-control" id="writer" name="writer" autocomplete="off"/>
			</div>
			<div class="mb-2">
				<label for="content" class="form-label">내용</label>
				<textarea cols="50" rows="10" class="form-control" id="content" name="content" autocomplete="off"></textarea>
			</div>
			<div class="mb-2">
				<label for="pwd" class="form-label">비밀번호</label>
				<input type="password" class="form-control" id="pwd" name="pwd" autocomplete="off"/>
			</div>
			<button type="submit" class="btn btn-outline-primary">작성</button>
		</form>
	</div>
</body>
</html>