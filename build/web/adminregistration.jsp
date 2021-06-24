<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.html" %>
<%@ page import="Controller.AdminRegistration"%>
<script>
    function fun(){
        alert("Registration Done!")
    }
</script>
<div align="center"> 
	<h1>Admin Registration</h1>
        <form class="form-horizontal" action="AdminRegistration" method="post">
<fieldset>

<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="name">Admin Name</label>  
  <div class="col-md-4">
  <input id="name" name="name" type="text" placeholder="Enter Your Name" class="form-control input-md" required="">
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
  <input id="add" name="add" type="text" placeholder="Enter your Address" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="contact">Contact</label>  
  <div class="col-md-4">
      <input id="contact" name="contact" type="text" max="10" pattern="^[0-9]{10,10}$" maxlength="10" placeholder="Mobile Number" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" type="email" placeholder="Enter your user name" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Password input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="pass">Password</label>
  <div class="col-md-4">
      <input id="pass" name="pass" type="password" min="5" placeholder="Enter your Password" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Password input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="pass">Confirm Password</label>
  <div class="col-md-4">
      <input id="pass1" name="pass1" type="password" placeholder="Confirm your password"  class="form-control input-md" required="">
    </div>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-8">
      <input type="submit" id="submit"  name="submit" class="btn btn-success" onclick="check();" value="submit"/>
      <a class="btn btn-danger" href="login.jsp">Cancle</a>
  </div>
</div>
</fieldset>
</form>
        
</div>
<%@ include file="footer.html" %>