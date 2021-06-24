<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="header.jsp" %>
<%@ include file="adminnavbar.html" %>
<div class="container" align="center">
<script type="text/javascript">
    function ValidateDOB() {
        var dateOne = document.getElementById("eledate").value;
        var todayDate = new Date(); //Today Date  
       //var  = new Date(2010, 11, 25);  
       if (dateDate < todayOne) {  
            alert("Invalide Date. Please Enter Valied Date");  
             document.getElementById('eledate').style.borderColor = "red";
             
              
        }
        
    }
</script>
    <form class="form-horizontal" action="newelection" method="post">
<fieldset>

<!-- Form Name -->
<h1 align="center"><b>New Election</b></h1>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<script>
    function fun(){
        alert("Do you want add new election?");
    }
</script>
<div class="form-group">
  <div class="row" align="center">
  <label class="col-md-4 control-label" for="election">Election</label>
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

<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="edate">Election Date</label>  
  <div class="col-md-4">
      <input id="eledate" name="eledate" onblur = "ValidateDOB()" type="date" placeholder="Election Date" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <div class="col-md-8">
      <button id="submit" name="submit" class="btn btn-success" onclick="fun()">Submit</button>
      <button id="cancle" name="cancle" type="reset" class="btn btn-danger">Cancle</button>
  </div>
</div>

</fieldset>
</form>
</div>
<%@ include file="footer.html" %>