<%-- 
    Document   : voting
    Created on : Mar 29, 2020, 9:59:21 PM
    Author     : Rahul
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="voterheader.jsp" %>
<%@ include file="voternavbar.html" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
<% int cid=Integer.parseInt(request.getParameter("CID"));
   int eid=Integer.parseInt(request.getParameter("EID"));
        //  HttpSession s=request.getSession(false);
                
                int vid=Integer.parseInt(s.getAttribute("vid").toString());
                out.print("cid="+cid+"eid="+eid+"vid="+vid);
        ResultSet rs1=null;
    try{
        
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vote","root","");
                 int tv=1;
                 Statement stmt = con.createStatement() ;
                 int a=stmt.executeUpdate("insert into result (rid,eleid,cid,vid,tvote) values(DEFAULT,"+eid+","+cid+","+vid+","+tv+")");
       if(a>0){
           response.sendRedirect("vote.jsp");
           //out.print("done");
       }       
       else{
       out.print("sory");
       }
    }catch(Exception e){
    out.print(e);
    }
        %>
        </form>
        </body>
</html>
