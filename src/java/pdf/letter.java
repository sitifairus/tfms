/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pdf;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfStamper;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
/**
 *
 * @author on
 */
public class letter {
    letter()
    {
        
    }
    public boolean AlterLetter(String rujukan, String name, String position, String department, String gStatus, String sDate, String eDate, String taskName, String postHolderName, String postHolderEmail, String postName)
    {
        DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
        Date today = Calendar.getInstance().getTime();
        String currDate = df.format(today);
        try {
			PdfReader pdfReader;	
                        pdfReader = new PdfReader("C:\\Users\\asus\\Desktop\\TFMsystem\\web\\Appointment letter.pdf");
                                                    //C:\\Users\\on\\Desktop\\AD\\TFMsystem\\web\\Appointment letter.pdf
			
			//Create PdfStamper instance.
			PdfStamper pdfStamper = new PdfStamper(pdfReader,
			   new FileOutputStream("C:\\Users\\asus\\Desktop\\TFMsystem\\web\\Modified appointment letter.pdf"));
                                                //C:\\Users\\on\\Desktop\\AD\\TFMsystem\\web\\Modified Appointment letter.pdf
                        
			//Create BaseFont instance.
			BaseFont baseFont = BaseFont.createFont(
	                BaseFont.TIMES_ROMAN, BaseFont.CP1257, BaseFont.NOT_EMBEDDED);
			
			//Get the number of pages in pdf.
			int pages = pdfReader.getNumberOfPages(); 
			
			//Iterate the pdf through pages.
			for(int i=1; i<=pages; i++) { 
				//Contain the pdf data.
				PdfContentByte pageContentByte = 
						pdfStamper.getOverContent(i);
				
				pageContentByte.beginText();
				//Set text font and size.
				pageContentByte.setFontAndSize(baseFont, 11);
                                
				//Write text
				pageContentByte.setTextMatrix(120, 706);
                                pageContentByte.showText(rujukan);
                                
                                pageContentByte.setTextMatrix(500, 706);
                                pageContentByte.showText(currDate);
                                //address
                                pageContentByte.setTextMatrix(46, 641);
                                pageContentByte.showText(name);
                                 pageContentByte.setTextMatrix(46, 629);
                                pageContentByte.showText(position);
                                 pageContentByte.setTextMatrix(46, 617);
                                pageContentByte.showText(department);
                                
                                String gstatus;
                                
				pageContentByte.setTextMatrix(157, 493);
                                String changeCase = gStatus+", "+taskName;
                                pageContentByte.showText(changeCase.toUpperCase());
                                
                                pageContentByte.setTextMatrix(250, 444);
                                pageContentByte.showText(gStatus+"  "+taskName+" .");
                                
                                
                                pageContentByte.setTextMatrix(180, 432);
                                pageContentByte.showText(sDate);
                                
                                pageContentByte.setTextMatrix(290, 432);
                                pageContentByte.showText(eDate+" .");
                                
                                pageContentByte.setTextMatrix(46, 248);
                                pageContentByte.showText(postHolderName);
                                pageContentByte.setTextMatrix(46, 236);
                                pageContentByte.showText(postName);
                                pageContentByte.setTextMatrix(46, 224);
                                pageContentByte.showText("Fakulti Komputeran");
                                pageContentByte.setTextMatrix(46, 212);
                                pageContentByte.showText(postHolderEmail);
                                
                                
                                pageContentByte.endText();
			}
			//Close the pdfStamper.
			pdfStamper.close();
			System.out.println("PDF modified successfully.");
                        
                        return true;
		} 
                catch (Exception e) {
			e.printStackTrace();
                        return false;
		}
	
    }
    
}
