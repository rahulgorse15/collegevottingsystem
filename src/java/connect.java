
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author Rahul
 */
@WebServlet(urlPatterns = {"/connect"})
public class connect extends HttpServlet {
protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String name=request.getParameter("name");
       String pass=request.getParameter("pass");
       
        PrintWriter out=response.getWriter();
        try{
        Class.forName("org.postgresql.Driver");
        Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/vote","postgres","admin");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from adminlogin");
        if(rs.next()){
        out.print(rs.getString(1)+rs.getString(2));
        }
        else{
                out.print("sorry");
                }
        
        
    }
    
catch(Exception e){
out.print(e);
}
    
    }

    

}
