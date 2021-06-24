package Controller;

import Bean.ApproveBean;
import Bean.ViewelectionBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Approve", urlPatterns = {"/Approve"})
public class Approve extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           PrintWriter out=response.getWriter();
try{
ApproveBean ap= new ApproveBean();
           ResultSet rs=null;
                   rs=ap.search();
           if(rs.next()){
         ap.setVid(rs.getInt(1));
         ap.setVname(rs.getString(2));
         ap.setDob(rs.getString(3));
         ap.setVadd(rs.getString(4));
         ap.setEmail(rs.getString(5));
         ap.setContact(rs.getString(7));
         ap.setGender(rs.getString(8));
         ap.setPhoto(rs.getString(9));
     //response.sendRedirect("approvevoter.jsp");
      out.println("<script type=\"text/javascript\">");
   out.println("alert('Voter Approve Successfully !');");
   out.println("location='approvevoter.jsp';");
   out.println("</script>"); 
           }
           else{
                 out.println("<script type=\"text/javascript\">");
   out.println("alert('Voter Not Approve Due to some problem try again !');");
   out.println("location='approvevoter.jsp';");
   out.println("</script>"); 
           }
    }
catch(Exception e){
    out.print(e);
}
    }
    

}
