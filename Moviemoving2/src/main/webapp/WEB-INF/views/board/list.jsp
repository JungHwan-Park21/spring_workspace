<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		Bookmark Page
	</div>
	
	<div>
		<table width=100%>
			<thead>
			<tr>
				<th>#번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>수정일</th>
			</tr>
			</thead>
			
			<c:forEach items="${list}" var="board">
				<tr>
					<td><c:out value="${board.User_id}"/></td>
					<td><c:out value="${board.MovieInfo_no}"/></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>