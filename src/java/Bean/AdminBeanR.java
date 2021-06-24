package Bean;
import Controller.AdminRegistration;
import java.io.Serializable;
import Database.*;
import java.sql.*;
public class AdminBeanR implements Serializable{
      String name,gender,add,email,pass;
      String contact;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
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

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
    public boolean register(){
    Connection con=null;
      con=  Databas.getconnection();
  boolean a=   insert.insertupdate(con,"insert into admin(name,gender,adde,mono,email,pass) values('"+name+"','"+gender+"','"+add+"','"+contact+"','"+email+"','"+pass+"')");
//     insert.insertupdate(con,"insert into admin values('"+name+"','"+gender+"','"+add+"',"+contact+",'"+email+"','"+pass+"')");
     if(a)
     return true;
    else
         return false;
    }
     
}
