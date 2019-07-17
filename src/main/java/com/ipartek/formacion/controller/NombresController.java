package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NombresController
 */	
@WebServlet("/nombres")
public class NombresController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ArrayList<String> nombres = new ArrayList<String>();
    ArrayList<String> resultado;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NombresController() {
        super();

       
       
    }

    
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String buscar =request.getParameter("buscar");

		 if(buscar==null ||  buscar.isEmpty()) {
			 listarNombres();
			 request.setAttribute("nombres",nombres);
			 request.setAttribute("buscar", buscar);
			 request.setAttribute("mensaje", null);
		 }else {
			 resultado = new ArrayList<String>();
			 request.setAttribute("buscar", buscar);
			 request.setAttribute("mensaje", null);
		
		for(int i=0;i<nombres.size();i++) {
			if(nombres.get(i).equalsIgnoreCase(buscar)) {
			
				resultado.add(nombres.get(i));
			}
			
		}
		 request.setAttribute("nombres",resultado);
		
		 }
		
		 
		

		request.getRequestDispatcher("ejemplos/nombres.jsp").forward(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nuevo= request.getParameter("nombre").trim();
		Alert mensaje =new Alert("danger","Nombre no valido");
		if(nuevo != null || !"".equals(nuevo)) {
				nombres.add(nuevo);
				mensaje =new Alert("success","Nombre creado correctamente");
		}
		request.setAttribute("mensaje",mensaje);	
		request.setAttribute("nombres", nombres);
		request.getRequestDispatcher("ejemplos/nombres.jsp").forward(request, response);
	}

	

	private void listarNombres() {
		
		nombres = new ArrayList<String>();
	    nombres.add("Manolo");
	    nombres.add("Pepito");
	    nombres.add("Ursiciano");
	    nombres.add("Agapito");
	
	}


}
