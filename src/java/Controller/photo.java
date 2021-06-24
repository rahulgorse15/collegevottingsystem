package Controller;

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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "photo", urlPatterns = {"/photo"})
public class photo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
Path path = Paths.get(request.getParameter("photo")); 
  PrintWriter out=response.getWriter();
        // call getFileName() and get FileName path object 
        Path fileName = path.getFileName(); 
   String p="C:/Users/Rahul/Documents/NetBeansProjects/Voting System/web/photo/voter";
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
       out.print(out1);
        int read = 0;
        final byte[] bytes = new byte[1024];
 
        while ((read = filecontent.read(bytes)) != -1) {
            out1.write(bytes, 0, read);
           
        photo1=p+"/"+fileName;
             }
           out.print(photo1);
       
    }


}
