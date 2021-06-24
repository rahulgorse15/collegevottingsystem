<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="Controller.AdminRegistration"%>

   

    <%@ include file="header.jsp" %>
<%@ include file="adminnavbar.html" %>
<html>
    <head>
    <title></title>    
    </head>
    
    <body>
        
<div align="center"> ;
	<form class="form-horizontal" action="electionname" method="post">
<fieldset>

<script>
    function fun(){
        alert("Do you want add new election type?");
    }
</script>
<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="elename">Election Name</label>  
  <div class="col-md-4">
      <input id="elename" name="elename"  type="text" placeholder="Election name" class="form-control input-md" required="">
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
    </body>
</html>
