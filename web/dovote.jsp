<%-- 
    Document   : dovote
    Created on : Mar 29, 2020, 9:39:41 PM
    Author     : Rahul
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
    function fun(){
        alert("vote Successfully Recorded");
    }
</script>
<%@ include file="voterheader.jsp" %>
<%@ include file="voternavbar.html" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center"> 
	<h1>Vote</h1>
        <form action="voting.jsp" method="post">
            <%
              //  out.print("Wellcome\t"+s.getAttribute("vid"));
                int vid=Integer.parseInt(s.getAttribute("vid").toString());
      
        
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vote","root","");
    int id=0;       
    String ename=request.getParameter("elename");
    ResultSet r;      
    Statement stm = con.createStatement() ;
                 r=stm.executeQuery("select * from election where elename='"+ename+"' and eledate = current_date") ;
       if(r.next()){
           id=(r.getInt(1));
       out.print("Election\t"+ename);
       }%><br><br><%
            ResultSet rs;
            Statement st = con.createStatement() ;
        rs=st.executeQuery("select eleid,vid from result where vid="+vid+" &&eleid="+id+"") ;
       if(rs.next()){
            out.println("<script type=\"text/javascript\">");
   out.println("alert('you are voted allready\t!');");
   out.println("location='vote.jsp';");
   out.println("</script>");   
       //out.print("you are voted allready\t");
       }
       else{
       
int eid=0;
        ResultSet rs2 =null;
  ResultSet rs1=null;
    try{Statement statement = con.createStatement() ;
                 
                 Statement stmt = con.createStatement() ;
                 rs1=stmt.executeQuery("select * from election where elename='"+ename+"' and eledate = current_date") ;
       if(rs1.next()){
           eid=(rs1.getInt(1));
     //  out.print("Election\t"+ename);
       }          
       rs2 =statement.executeQuery("select * from candidate where eleid="+eid+"") ;
       
  %><br>
  <%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%><%
if(rs2.next()){%>
<table border="1" width="90%">  
    <tr><th>Candidte Id</th><th>Candidate Name</th><th>Address</th> <th>Gender</th><th>DOB</th><th>Department</th><th>Photo</th> 
        <th>Vote</th>
    </tr>
    <tr>
        <td><%out.print(rs2.getInt(1));%></td>
        <td><%out.print(rs2.getString(3));%></td>
        <td><%out.print(rs2.getString(4));%></td>
        <td><%out.print(rs2.getString(5));%></td>
        <td><%out.print(rs2.getString(6));%></td>
        <td><%out.print(rs2.getString(7));%></td>
        <td><img src="photo/candidate/<%=rs2.getString(8)%>" height="100px" width="100px" alt="s"/></td>   
        <td><button type="button" class="button1" name="update" value="Update" onclick="location.href='voting.jsp?CID=<%=rs2.getInt(1)%>&EID=<%=rs1.getInt(1)%>';fun();">Do Vote</button></td>
   </tr>
       <% 
           while(rs2.next()){ %>  
    <tr>
        <td><%out.print(rs2.getInt(1));%></td>
        <td><%out.print(rs2.getString(3));%></td>
        <td><%out.print(rs2.getString(4));%></td>
        <td><%out.print(rs2.getString(5));%></td>
        <td><%out.print(rs2.getString(6));%></td>
        <td><%out.print(rs2.getString(7));%></td>
        <td><img src="photo/candidate/<%=rs2.getString(8)%>" height="100px" width="100px" alt="s"/></td>   
        <td><button type="button" class="button1" name="update" value="Update" onclick="location.href='voting.jsp?CID=<%=rs2.getInt(1)%>&EID=<%=rs1.getInt(1)%>';fun();">Do Vote</button></td>
   </tr>
<% }%>

</table>
<%
       }
       else{
      out.println("<script type=\"text/javascript\">");
   out.println("alert('Today no election aavailable!!');");
   out.println("location='vote.jsp';");
   out.println("</script>");   
      // out.print("Today no election aavailable!");
       }}
       %><br><br>
    
      <a href="newelection.jsp">back</a>
  
        </form>

<%@ include file="footer.html" %>
        </body>
</html>
