package Bean;

import Database.Databas;
import Database.Select;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;

public class ApproveBean implements Serializable{
    public String vname,dob,vadd,email,contact,gender,dept,photo;
    public int vid;

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getVadd() {
        return vadd;
    }

    public void setVadd(String vadd) {
        this.vadd = vadd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public int getVid() {
        return vid;
    }

    public void setVid(int vid) {
        this.vid = vid;
    }
   
    public ResultSet search() throws Exception{
        Connection con=null;
      con=  Databas.getconnection();
    ResultSet rs=null;
     rs=  Select.getdata(con,"select * from voter");
     
     
        return rs;
   }
}
