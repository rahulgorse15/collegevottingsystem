
package connn;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "connection", urlPatterns = {"/connection"})
public class connection extends HttpServlet {
protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String name=request.getParameter("name");
       String pass=request.getParameter("pass");
     
        PrintWriter out=response.getWriter();
        out.print("wellcome");
        try{
			 Class.forName("org.postgresql.Driver");
		        Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/vote","postgres","admin");
		        Statement stmt=con.createStatement();
		        ResultSet rs=stmt.executeQuery("select * from adminlogin where username='"+name+"' and password='"+pass+"'");
		        if(rs.next()){
		        out.print(rs.getString(1)+rs.getString(2)+rs.getString(3));
                       
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

    

  
