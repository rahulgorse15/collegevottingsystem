<%-- 
    Document   : electionupdate
    Created on : Mar 29, 2020, 2:29:19 PM
    Author     : Rahul
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<%@ include file="adminnavbar.html" %>

<html>
    <head>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container" align="center">
        <% int r=Integer.parseInt(request.getParameter("ID"));
        String name=request.getParameter("name");
        String date=request.getParameter("date");
        %>
        <form action="Eleupdate" method="post">
<fieldset>

    <br><br>
  <div class="form-group">
  <div class="row" align="center">
  <label class="col-md-4 control-label" for="eid">Election Id</label>  
  <div class="col-md-4">
      <input id="eid" name="eid" type="text" value="<%=r%>" class="form-control input-md" required="">
    </div>
  
</div>
</div>

<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="ename">Election Name</label>  
  <div class="col-md-4">
      <input id="ename" name="ename" type="text" value="<%=name%>" class="form-control input-md" required="">
    </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
	<div class="row" align="center">
  <label class="col-md-4 control-label" for="edate">Election Name</label>  
  <div class="col-md-4">
      <input id="edate" name="edate"  onblur = "ValidateDOB()" type="date" value="<%=date%>" class="form-control input-md" required="">
    </div>
  </div>
</div>
<!-- Button (Double) -->
<div class="form-group">
  <div class="col-md-8">
    <button id="submit" name="submit"  class="btn btn-success">Submit</button>
    <button id="cancle" name="cancle" type="reset" class="btn btn-danger">Cancle</button>
  </div>
</div>

</fieldset>
</form>
        </div>
            </body>
</html>
