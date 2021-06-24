package Controller;

import Bean.VoterBeanR;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

  @MultipartConfig(fileSizeThreshold=1024*1024*2, 
maxFileSize=1024*1024*10, 
maxRequestSize=1024*1024*50)
@WebServlet(name = "VoterRegistration", urlPatterns = {"/VoterRegistration"})
public class VoterRegistration extends HttpServlet {
 
      protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
          PrintWriter out=response.getWriter();
            VoterBeanR vb = new VoterBeanR();
         
            vb.setVname(request.getParameter("vname"));
            vb.setContact(request.getParameter("contact"));
            vb.setDept(request.getParameter("dept"));
            vb.setDob(request.getParameter("dob"));
            vb.setEmail(request.getParameter("email"));
            vb.setGender(request.getParameter("gender"));
            vb.setPass(request.getParameter("pass"));
            vb.setVadd(request.getParameter("add"));
            String pass=request.getParameter("pass1");
     
            
            
        if(vb.getPass().equals(pass)){
             
            Path path = Paths.get(request.getParameter("photo"));//retrive file from html page 
 
            // call getFileName() and get FileName path object 
            Path fileName = path.getFileName(); //seperate file name
String root = getServletContext().getRealPath("/");
File path1 = new File(root + "/uploads");

//out.print(path1);
 File file = new File(root);
        String aa=file.getParent();
        File fil = new File(aa);
        String a1=fil.getParent();
String p=a1+"/web/photo/voter";        
            
//String p="C:/Users/Rahul/Documents/NetBeansProjects/Voting System/web/photo/voter";//path of folder where we want store file full pathh
                        
            String photo1=null;   
    
        OutputStream out1 = null;
          String fi="voter";//folder name where we want store image
            InputStream filecontent = null;
           out1 = new FileOutputStream(new File(p + File.separator
                + fileName));
           filecontent = new FileInputStream(new File(request.getParameter("photo")));
       out.print(out1);
        int read = 0;
        final byte[] bytes = new byte[1024];
 
        while ((read = filecontent.read(bytes)) != -1) {
            out1.write(bytes, 0, read);
           
        photo1=fileName.toString();
             } 
    
            vb.setPhoto(photo1);
                             
            boolean a=vb.addvoter();
            if(a){
                out.println("<script type=\"text/javascript\">");
   out.println("alert('Register Successfully !');");
   out.println("location='Voterlogin.jsp';");
   out.println("</script>");
              //  response.sendRedirect("Voterlogin.jsp");
            }
            else{
                 out.println("<script type=\"text/javascript\">");
   out.println("alert('registration no don due to some problem');");
   out.println("location='voterregistration.jsp';");
   out.println("</script>");
            }
    }
        else{
         out.println("<script type=\"text/javascript\">");
   out.println("alert('Please Enter password and confirm Password Same !');");
   out.println("location='voterregistration.jsp';");
   out.println("</script>");  
        }
      }

}
