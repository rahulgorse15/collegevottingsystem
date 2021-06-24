<%-- 
    Document   : candidatedelete
    Created on : Mar 29, 2020, 2:42:49 PM
    Author     : Rahul
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="header.jsp" %>
<%@ include file="adminnavbar.html" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <% int r=Integer.parseInt(request.getParameter("ID"));
       out.print("id="+r);
       ResultSet rs=null;
    try{
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vote","root","");
       Statement statement = con.createStatement() ;
      int a= statement.executeUpdate("delete from voter    where vid="+r+"");
       // rs =statement.executeQuery("UPDATE voter SET status='active' WHERE vid="+r+"") ;
       if(a>0){
           %>
    <script>alert('login Success')</script>
       <%
           response.sendRedirect("oldcandidate.jsp");
       }
        }
        catch(SQLException e)
        {
             out.println("wrong entry"+e);
        }
       %>
    </body>
</html>
