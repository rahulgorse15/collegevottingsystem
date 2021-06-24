<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.html" %>
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
        alert("Registration Done!")
    }
</script>
<div align="center"> 
	<h1>Voter Registration</h1>
        <form class="form-horizontal" action="VoterRegistration" method="post">
<fieldset>

<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="name">Voter Name</label>  
  <div class="col-md-4">
  <input id="name" name="vname" type="text" placeholder="Enter Your Name" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="gender">Gender</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="gender-0">
      <input type="radio" name="gender" id="gender-0" value="Male" checked="checked">
      Male
    </label> 
    <label class="radio-inline" for="gender-1">
      <input type="radio" name="gender" id="gender-1" value="Female">
      Female
    </label>
  </div>
</div>
</div>
<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="add">Address</label>  
  <div class="col-md-4">
  <input id="vadd" name="add" type="text" placeholder="Enter your Address" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="contact">Contact</label>  
  <div class="col-md-4">
      <input id="contact" name="contact" type="text" max="10" maxlength="10" pattern="^[0-9]{10,10}$" placeholder="Mobile Number" class="form-control input-md" required="">
    </div>
  </div>
</div>
<div class="form-group">
  <div class="row" align="center">
  <label class="col-md-4 control-label" for="contact">DOB</label>  
  <div class="col-md-4">
  <input id="dob" name="dob" type="date" onblur = "ValidateDOB()" class="form-control input-md" required="">
  <span class="error" id="lblError"></span> 
  </div>
  </div>
</div>
<div class="form-group">
  <div class="row" align="center">
  <label class="col-md-4 control-label" for="year">Department</label>
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
      <select id="dept" name="dept" onclick="CompareDate();" class="form-control">
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
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-4">
      <input id="email" name="email" type="email" onprogress="CompareDate();" placeholder="Enter your user name" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Password input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="pass">Password</label>
  <div class="col-md-4">
    <input id="pass" name="pass" type="password" placeholder="Enter your Password" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Password input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="pass">Confirm Password</label>
  <div class="col-md-4">
    <input id="pass1" name="pass1" type="password" placeholder="Confirm your password" class="form-control input-md" required="">
    </div>
  </div>
</div>
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="img">Candidate Photo</label>
  <div class="col-md-4">
    <input id="photo" name="photo" class="input-file" type="file">
  </div>
</div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-8">
      <button id="submit" name="submit"  class="btn btn-success">Submit</button>
      <a class="btn btn-danger" href="login.jsp">Cancle</a>
  </div>
</div>
</fieldset>
</form>

</div>
<%@ include file="footer.html" %>