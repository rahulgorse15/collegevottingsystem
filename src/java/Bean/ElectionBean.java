package Bean;
import Controller.newelection;
import java.io.Serializable;
import Database.*;
import java.sql.*;
public class ElectionBean implements Serializable{
    String elename, eledate;

    public String getElename() {
        return elename;
    }

    public void setElename(String elename) {
        this.elename = elename;
    }

    public String getEledate() {
        return eledate;
    }

    public void setEledate(String eledate) {
        this.eledate = eledate;
    }
    public boolean addelection(){
    Connection con=null;
      con=  Databas.getconnection();
     boolean a=   insert.insertupdate(con,"insert into election(eleid,elename,eledate) values(DEFAULT,'"+elename+"','"+eledate+"')");
//     insert.insertupdate(con,"insert into admin values('"+name+"','"+gender+"','"+add+"',"+contact+",'"+email+"','"+pass+"')");
     if(a)
     return true;
    else
         return false;
    }
    
}
