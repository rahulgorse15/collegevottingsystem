package Database;
import java.sql.*;
public class Select {
    public static ResultSet getdata(Connection con,String msg){
    ResultSet rs=null;
    try{
    Statement stmt=con.createStatement();
    rs=stmt.executeQuery(msg);
    }
    catch(SQLException e){
        System.out.println("Query Error");
    }
    return rs;
    }
}
