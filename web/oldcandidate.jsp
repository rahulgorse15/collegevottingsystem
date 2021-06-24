<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<%@ include file="adminnavbar.html" %>
<%@ page import="Bean.ApproveBean"%>
<script>

function myFunction1() {

alert("Do You want delete really!");

}
function myFunction() {

alert("Voter Deleted Successfully!");

}
</script>
<div align="center"> 
    <div style="align:right"><a href="aprovevoter.jsp"><button>New candidate</button></a>
    </div>
        <h1>Voter</h1>
       
<%ResultSet rs =null;%>
  <%
    try{
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vote","root","");
       Statement statement = con.createStatement() ;

        rs =statement.executeQuery("select * from voter where status='active'") ;
       
  %>
  <%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
<table border="1" width="90%">  
    <tr><th>Voter Id</th><th>Name</th><th>DOB</th><th>Address</th> <th>Email</th><th>Contact</th><th>Gender</th><th>Department</th><th>Photo</th> 
    <th>Status</th><th>Delete</th></tr>
       <% if(rs!=null){
           while(rs.next()){ %>  
    <tr>
        <td><%out.print(rs.getInt(1));%></td>
        <td><%out.print(rs.getString(2));%></td>
        <td><%out.print(rs.getString(3));%></td>
        <td><%out.print(rs.getString(4));%></td>
        <td><%out.print(rs.getString(5));%></td>
        <td><%out.print(rs.getString(7));%></td>
        <td><%out.print(rs.getString(8));%></td>
        <td><%out.print(rs.getString(9));%></td>
        <td><img src="photo/voter/<%=rs.getString(10)%>" height="100px" width="100px" alt="s"/></td>
       <td><%out.print(rs.getString(11));%></td>
        
        
       <td><button type="button" class="button1" value="approve" onclick="location.href='deletevoter.jsp?ID=<%=rs.getInt(1) %>';myFunction1();">Delete voter</button></td></tr>  
      
<% }%>

</table>
<%
       }
       else{
       out.print("no new registration for approval");
       }
        %>
  
        <BR>
</div>
<%@ include file="footer.html" %>