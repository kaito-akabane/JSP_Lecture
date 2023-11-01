<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Title</title>
    </head>
    <body>
        <%
            String userId = null;
            Cookie[] cookies = request.getCookies();
            if(cookies != null) {
                for(Cookie c : cookies) {
                    if(c.getName().equals("userId")) {
                        userId = c.getValue();
                        break;
                    }
                }
            }
            if(userId!=null) {
        %>
            <form action="8-3.jsp" method="post">
                <%=userId%>님 로그인
                <input type="submit" value="로그아웃">
            </form>
        <%
            } else {
        %>
            <form action="8-2.jsp" method="post">
                아이디: <input type="text" name="id">&nbsp;&nbsp;
                비밀번호: <input type="text" name="pw">
                <input type="submit" value="로그인">
            </form>
        <%
            }
        %>
    </body>
</html>