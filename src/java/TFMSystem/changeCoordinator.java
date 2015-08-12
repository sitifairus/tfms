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
@WebServlet(name = "changeCoordinator", urlPatterns = {"/changeCoordinator"})
public class changeCoordinator extends HttpServlet {

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
            String newCoordinatorID=request.getParameter("newCoordinatorID");
            String taskID=request.getParameter("taskID");
            String memberIDcoor=request.getParameter("memberIDcoor");
            
            DB db = new DB();
            if(db.connect())
            {
                    if(db.query("UPDATE tf SET coordinatorID='"+newCoordinatorID+"' WHERE idTF='"+taskID+"'"))
                    {
                        db.query("SELECT * FROM tf_member WHERE userID='"+newCoordinatorID+"'");
                        String newCoorMemberID=db.getDataAt(0,"idtf_member");
                        db.query("UPDATE tf_member SET GStatus='Coordinator', position='Leader' WHERE idtf_member='"+newCoorMemberID+"'");
                        if(memberIDcoor!=null||!memberIDcoor.equals(""))
                        {
                            response.sendRedirect("terminateMember?taskID="+taskID+"&memberID="+memberIDcoor+"");
                        }
                        else
                            response.sendRedirect("Admin/viewCT.jsp?taskID="+taskID+"");
                    }
            }
             
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet changeCoordinator</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet changeCoordinator at " + request.getContextPath() + "</h1>");
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
