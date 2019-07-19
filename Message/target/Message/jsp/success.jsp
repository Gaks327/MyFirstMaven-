<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%-- ${haha.id}~~~~~~${haha.cropCategory}~~~${haha.state } --%><br>
	<input type="text" value="${haha.id }" readonly="readonly"><br>
	<input type="text" value="${haha.cropCategory }" readonly="readonly"><br>
	<input type="text" value="${haha.state }" readonly="readonly"><br>
</body>
</html>