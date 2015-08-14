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

/**
 *
 * @author asus
 */
public class alterLetter {
    public static void main(String args[]){
		try {
			PdfReader pdfReader;	
                    pdfReader = new PdfReader("C:\\Users\\on\\Desktop\\AD\\TFMsystem\\web\\Appointment letter.pdf");	
                    //pdfReader = new PdfReader("C:\\Users\\asus\\Desktop\\TFMsystem\\Appointment letter.pdf");	
			
			//Create PdfStamper instance.
			PdfStamper pdfStamper = new PdfStamper(pdfReader, new FileOutputStream("C:\\Users\\on\\Desktop\\AD\\TFMsystem\\web\\Modified appointment letter.pdf"));

			   //new FileOutputStream("C:\\Users\\asus\\Desktop\\TFMsystem\\Modified appointment letter.pdf"));

			
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
				pageContentByte.setFontAndSize(baseFont, 12);
                                
				//Write text
				pageContentByte.setTextMatrix(120, 706);
                                pageContentByte.showText("[no rujukan(enter by admin/opai)]");
                                
                                pageContentByte.setTextMatrix(500, 706);
                                pageContentByte.showText("[current date]");
                                //address
                                pageContentByte.setTextMatrix(46, 641);
                                pageContentByte.showText("[name]");
                                 pageContentByte.setTextMatrix(46, 629);
                                pageContentByte.showText("[position]");
                                 pageContentByte.setTextMatrix(46, 617);
                                pageContentByte.showText("[department]");
                                
				pageContentByte.setTextMatrix(155, 493);
                                pageContentByte.showText("[status(penyelaras/ahli),taskforce name]");
                                
                                pageContentByte.setTextMatrix(178, 433);
                                pageContentByte.showText("[start date]");
                                
                                pageContentByte.setTextMatrix(290, 433);
                                pageContentByte.showText("[end date] .");
                                
                                pageContentByte.setTextMatrix(46, 248);
                                pageContentByte.showText("[name]");
                                pageContentByte.setTextMatrix(46, 236);
                                pageContentByte.showText("[post]");
                                pageContentByte.setTextMatrix(46, 224);
                                pageContentByte.showText("[faculty]");
                                pageContentByte.setTextMatrix(46, 212);
                                pageContentByte.showText("[email]");
                                
                                
                                pageContentByte.endText();
			}
			
			//Close the pdfStamper.
			pdfStamper.close();	
			
			System.out.println("PDF modified successfully.");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
