package Database;
import java.sql.*;

public class insert {
public static boolean insertupdate(Connection con,String msg){
    Statement stmt=null;
    try{
        stmt=con.createStatement();
        stmt.executeUpdate(msg);
    }
    catch(SQLException e){
        System.out.println(e);
    }
    return true;    
    }
}