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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

@WebServlet(name = "adminlogin", urlPatterns = {"/adminlogin"})
public class adminlogin extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out =response.getWriter();
                HttpSession s=request.getSession();

        try{
            AdminlogBean ad=new AdminlogBean();
            
            ad.setName(request.getParameter("name"));
            ad.setPass(request.getParameter("pass"));
           ResultSet rs=ad.check();
        
            if(rs.next()){
                String a=rs.getString(1);
                s.setAttribute("username", a);
                //out.print(a);
                //out.print("user name ="+s.getAttribute("username"));
                out.println("<script type=\"text/javascript\">");
   out.println("alert('Login  Successfully !');");
   out.println("location='index.jsp';");
   out.println("</script>");   
               // response.sendRedirect("index.jsp");
                }
            else{
                //out.print("sorry no available");
                 out.println("<script type=\"text/javascript\">");
   out.println("alert('Login  Failed! please enter valied usenname and password !');");
   out.println("location='login1.jsp';");
   out.println("</script>");   
            }
        }
        catch(Exception e){
            out.print(e);
        }
        }
        
    
}
