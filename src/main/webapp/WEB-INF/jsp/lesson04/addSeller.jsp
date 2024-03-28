<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>판매자 추가</h1>
		<form method="post" action="/lesson04/quiz01/add-seller">
			<div class="form-group">
				<label for="nickname">닉네임</label> <input type="text" id="nickname"
					name="nickname" class="form-control col-3">
			</div>
			<div class="form-group">
				<label for="profileImage">프로필 사진 url</label> <input type="text"
					id="profileImage" name="profileImage" class="form-control">
			</div>
			<div class="form-group">
				<label for="temperature">매너 온도</label> <input type="text"
					id="temperature" name="temperature" class="form-control col-3">
			</div>

			<button type="submit" class="btn btn-primary">추가</button>
		</form>
	</div>
</body>
</html>