<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<%@ include file="adminnavbar.html" %>
<div align="center"> 
	<h1>View Result</h1>
        <form class="form-horizontal" action="adminresult.jsp" method="post">
<fieldset>

<!-- Select Basic -->
<div class="form-group">
  <div class="row" align="center">
  <label class="col-md-4 control-label" for="ele">Election</label>
  <%ResultSet rs =null;%>
  <%
    try{
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vote","root","");
       Statement statement = con.createStatement() ;

        rs =statement.executeQuery("select * from elec") ;
%>
  <%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
  <div class="col-md-4">
    <select id="elename" name="elename" class="form-control">
       <%  while(rs.next()){ %>
            <option><%= rs.getString(2)%></option>
        <% } %>
    </select>
  </div>
</div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">Submit</button>
  </div>
</div>

</fieldset>
</form>

</div>
<%@ include file="footer.html" %>