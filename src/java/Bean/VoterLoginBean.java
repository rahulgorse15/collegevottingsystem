/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import Database.Databas;
import Database.Select;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author Rahul
 */
public class VoterLoginBean implements Serializable{
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
    String status="active";
      con=  Databas.getconnection();
    ResultSet rs=  Select.getdata(con,"select vid, email,pass from voter where email='"+name+"'and pass='"+pass+"' and status='"+status+"'");
         return rs;
    }
}
