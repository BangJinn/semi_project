<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/writeform.css">
<script src="https://kit.fontawesome.com/7c6041109a.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Gothic+Coding:wght@700&family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<!-- 로그인한 사용자만 글쓰기 허용됨 -->
	<c:if test="${empty sessionId}">
		<script type="text/javascript">
         alert("로그인이 필요합니다.");
         location.href = "/loginform.do";
      </script>
	</c:if>

	<jsp:include page="../header.jsp" />
	<div class="email-form-container">
		<h2>
			My<br>Daylog
		</h2>
		<form action="/write.do" id="box" method="post"
			enctype="multipart/form-data">
			<div id="div">
				<label>제목</label> <input type="text" id="title" name="title"
					required>
			</div>
			<div id="div">
				<label>장소명</label>
			</div>
			<input type="text" id="place" name="localName" required>
			<div id="file">
				<div id="file">
					<label for="attachment" class="custom-file-input">첨부 파일 선택</label>
					<input type="file" id="attachment" name="filename">
				</div>
			</div>
			<textarea id="message" name="reviewContent" rows="40"
				placeholder="고객님의 이야기를 들려주세요!"></textarea>
			<div id="btn">
				<a href="communitylist.do">
					<button type="submit" id="btn2">등록</button>
				</a> <a href="#">
					<button type="reset" id="btn2">취소</button>
				</a>
			</div>
		</form>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>