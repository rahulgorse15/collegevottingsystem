<%-- 
    Document   : logout
    Created on : Mar 17, 2020, 1:28:18 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
         
    <%
         out.println("<script type=\"text/javascript\">");
   out.println("alert('Logout Successfully !');");
   out.println("location='login.jsp';");
   out.println("</script>");  
    HttpSession s=request.getSession(false);
    s.invalidate();
    //response.sendRedirect("login.jsp");
    %>
    </body>
</html>
