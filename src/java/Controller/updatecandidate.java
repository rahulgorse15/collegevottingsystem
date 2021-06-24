package Controller;
import Database.*;
import Bean.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.lang.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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

@WebServlet(name = "updatecandidate", urlPatterns = {"/updatecandidate"})
public class updatecandidate extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              
            PrintWriter out=response.getWriter();
            CandidateupBean cb= new CandidateupBean();
            cb.setCname(request.getParameter("cname"));
            String cid1=request.getParameter("cid");
            cb.setCadd(request.getParameter("cadd"));
            cb.setDep(request.getParameter("dep"));
            cb.setGender(request.getParameter("gender"));
            cb.setDob(request.getParameter("dob"));
           int c2=Integer.parseInt(cid1);
           cb.setCid(c2);
           // cb.setPhoto(request.getParameter("photo"));
           Path path = Paths.get(request.getParameter("photo")); 
  
        // call getFileName() and get FileName path object 
        Path fileName = path.getFileName(); 
String root = getServletContext().getRealPath("/");

//out.print(path1);
 File file = new File(root);
        String aa=file.getParent();
        File fil = new File(aa);
        String a1=fil.getParent();
String p=a1+"/web/photo/candidate";        
  
// String p="C:/Users/Rahul/Documents/NetBeansProjects/Voting System/web/photo/voter";
       String photo1=null;   
        // print FileName 
        out.print("FileName: "
                           +p+"/"+ fileName.toString()); 
        OutputStream out1 = null;
          String fi="voter";
            InputStream filecontent = null;
           out1 = new FileOutputStream(new File(p + File.separator
                + fileName));
           filecontent = new FileInputStream(new File(request.getParameter("photo")));
       //out.print(out1);
        int read = 0;
        final byte[] bytes = new byte[1024];
 
        while ((read = filecontent.read(bytes)) != -1) {
            out1.write(bytes, 0, read);
           
         photo1=fileName.toString();
             }
        //   out.print(photo1);
       
    
            cb.setPhoto(photo1);

              
            boolean a=cb.addcandidate();
            if(a){
                 out.println("<script type=\"text/javascript\">");
   out.println("alert('Update Successfully !');");
   out.println("location='viewelection.jsp';");
   out.println("</script>");  
        
               // response.sendRedirect("viewelection.jsp");
            }
      else
              out.println("<script type=\"text/javascript\">");
   out.println("alert('sorry update is not possible due to some problem !');");
   out.println("location='viewelection.jsp';");
   out.println("</script>");  
    }

    

    
}
