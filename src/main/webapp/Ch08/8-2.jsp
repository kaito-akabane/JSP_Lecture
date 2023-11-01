<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    if(id.equals("admin")&&pw.equals("1234")) {
        Cookie c = new Cookie("userId", id);
        c.setMaxAge(-1);
        response.addCookie(c);

        response.sendRedirect("8-1.jsp");
        return;
    }
%>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Title</title>
    </head>
    <body>
        <script>
            alert('아이디 또는 비밀번호가 틀립니다');
            history.back();
        </script>
    </body>
</html>