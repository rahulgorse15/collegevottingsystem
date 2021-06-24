/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rahul
 */
@WebServlet(name = "NewServlet", urlPatterns = {"/NewServlet"})
public class NewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   String button = request.getParameter("button");
   
PrintWriter out=response.getWriter();
out.print(button);   
if ("button1".equals(button)) {
    out.print("m1");
    method1();
        
        }
        else if ("button2".equals(button)) {
            method2();
        } else if ("button3".equals(button)) {
            method3();
        } else {
            out.print("sorry");// ???
        }

    }
public void method1(){
System.out.print("method 1");
}
public void method2(){
System.out.print("method 2");
}
public void method3(){
System.out.print("method 3");
}


    
}
