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
<div align="center"> 
    <form class="form-horizontal" action="updatecandidate" method="post">
<fieldset>
<% int cid=Integer.parseInt(request.getParameter("ID"));
        String cname=request.getParameter("name");
        String cadd=request.getParameter("add");
        String gender=request.getParameter("gender");
        String cdate=request.getParameter("date");
        String dept=request.getParameter("dept");
        String photo=request.getParameter("photo");
        
        %>
<!-- Form Name -->
<h1>Candidate</h1>
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="election name">Candidate Id</label>  
  <div class="col-md-4">
      <input id="Cid" name="cid" type="text" value="<%=cid%>" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="Cid">Candidate Name</label>  
  <div class="col-md-4">
  <input id="Cid" name="cname" type="text" value="<%=cname%>" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="cadd">Address</label>  
  <div class="col-md-4">
  <input id="cadd" name="cadd" type="text" value="<%=cadd%>" class="form-control input-md" required="">
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
  <label class="col-md-4 control-label"   for="bdate">Date Of Birth</label>  
  <div class="col-md-4">
      <input id="dob" name="dob" type="date" onblur = "ValidateDOB()" value="<%=cdate%>" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Select Multiple -->
<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="bdate">Department</label>  
  <div class="col-md-4">
      <input id="dep" name="dep" type="text" value="<%=dept%>" class="form-control input-md" required="">
    </div>
  </div>
</div>
    <br>
<!-- File Button --> 
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="img">Candidate Photo</label>
  <div class="col-md-4">
    <input id="photo" name="photo" type="file">
  </div>
</div>
</div>
<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-8">
    <button id="submit" name="submit" class="btn btn-success">Submit</button>
    <button id="cancle" name="cancle" type="reset" class="btn btn-danger">Cancle</button>
  </div>
</div>

</fieldset>
</form>

</div>
<%@ include file="footer.html" %>