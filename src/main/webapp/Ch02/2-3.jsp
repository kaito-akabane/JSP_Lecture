<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>테스트 페이지</title>
	</head>
	<body>
		<%
			/*
				여러 줄 주석 :
				Java 코드 시작
			*/
			out.println("오늘 날짜 : "+LocalDate.now()+"<br>");
			out.println("현재 시간 : "+LocalDate.now());
			// 한 줄 주석 : Java 코드 끝
		%>
		<br><br>
		/* HTML 영역에서는
		   JSP의 주석이 */
		// 일반 텍스트로 인식된다.
		
		<!--
			HTML 영역에서는 HTML 주석을 사용한다.
			이 주석은 브라우저에서 "소스 보기"를 사용하면 볼 수 있다.
		-->
		
		<%--
			HTML 영역에서 JSP 주석을 사용할 수도 있다.
			이 주석은 "소스 보기"를 사용해도 보이지 않는다.
			tomcat이 이 프로그램을 처리할 때 삭제하게 때문이다.
		--%>
	</body>
</html>