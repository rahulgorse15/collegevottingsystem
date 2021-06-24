package Bean;

import Database.Databas;
import Database.Select;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;

public class ViewelectionBean  implements Serializable{

     int eid;
   
    String ename,edate,cname,dept,add,gender,dob,photo;

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }
    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getEdate() {
        return edate;
    }

    public void setEdate(String edate) {
        this.edate = edate;
    }
    
    public ResultSet search() throws Exception{
    Connection con=null;
      con=  Databas.getconnection();
    ResultSet rs=null;
    
      rs=  Select.getdata(con,"select * from election where elename='"+ename+"'");
    if(rs.next()){
        eid=rs.getInt(1);
        edate=rs.getString(3);
    }
   
    
   return rs;
    
    }
}
