
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<%@ include file="adminsubnavbar.css" %>
<script>
function myFunction1() {

alert("Do You want Update Election!");

}

function myFunction() {

alert("Do You want Update Candidate information!");

}
function myFunction2() {

alert("Do You want Delete Candidate!");

}
</script>
<div class="tab">
    <button class="tablinks" onclick="openCity(event, 'Election')">Election</button>
  <button class="tablinks" onclick="openCity(event, 'Candidate')">Candidate</button>
</div>
<center>
 Select any operation!
    <br><br><br><br><br>
    <a class="btn btn-danger" href="index.jsp" > Back</a><br><br>
<div id="Election" class="tabcontent">
  <h3>Election</h3>
  <p>Election Detail.</p>

  <form action="" method="get">

  <%
  ResultSet rs =null;
    try{
        
                 String ename=request.getParameter("elename");
                 
                 out.print("Election\t"+ename);
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vote","root","");
       Statement statement = con.createStatement() ;

        rs =statement.executeQuery("select * from election where elename='"+ename+"'") ;
       
  %>
  <%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        
      }
if(rs.next()){
%>
<table border="1" width="90%">  
    <tr><th>Election Id</th><th>Election Name</th><th>Date</th><th>Update</th></tr>
       
            
    <tr>
        <td><%out.print(rs.getInt(1));%></td>
        <td><%out.print(rs.getString(2));%></td>
        <td><%out.print(rs.getString(3));%></td>
        <td><button type="button" class="button1" value="Delete" name="delete" onclick="myFunction1();location.href='electionupdate.jsp?ID=<%=rs.getInt(1) %>&name=<%=rs.getString(2)%>&date=<%=rs.getString(3)%>'">Update</button></td></tr>  
    
</table>
<%
       }
  
    else{
  %><br>
  <br><%
     out.println("<script type=\"text/javascript\">");
   out.println("alert('no election available!');");
   out.println("location='viewelection.jsp';");
   out.println("</script>");   
 // out.println("\nno election available!");
  }
        %>
        <br><br>

       <a href="viewelection.jsp"> back</a>    </form>
</div>

<div id="Candidate" class="tabcontent">
  <h3>Candidate</h3>
  <p>Candidate Detail.</p> 
  <form>
  <%
  ResultSet rs2 =null;
    try{
        
int eid=0;
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vote","root","");
       Statement statement = con.createStatement() ;
                 String ename=request.getParameter("elename");
                 
                 Statement stmt = con.createStatement() ;
                 ResultSet rs1=stmt.executeQuery("select * from election where elename='"+ename+"'") ;
       if(rs1.next()){
           eid=(rs1.getInt(1));
       out.print("Election\t"+ename);
       }          
       rs2 =statement.executeQuery("select * from candidate where eleid="+eid+"") ;
       
  %><br>
  <%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
<table border="1" width="90%">  
    <tr><th>Candidte Id</th><th>Candidate Name</th><th>Address</th> <th>Gender</th><th>DOB</th><th>Department</th><th>Photo</th> 
        <th>Update</th><th>Delete</th>
    </tr>
       <% if(rs2.next()){%>
             <tr>
        <td><%out.print(rs2.getInt(1));%></td>
        <td><%out.print(rs2.getString(3));%></td>
        <td><%out.print(rs2.getString(4));%></td>
        <td><%out.print(rs2.getString(5));%></td>
        <td><%out.print(rs2.getString(6));%></td>
        <td><%out.print(rs2.getString(7));%></td>
        <td><img src="photo/candidate/<%=rs2.getString(8)%>" height="100px" width="100px" alt="s"/></td>
        
        <td><button type="button" class="button1" name="update" value="Update" onclick="myFunction();location.href='candidateupdate.jsp?ID=<%=rs2.getInt(1)%>&name=<%=rs2.getString(3)%>&add=<%=rs2.getString(4)%>&gender=<%=rs2.getString(5)%>&date=<%=rs2.getString(6)%>&dept=<%=rs2.getString(7)%>&photo=<%=rs2.getString(8)%>'">Update</button></td>  
        <td><button type="button" class="button1" value="Delete" name="candidatedelete" onclick="myFunction2();location.href='candidatedelete.jsp?ID=<%=rs2.getInt(1) %>'">Delete</button></td>
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
        
        <td><button type="button" class="button1" name="update" value="Update" onclick="myFunction();location.href='candidateupdate.jsp?ID=<%=rs2.getInt(1)%>&name=<%=rs2.getString(3)%>&add=<%=rs2.getString(4)%>&gender=<%=rs2.getString(5)%>&date=<%=rs2.getString(6)%>&dept=<%=rs2.getString(7)%>&photo=<%=rs2.getString(8)%>'">Update</button></td>  
        <td><button type="button" class="button1" value="Delete" name="candidatedelete" onclick="myFunction2();location.href='candidatedelete.jsp?ID=<%=rs2.getInt(1) %>'">Delete</button></td>
    </tr>
<% }%>
</tr>
</table>
<%
       }
       else{
           out.println("<script type=\"text/javascript\">");
   out.println("alert('no election candidate available!');");
   out.println("location='viewelection.jsp';");
   out.println("</script>");   
       //out.print("no election candidate!");
       }
       %><br><br>
    
    <a href="viewelection.jsp"> back</a>
  </form>
 </div>
</center>
<script>
    
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
    
  }
  document.getElementById(cityName).style.display = "block";
evt.currentTarget.className += " active";
         
}
</script>
<%@ include file="footer.html" %>