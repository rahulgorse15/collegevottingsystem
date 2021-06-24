<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.html" %>

<div align="center">
    <form class="form-horizontal" method="post" action="VoterLogin">
<fieldset>

<!-- Form Name -->
<h1>Voter Login</h1>

<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="name">User Name</label>  
  <div class="col-md-4">
  <input id="name" name="name" type="text" placeholder="Enter Your User Name" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Password input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="pass">Password</label>
  <div class="col-md-4">
    <input id="pass" name="pass" type="password" placeholder="Enter Your Password" class="form-control input-md" required="">
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
<a href="voterregistration.jsp">New Registration</a>

</fieldset>
</form>
</div>
<%@ include file="footer.html" %>