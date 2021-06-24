<%-- 
    Document   : adminresult
    Created on : Mar 30, 2020, 10:13:11 AM
    Author     : Rahul
--%>

<%@page import="java.sql.*"%>

<%@ include file="header.jsp" %>
<%@ include file="adminnavbar.html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <br>
        &nbsp;&nbsp;&nbsp;&nbsp; <a href="departmenresult.jsp"><button>view department vise result</button></a>
    <div align="center">      
         <% String elename=request.getParameter("elename");
         int win=0;
    ResultSet r;
    ResultSet rs;
    ResultSet rs1;%>
    <h1><%out.print("Election:\t"+elename);%></h1>
     
        <%try{
        Class.forName("com.mysql.jdbc.Driver"); 
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vote","root","");
    int id=0;       
    Statement stmt=con.createStatement();
    Statement stm = con.createStatement() ;
                 r=stm.executeQuery("select * from election where elename='"+elename+"'") ;
                  if(r.next()){
           id=(r.getInt(1));
%>
                   <table border="1" width="90%">  
    <tr><th>Candidate  Id</th><th>Candidate Name</th><th>photo</th><th>Total Vote</th></tr>
  <%
    rs=stm.executeQuery("select candidate.cid,candidate.cname,candidate.photo,result.tvote,max(tvote) from candidate join result on candidate.cid=result.cid where result.eleid="+id+"") ;
                   while(rs.next()){
                       win=rs.getInt(5);
    %>
<td><%out.print(rs.getInt(1));%></td>
        <td><%out.print(rs.getString(2));%></td>
        <td><img src="photo/candidate/<%=rs.getString(3)%>" height="100px;" width="100px;" alt="s"/></td>
        
        <td><%out.print(rs.getInt(4));%></td>
      
        
      
       <%
                   }
                   
                   %>
    </tr></table>
    <%
                   }
       else{
           out.print("No Result declaired");
       
                  }
                   
     
       }
       catch(Exception e){
       out.print(e);
       } 
        out.print("Winer is who got \t"+win+"\tvote");
         %>
    </div>
    
<%@ include file="footer.html" %>
    </body>
</html>
