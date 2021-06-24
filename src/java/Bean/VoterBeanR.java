package Bean;
import Controller.VoterRegistration;
import java.io.Serializable;
import Database.*;
import java.io.IOException;
import java.sql.*;

public class VoterBeanR implements Serializable{
    String vname,gender,vadd,contact,dob,dept,email,pass,photo;

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getVadd() {
        return vadd;
    }

    public void setVadd(String vadd) {
        this.vadd = vadd;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
    
     public boolean addvoter() throws IOException{
        
    Connection con=null;
      con=  Databas.getconnection();
     boolean a=   insert.insertupdate(con,"insert into voter(vid,vname,dob,vadd,email,pass,contact,gender,dept,photo,status) values(DEFAULT,'"+vname+"','"+dob+"','"+vadd+"','"+email+"','"+pass+"','"+contact+"','"+gender+"','"+dept+"','"+photo+"',DEFAULT)");
     //boolean b=   insert.insertupdate(con,"INSERT INTO voter(vid,vname, dob, vadd, email, pass, contact, gender, dept, photo, status) VALUES (DEFAULT,'rahul','2020/10/10','dffs','sds@g.c','dddfd','7709754211','Male','MCA','C:/rahul',DEFAULT)");
     if(a)
     return true;
    else
         return false;
    }
}
