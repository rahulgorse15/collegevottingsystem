
package Controller;
import Database.*;
import Bean.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Viewelection", urlPatterns = {"/Viewelection"})
public class Viewelection extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        
         HttpSession el=request.getSession();
        
        try{
ViewelectionBean vb= new ViewelectionBean();
      vb.setEname(request.getParameter("elename"));
      String a=request.getParameter("elename");
           ResultSet rs=null;
                   rs=vb.search();
        
            if(rs.next()){
               el.setAttribute("rs", rs);
               response.sendRedirect("newjsp1.jsp");
            }
            else
                out.print("no record found");
        } catch (Exception e) {
            out.print(e);
        }
        
    }

}

