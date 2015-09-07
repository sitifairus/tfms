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
import javax.servlet.http.HttpSession;
import package1.DB;
/**
 *
 * @author on
 */
@WebServlet(name = "LoginVerification", urlPatterns = {"/LoginVerification"})
public class LoginVerification extends HttpServlet {

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
            
            
            String userN = request.getParameter("username");
             String passs= request.getParameter("password");
             String username=null;
             String status=null;
             String userType=null;
            DB db= new DB();
            //System.out.println("password:");
            if(db.connect())
            {
            db.query("select * from user where userID='"+userN+"' and password='"+passs+"' ");
            username=db.getDataAt( 0,"userID");

            if(username!=null)
            {
                status=db.getDataAt( 0,"status");
                userType=db.getDataAt( 0,"userType");
                HttpSession session = request.getSession(true);
                session.setAttribute("user", username);
                session.setAttribute("userType",userType);
                session.setAttribute("status", status);
                if(status.equals("active"))
                {
                    if(userType.equals("admin")||userType.equals("Admin"))
                    {
                        response.sendRedirect("Admin/HomePageAdmin.jsp");
                    }
                    else if(userType.equals("lecturer")||userType.equals("Lecturer"))
                    {
                        response.sendRedirect("Staff/HomePageStaff.jsp");
                    }
                    else
                    {
                        response.sendRedirect("Pentadbir/HomePagePentadbir.jsp");
                    }
                     
                }
                else
                {
                    out.println("your account not active!");
                    
                }
            }
            else
            {
                System.out.println("wrong username or password");
                response.sendRedirect("Login.jsp");
            }
         }
         else
         {
             System.out.println("not connecteed!!");
         }
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
