package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.model.dao.YoutubeDAO;

/**
 * Servlet implementation class YoutubeController
 */
@WebServlet("/youtube")
public class YoutubeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public YoutubeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		YoutubeDAO youtubeDAO = YoutubeDAO.getInstance(); 
		String op= request.getParameter("op");
		
		
		switch ("op") {
		case "1":
		request.setAttribute("videos", youtubeDAO.getAll());
		request.getRequestDispatcher("youtube/index.jsp").forward(request, response);
			break;

		case "2":
		request.getRequestDispatcher("youtube/formulario.jsp").forward(request, response);
		break;
		default:
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

}
