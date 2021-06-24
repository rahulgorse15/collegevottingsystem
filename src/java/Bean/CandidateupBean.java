/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import Database.Databas;
import Database.insert;
import java.io.IOException;
import java.io.Serializable;
import java.sql.Connection;

/**
 *
 * @author Rahul
 */
public class CandidateupBean {
    String  photo,cname,cadd,gender,dob,dep;
int cid;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

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

    
    public boolean addcandidate() throws IOException{
        
    Connection con=null;
      con=  Databas.getconnection();
     //Part source=photo;
     
        
      
      // int ele=1;
       boolean a=  insert.insertupdate(con,"UPDATE candidate SET cname='"+cname+"',cadd='"+cadd+"',gender='"+gender+"',dob='"+dob+"',dept='"+dep+"',photo='"+photo+"' WHERE cid="+cid+"");
       //boolean a=   insert.insertupdate(con,"insert into candidate(cid,eleid,cname,cadd,gender,dob,dept,photo) values(DEFAULT,"+ele+",'"+cname+"','"+cadd+"','"+gender+"','"+dob+"','"+dep+"','"+photo+"')");
//     insert.insertupdate(con,"insert into admin values('"+name+"','"+gender+"','"+add+"',"+contact+",'"+email+"','"+pass+"')");
     if(a)
     return true;
    else
         return false;
    }

   
    
}
