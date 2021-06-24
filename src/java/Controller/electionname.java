package Controller;

import Bean.ElectionnameBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "electionname", urlPatterns = {"/electionname"})
public class electionname extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
PrintWriter out=response.getWriter();
            ElectionnameBean eb=new ElectionnameBean();
            eb.setElename(request.getParameter("elename"));
            try {
         boolean a = eb.addelectionname();
     
            if(a){
                  out.println("<script type=\"text/javascript\">");
   out.println("alert('New name Added Successfully !');");
   out.println("location='index.jsp';");
   out.println("</script>");   
                //response.sendRedirect("candidate.jsp");
            }
            }
        catch (Exception ex) {
          Logger.getLogger(newcandidate.class.getName()).log(Level.SEVERE, null, ex);
      }

        
           
    }

}
