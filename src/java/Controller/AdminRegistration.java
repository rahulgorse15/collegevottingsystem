package Controller;
import Database.*;
import Bean.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
@WebServlet(name = "AdminRegistration", urlPatterns = {"/AdminRegistration"})
public class AdminRegistration extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
       PrintWriter out=response.getWriter();
        AdminBeanR ar=new AdminBeanR();
        ar.setName(request.getParameter("name"));
        ar.setGender(request.getParameter("gender"));
        ar.setAdd(request.getParameter("add"));
        ar.setContact(request.getParameter("contact"));
        ar.setEmail(request.getParameter("email"));
        ar.setPass(request.getParameter("pass"));
        String pass=request.getParameter("pass1");
        
        if(ar.getPass().equals(pass)){
        
        if(ar.register()){
        //response.sendRedirect("login1.jsp");
            out.println("<script type=\"text/javascript\">");
   out.println("alert('Register Successfully !');");
   out.println("location='login1.jsp';");
   out.println("</script>");
        }
        else{
       // response.sendRedirect("adminregistration.jsp");
          out.println("<script type=\"text/javascript\">");
   out.println("alert('Register Successfully !');");
   out.println("location='adminregistration.jsp';");
   out.println("</script>");  
        
        }
        
    }
        else{
        out.println("<script type=\"text/javascript\">");
   out.println("alert('Please Enter password and confirm Password Same !');");
   out.println("location='adminregistration.jsp';");
   out.println("</script>");  
        }
    
    }
}
