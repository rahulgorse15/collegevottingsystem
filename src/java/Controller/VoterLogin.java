/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Bean.AdminlogBean;
import Bean.VoterLoginBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "VoterLogin", urlPatterns = {"/VoterLogin"})
public class VoterLogin extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out =response.getWriter();
                HttpSession s=request.getSession();

        try{
            VoterLoginBean vb = new VoterLoginBean();
            vb.setName(request.getParameter("name"));
            vb.setPass(request.getParameter("pass"));
           ResultSet rs=vb.check();
        
            if(rs.next()){
                int vid=rs.getInt(1);
                String a=rs.getString(2);
                
                s.setAttribute("vid", vid);
                s.setAttribute("username", a);
                //out.print(a);
                //out.print("user name ="+s.getAttribute("username"));
                 out.println("<script type=\"text/javascript\">");
   out.println("alert('Login  Successfuly !');");
   out.println("location='voterhome.jsp';");
   out.println("</script>");   
                //response.sendRedirect("voterhome.jsp");
                }
            else{
                 out.println("<script type=\"text/javascript\">");
   out.println("alert('Login  Failed! please enter valied usenname and password or may not be register !');");
   out.println("location='Voterlogin.jsp';");
   out.println("</script>");   
                //out.print("sorry no available");
                 //response.sendRedirect("Voterlogin.jsp");
            
            }
        }
        catch(Exception e){
            out.print(e);
        }
    }


}
