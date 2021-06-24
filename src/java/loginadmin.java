
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/loginadmin"})
public class loginadmin extends HttpServlet {
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
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
