<%-- 
    Document   : header
    Created on : Mar 17, 2020, 1:15:44 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1, shrink-to-fit=no">
	<title></title>
	<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
</head>
<body>
    
<div class="jumbotron jumbotron-fluid bg-danger text-white">
	<div class="container">
		<div align="center">
		<img class="rounded img-fluid" src="img/home.jpg">
	</div>
	</div>
    <%
                HttpSession s=request.getSession(false);
                out.print("Wellcome\t"+s.getAttribute("username"));
                if(s.getAttribute("username")==null){
               response.sendRedirect("login1.jsp");
                }
%>
</div>
</body>
</html>
