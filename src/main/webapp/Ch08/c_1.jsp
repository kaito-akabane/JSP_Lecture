<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Title</title>
    </head>
    <body>
        <form action="c_1.jsp" method="post">
            쿠키_이름 : <input type="text" name="cName"><br>
            쿠키_값 : <input type="text" name="cValue"><br>
            <input type="submit" value="쿠키 생성">
            <input type="button" value="쿠키 읽기" onclick="window.open('cookie_d.jsp', 'popup', 'width=400, height=400')">
        </form>
    </body>
</html>
