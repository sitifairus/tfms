/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package TFMSystem;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Utilities;
import org.apache.commons.io.FilenameUtils;
import java.sql.*;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.*;
import java.util.*;
import java.io.*;
import java.util.Iterator;
import java.util.List;
import java.io.File;


import package1.DB;

/**
 *
 * @author on
 */
@WebServlet(name = "Test", urlPatterns = {"/Test"})
public class Test extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String userID=null;
            String password=null;
            String userType=null;
            String name=null;
            String staffID=null;
            String office=null;
            String phone=null;        
            String email=null;    
            String gender=null;
            String position=null;               
            String department=null;                       
            String qualification=null;                        
            //String day=null;                                
            //String month=null;                                
            //String year=null;                                            
                                        
            userID=request.getParameter("userID");
            password=request.getParameter("password");
            userType=request.getParameter("userType");
            gender=request.getParameter("gender");
            office=request.getParameter("office");
            name=request.getParameter("name");
            staffID=request.getParameter("staffID");       
            phone=request.getParameter("phone");       
            email=request.getParameter("email");            
            position=request.getParameter("position");             
            department=request.getParameter("department");                      
            qualification=request.getParameter("qualification");           
            String startDate=request.getParameter("startDate");
            DB db= new DB();
            //System.out.println("password:");
            if(db.connect())
            {
                out.println("password:"+userID);
                db.query("insert into user(userID,password,staffID,userType,name,email,position,department,status,Qualification,phone,office,gender, startDate) values('"+userID+"','"+password+"','"+staffID+"','"+userType+"','"+name+"','"+email+"','"+position+"','"+department+"','active','"+qualification+"','"+phone+"','"+office+"','"+gender+"','"+startDate+"')");
                out.println("Done");
                db.close();
                out.println("Input has been accepted");
                response.sendRedirect("Admin/viewStaff.jsp");
            }
            else
            {
                System.out.println("not connecteed!!");
            }
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Test</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Test at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
