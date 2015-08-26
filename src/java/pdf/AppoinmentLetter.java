/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pdf;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import package1.DB;
import pdf.letter;

/**
 *
 * @author on
 */
@WebServlet(name = "AppoinmentLetter", urlPatterns = {"/AppoinmentLetter"})
public class AppoinmentLetter extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    //String noRujukan=null;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String name=null;
        String position=null;
        String department=null;
        String gStatus=null;
        String startDate=null;
        String endDate=null;
        String taskName=null;
        String postName=request.getParameter("postName");
        String noRujukan=null;
        String postHolderName=null;
        String postHolderEmail=null;
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String memberID=request.getParameter("memberID");
            noRujukan=request.getParameter("noRujukan");
            
            
            DB db = new DB();
            letter Letter= new letter();
            if(db.connect())
            {
                if(db.query("SELECT user.name, user.position, user.department, tf_member.GStatus, tf_member.StartDate, tf_member.EndDate, tf.TFname FROM user INNER JOIN tf_member ON user.userID=tf_member.userID INNER JOIN tf ON tf_member.tfID=tf.idTF WHERE tf_member.idtf_member='"+memberID+"'"))
                {
                    name=db.getDataAt(0, "name");
                    position=db.getDataAt(0, "position");
                    department=db.getDataAt(0, "department");
                    gStatus=db.getDataAt(0, "GStatus");
                    startDate=db.getDataAt(0, "StartDate");
                    endDate=db.getDataAt(0, "EndDate");
                    taskName=db.getDataAt(0, "TFname");
                    
                    if(db.query("SELECT * FROM user INNER JOIN ak_position ON user.userID=ak_position.userID WHERE ak_position.postName='"+postName+"' AND ak_position.status='active'"))
                    {
                        postHolderName=db.getDataAt(0, "name");
                        postHolderEmail=db.getDataAt(0, "email");
                    }
                }
                db.close();
            }
            
            System.out.println(name);
                System.out.println(position);
                System.out.println(department);
                System.out.println(gStatus);
                System.out.println(startDate);
                System.out.println(endDate);
                System.out.println(taskName);
                System.out.println(noRujukan);
            
            if(Letter.AlterLetter(noRujukan, name, position, department, gStatus, startDate, endDate, taskName, postHolderName, postHolderEmail, postName))
            {
                System.out.println("Success");
                    
                    //File appLetter=new File("C:\\Users\\on\\Desktop\\AD\\TFMsystem\\web\\Modified appointment letter.pdf");
                    File f = new File ("C:/Users/on/Desktop/AD/TFMsystem/web/Modified appointment letter.pdf");
                    //set the content type(can be excel/word/powerpoint etc..)
                    response.setContentType ("application/pdf");
                    //set the header and also the Name by which user will be prompted to save
                    response.setHeader ("Content-Disposition", "attachment; filename=\"Appointment Letter.pdf\"");
                    System.out.println("Success2");

                    //get the file name
                    String Fname = f.getName().substring(f.getName().lastIndexOf("/") + 1,f.getName().length());
                    System.out.println("file:"+Fname);
                    //OPen an input stream to the file and post the file contents thru the 
                    //servlet output stream to the client m/c

                            InputStream in = new FileInputStream(f);
                            System.out.println("Success3");
                            ServletOutputStream outs = response.getOutputStream();
                            System.out.println("Success4");

                            int bit = 256;
                            int i = 0;
                            try {
                                    while ((bit) >= 0) {
                                            bit = in.read();
                                            outs.write(bit);
                                    }
                                    //System.out.println("" +bit);
                            } catch (IOException ioe) {
                                    System.out.println("not Success");
                                    ioe.printStackTrace(System.out);
                            }
            		System.out.println( "\n" + i + " bytes sent.");
            		System.out.println( "\n" + f.length() + " bytes sent.");
                        outs.flush();
                        outs.close();
                        in.close();	
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
