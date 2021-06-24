
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

@WebServlet(name = "newelection", urlPatterns = {"/newelection"})
public class newelection extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ElectionBean eb=new ElectionBean();
        PrintWriter out=response.getWriter();
        eb.setElename(request.getParameter("elename"));
        eb.setEledate(request.getParameter("eledate"));
         boolean a=eb.addelection();
        if(a){
       // response.sendRedirect("newelection.jsp");
           out.println("<script type=\"text/javascript\">");
   out.println("alert('New Election Added Successfully !');");
   out.println("location='newelection.jsp'");
   out.println("</script>");   
        }
        else{
            out.println("<script type=\"text/javascript\">");
   out.println("alert('New Election Not Added due to some error please try again !');");
   out.println("location='newelection.jsp'");
   out.println("</script>"); 
            //out.print("election not added due to some error");
        }
        
    }
}
