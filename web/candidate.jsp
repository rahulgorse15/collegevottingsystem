<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<%@ include file="adminnavbar.html" %>
<%@ page import="Controller.newcandidate"%>
<script type="text/javascript">
    function ValidateDOB() {
        var dateOne = document.getElementById("dob").value;
        var todayDate = new Date(); //Today Date  
       //var  = new Date(2010, 11, 25);  
       if (dateDate > todayOne) {  
            alert("Invalide Birth Date. Please Enter Valied Birth Date");  
             document.getElementById('dob').style.borderColor = "red";
             
              
        }
        
    }
</script>
<script>
    function fun(){
        alert("Do you want add new candidate for this election?");
    }
</script>
<div align="center"> 
    <form class="form-horizontal" action="newcandidate" method="post">
<fieldset>

<!-- Form Name -->
<h1>Candidate</h1>
<div class="form-group">
  <div class="row" align="center">
  <label class="col-md-4 control-label" for="election">Election name</label>
  <%ResultSet rs1 =null;%>
  <%
    try{
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vote","root","");
       Statement statement = con.createStatement() ;

        rs1 =statement.executeQuery("select * from elec") ;
%>
  <%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
  <div class="col-md-4">
    <select id="dept" name="elename" class="form-control">
       <%  while(rs1.next()){ %>
            <option><%= rs1.getString(2)%></option>
        <% } %>
    </select>
  </div>
</div>
</div>

<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="Cid">Candidate Name</label>  
  <div class="col-md-4">
  <input id="Cid" name="cname" type="text" placeholder="Enter candidate Name" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="cadd">Address</label>  
  <div class="col-md-4">
  <input id="cadd" name="cadd" type="text" placeholder="Candidate Address" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="gender">Gender</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="gender-0">
      <input type="radio" name="gender" id="gender-0" value="Female" checked="checked">
      Female
    </label> 
    <label class="radio-inline" for="gender-1">
      <input type="radio" name="gender" id="gender-1" value="Male">
      Male
    </label>
  </div>
</div>
</div>
<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="bdate">Date Of Birth</label>  
  <div class="col-md-4">
      <input id="dob" name="dob" type="date" onblur = "ValidateDOB()" placeholder="Date of Birth" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Select Multiple -->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="dep">Department</label>
  <div class="col-md-4">
      <select id="dept" name="dept" class="form-control">
   <%ResultSet rs =null;%>
  <%
    try{
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vote","root","");
       Statement statement = con.createStatement() ;

        rs =statement.executeQuery("select * from department") ;
%>
  <%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
  <div class="col-md-4">
    
       <%  while(rs.next()){ %>
            <option><%= rs.getString(2)%></option>
        <% } %>
    </select>
  </div>
</div>
</div>
    <br>
<!-- File Button --> 
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="img">Candidate Photo</label>
  <div class="col-md-4">
    <input id="photo" name="photo" class="input-file" type="file">
  </div>
</div>
</div>
<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-8">
      <button id="submit" name="submit" onclick="fun();" class="btn btn-success">Submit</button>
      <button id="cancle" name="cancle" type="reset" class="btn btn-danger">Cancle</button>
  </div>
</div>

</fieldset>
</form>

</div>
<%@ include file="footer.html" %>