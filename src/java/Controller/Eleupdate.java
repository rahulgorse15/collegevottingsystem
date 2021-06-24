
package Controller;

import Bean.ElectionupBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Eleupdate", urlPatterns = {"/Eleupdate"})
public class Eleupdate extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ElectionupBean eb=new ElectionupBean();
        PrintWriter out=response.getWriter();
        eb.setElename(request.getParameter("ename"));
        eb.setEledate(request.getParameter("edate"));
       
         String eleid=request.getParameter("eid");
        int i= Integer.parseInt(eleid);
        eb.setEleid(i);
         boolean a=eb.updatelection();
        if(a){
          //out.print(eb.getEledate());
          //out.print(eb.getEleid());
          
       //response.sendRedirect("viewelection.jsp");
            out.println("<script type=\"text/javascript\">");
   out.println("alert('Election Update Successfully !');");
   out.println("location='viewelection.jsp';");
   out.println("</script>");  
        }
        else{
            out.println("<script type=\"text/javascript\">");
   out.println("alert('Election Not Update Due to some problem try again !');");
   out.println("location='viewelection.jsp';");
   out.println("</script>"); 
       // response.sendRedirect("index.jsp");
            
        }
        
    }
    

}
