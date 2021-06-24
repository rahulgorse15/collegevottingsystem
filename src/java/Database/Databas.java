
package Database;
import java.sql.*;
public class Databas {
    public static Connection getconnection(){
    Connection con=null;
    try{
        
Class.forName("com.mysql.jdbc.Driver");  
   // Class.forName("org.postgresql.Driver");
   // con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/vote","postgres","admin");
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vote","root","");
    }
    catch(Exception e){
    
    }
        return con;
    
    }
}
