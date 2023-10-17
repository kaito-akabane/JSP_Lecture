<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
		
			String[] lang = request.getParameterValues("lang");
			String[] hobby = request.getParameterValues("hobby");
		%>
		관심언어 : 
		<%
			for(String s : lang) {
				out.println(s+" ");
			}
		%>
		<br>
		비밀번호 :
		<%
			for(String s : hobby) {
				out.println(s+" ");
			}
		%>
		<br>
	</body>
</html>