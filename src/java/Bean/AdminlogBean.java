package Bean;
import Controller.*;
import Database.*;
import java.io.Serializable;
import java.sql.*;
public class AdminlogBean implements Serializable{
    String name,pass;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    public ResultSet check(){
    Connection con=null;
      con=  Databas.getconnection();
    ResultSet rs=  Select.getdata(con,"select email,pass from admin where email='"+name+"'and pass='"+pass+"'");
         return rs;
    }
    
}
