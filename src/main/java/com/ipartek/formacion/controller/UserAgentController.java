package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserAgentController
 */
@WebServlet("/useragent")
public class UserAgentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAgentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request,response);
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request,response);
	}
	
	
	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String userAgent = request.getHeader("user-agent");
	
		String navegador="";
		String movil="";
		if(userAgent.contains("Chrome")) {
		navegador= "<i class=\"fab fa-2x fa-chrome\"></i> Chrome";
		}else if(userAgent.contains("Firefox")){
		navegador= "<i class=\"fab fa-2x fa-firefox\"></i> Firefox";
		}else if(userAgent.contains("Trident")){
		navegador= "<i class=\"fab fa-2x fa-internet-explorer\"></i> Internet Explorer";
		}else {
			navegador ="otro";
		}
		
		
		
			if(userAgent.contains("Mobile")) {
				movil= "<i class=\"fas fa-2x fa-mobile-alt\"></i>";
			}else{
				movil= "<i class=\"fas fa-2x fa-laptop\"></i>";
			}
		
	
		request.setAttribute("navegador",navegador);
		request.setAttribute("movil",movil);
				
		request.getRequestDispatcher("ejemplos/basico2.jsp").forward(request, response);
		
	}

}
