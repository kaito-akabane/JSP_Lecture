<%@ page contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
    Cookie c = new Cookie("userId", null);
    c.setMaxAge(0);
    response.addCookie(c);

    response.sendRedirect("8-1.jsp");
%>