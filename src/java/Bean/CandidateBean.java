package Bean;
import Controller.AdminRegistration;
import java.io.Serializable;
import Database.*;
import java.io.*;
import java.io.FileInputStream;
import java.nio.file.Files;
import java.sql.*;
import javax.imageio.stream.FileImageInputStream;
import javax.servlet.http.Part;

public class CandidateBean implements Serializable{

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }
    String  photo,cname,cadd,gender,dob,dep,eleid;
    int eid;
    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
     

    
    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCadd() {
        return cadd;
    }

    public void setCadd(String cadd) {
        this.cadd = cadd;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getDep() {
        return dep;
    }

    public void setDep(String dep) {
        this.dep = dep;
    }

    public String getEleid() {
        return eleid;
    }

    public void setEleid(String eleid) {
        this.eleid = eleid;
    }
    
    public boolean addcandidate() throws Exception{
        
    Connection con=null;
      con=  Databas.getconnection();
    ResultSet rs=  Select.getdata(con,"select eleid from election where elename='"+eleid+"'");
    if(rs.next()){
    eid=rs.getInt(1);
    }
     
        
      
      
       boolean a=  insert.insertupdate(con,"INSERT INTO candidate(cid, eleid, cname, cadd, gender, dob, dept, photo) VALUES (DEFAULT,"+eid+",'"+cname+"','"+cadd+"','"+gender+"','"+dob+"','"+dep+"','"+photo+"')");
       //boolean a=   insert.insertupdate(con,"insert into candidate(cid,eleid,cname,cadd,gender,dob,dept,photo) values(DEFAULT,"+ele+",'"+cname+"','"+cadd+"','"+gender+"','"+dob+"','"+dep+"','"+photo+"')");
//     insert.insertupdate(con,"insert into admin values('"+name+"','"+gender+"','"+add+"',"+contact+",'"+email+"','"+pass+"')");
     if(a)
     return true;
    else
         return false;
    }

   
    
}
