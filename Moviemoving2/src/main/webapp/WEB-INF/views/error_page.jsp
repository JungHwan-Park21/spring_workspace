<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c %>
<%@ page session="false" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <h4><c:out value="${exception.getMessage()}"></c:out></h4>
	<ul>
		<c:forEach items="${exception.getStackTrace()}"var="stack">
			<li><c:out value="${stack}"></c:out></li>
		</c:forEach>
	</ul> --%>
	<h4>잠시 장애가 발생하였습니다.</h4>
	잠시후에 다시 시도해주세요. 계속 문제가 발생되면 관리자에게 연락주세요 000-0000-0000
	
</body>
</html>