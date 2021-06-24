package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Status", urlPatterns = {"/Status"})
public class Status extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid);  
        PrintWriter out =response.getWriter();
        out.print(id);
    }


}
