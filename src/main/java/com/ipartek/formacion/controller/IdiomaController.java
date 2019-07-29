package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class IdiomaController
 */
@WebServlet("/i18n")
public class IdiomaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Locale locale;
		String language="es";
		String country="ES";
		String ruta;		
		String idiomaSeleccionado = request.getParameter("idiomaSeleccionado");
		if(idiomaSeleccionado!=null) {
			language = idiomaSeleccionado.split("_")[0];
			country = idiomaSeleccionado.split("_")[1];
		}
	
		 ruta = request.getParameter("ruta");
		 
		 if(ruta == null) {
			 ruta="ejemplos/i18n.jsp"; 
		 }
		locale = new Locale(language, country);
		
			
		
		ResourceBundle properties = ResourceBundle.getBundle("i18n/i18nmessages", locale);

		HttpSession session = request.getSession();
		session.setAttribute("idiomaSeleccionado", idiomaSeleccionado);
		
		
		request.setAttribute("mensajeInicio",properties.getString("menu.inicio"));
		request.setAttribute("mensajeIdioma", idiomaSeleccionado);
		
		

		request.getRequestDispatcher(ruta).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
