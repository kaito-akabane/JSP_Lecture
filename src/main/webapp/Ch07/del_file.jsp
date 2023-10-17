<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.io.File" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%
    int num = Integer.parseInt(request.getParameter("num"));

    Class.forName("org.mariadb.jdbc.Driver");
    try (
        Connection conn = DriverManager.getConnection(
                "jdbc:mariadb://localhost:3306/jspdb", "jsp", "1234");
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(
            "select * from webhard where num="+num);
    ) {
        if(rs.next()) {
            File file = new File(application.getRealPath("/files/") +
                                rs.getString("fname"));
            if(file!=null) {
                file.delete();
            }

            stmt.executeUpdate("delete from webhard where num="+num);
        }
    } catch(Exception e) {
        e.printStackTrace();
    }

    response.sendRedirect("webhard.jsp");
%>