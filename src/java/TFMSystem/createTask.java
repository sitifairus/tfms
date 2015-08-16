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
import package1.DB;


/**
 *
 * @author on
 */
@WebServlet(name = "createTask", urlPatterns = {"/createTask"})
public class createTask extends HttpServlet {

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
            String officeName=request.getParameter("officeName");
            String taskName=request.getParameter("taskName");
            String officeID=request.getParameter("officeID");
            String coordinator=request.getParameter("userID");
            String startDate=request.getParameter("startDate");
            String endDate=request.getParameter("endDate");
            
            DB db= new DB();
            //System.out.println("password:");
            if(db.connect())
            {
                db.query("INSERT INTO tf(TFname,officeID,coordinatorID,startDate,endDate) VALUES('"+taskName+"','"+officeID+"','"+coordinator+"','"+startDate+"','"+endDate+"')");
                db.query("SELECT * FROM tf WHERE TFname='"+taskName+"'");
                String taskID=db.getDataAt(0, "idTF");
                System.out.println(taskID);
                db.query("INSERT INTO tf_member(tfID, userID, GStatus, position, startDate, endDate) VALUES('"+taskID+"', '"+coordinator+"', 'Coordinator', 'Leader', '"+startDate+"', '"+endDate+"')");
                out.println("Done");
                db.close();
                System.out.println("Input has been accepted");
                response.sendRedirect("Admin/viewCTinfo.jsp");
            }
            else
            {
                System.out.println("not connecteed!!");
            }
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet createTask</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet createTask at " + request.getContextPath() + "</h1>");
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
