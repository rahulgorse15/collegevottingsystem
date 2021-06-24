
package Bean;
import Controller.newelection;
import java.io.Serializable;
import Database.*;
import java.sql.*;

public class ElectionupBean  implements Serializable{
    String elename, eledate;
    int eleid;

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

    public int getEleid() {
        return eleid;
    }

    public void setEleid(int eleid) {
        this.eleid = eleid;
    }

    public boolean updatelection(){
    Connection con=null;
      con=  Databas.getconnection();
        boolean a= insert.insertupdate(con,"UPDATE election SET eledate='"+eledate+"' WHERE eleid="+eleid+"");
        
      if(a)
     return true;
    else
         return false;
    }
        
}
