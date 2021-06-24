/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import Database.Databas;
import Database.insert;
import java.io.Serializable;
import java.sql.Connection;

/**
 *
 * @author Rahul
 */
public class ElectionnameBean implements Serializable{
    String elename;

    public String getElename() {
        return elename;
    }

    public void setElename(String elename) {
        this.elename = elename;
    }

    public boolean addelectionname() throws Exception{
      Connection con=null;
      con=  Databas.getconnection();
     boolean a=   insert.insertupdate(con,"insert into elec(eid,ename) values(DEFAULT,'"+elename+"')");
     //boolean b=   insert.insertupdate(con,"INSERT INTO voter(vid,vname, dob, vadd, email, pass, contact, gender, dept, photo, status) VALUES (DEFAULT,'rahul','2020/10/10','dffs','sds@g.c','dddfd','7709754211','Male','MCA','C:/rahul',DEFAULT)");
     if(a)
     return true;
    else
         return false;
    }  
    }
    
    

