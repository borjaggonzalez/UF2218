package com.ipartek.formacion.controller;

import java.awt.print.Pageable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

/**
 * Servlet implementation class ContetTypeController
 */
@WebServlet("/servlet3")
public class ContetTypeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContetTypeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String tipo=request.getParameter("p");
		PrintWriter out = response.getWriter();
	
		
		switch (tipo) {
		case "1":
			response.setContentType("text/plain");
			out.print("Nombre: Bubba ");
			out.print("");
			out.print(" Raza: Boxer");
			break;
		case "2":
			response.setContentType("text/html");
			out.print("<p>Bubba <br/> Boxer</p>");
			break;
		case "3":
			response.setContentType("application/json");
			out.print( " { ");
			out.print(" \"nombre\": \"buba\", ");
			out.print( " \"raza\": \"boxer\" ");
			out.print( " } ");
			break;	
		case "4":
			response.setContentType("application/pdf");
			writePDF();
		break;


		default:
			response.setContentType("text/plain");
			out.print("Nombre: Bubba ");
			out.print("");
			out.print(" Raza: Boxer");
			break;
			
		}
		
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	
	   private static void writePDF() {
		   
	        Document document = new Document();
	        		
	        try {
	        	
	        	String path = new File(".").getCanonicalPath();
	        	String FILE_NAME = path + "/perro.pdf";
	        	
	            PdfWriter.getInstance(document, new FileOutputStream(new File(FILE_NAME)));
	 
	            document.open();
	 
	            Paragraph paragraphHello = new Paragraph();
	            paragraphHello.add("PERRO PDF");
	            paragraphHello.setAlignment(Element.ALIGN_JUSTIFIED);
	 
	            document.add(paragraphHello);
	 
	            Paragraph paragraphLorem = new Paragraph();
	            paragraphLorem.add("Nombre:Bubba");
	            java.util.List<Element> paragraphList = new ArrayList<>();
	            
	            paragraphList = paragraphLorem.breakUp();
	 
	            Font f = new Font();
	            f.setFamily(FontFamily.COURIER.name());
	            f.setStyle(Font.BOLDITALIC);
	            f.setSize(14);
	            
	            Paragraph p3 = new Paragraph();
	            p3.setFont(f);
	            p3.addAll(paragraphList);
	            p3.add("Raza: Boxer");
	 
	          
	            document.add(p3);
	            document.close();
	 
	        } catch (FileNotFoundException | DocumentException e) {
	            e.printStackTrace();
	        } catch (IOException e) {
				e.printStackTrace();
			}
	 
	    }
	}
	
	
	
	
	

