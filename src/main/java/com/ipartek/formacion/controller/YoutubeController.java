package com.ipartek.formacion.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.controller.pojo.Alert;
import com.ipartek.formacion.model.dao.YoutubeDAO;
import com.ipartek.formacion.model.pojo.Youtube;
import com.itextpdf.text.Document;

/**
 * Servlet implementation class YoutubeController
 */
@WebServlet("/youtube")
public class YoutubeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String VIEW_INDEX = "youtube/index.jsp";   
    private static final String VIEW_FORM = "youtube/formulario.jsp";
    private static final String VIEW_DETALLE = "youtube/detalle.jsp";
    private static String view = VIEW_INDEX;
    
    public static final String OP_LISTAR = "1";
	public static final String OP_FORM = "2";   
	public static final String OP_MODIFICAR = "3"; 
	public static final String OP_BORRAR="4";
	public static final String OP_DETALLE="5";
    public static final String GUARDAR="6";
    public static final String ELIMINAR="7";
	
	private static YoutubeDAO youtubeDAO;
	private static String op;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public YoutubeController() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
    	super.init(config);
    	youtubeDAO = YoutubeDAO.getInstance();
    	
    }
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doProcess(request, response);
		
		
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}
	
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 op = request.getParameter("op");
		if(op==null) {
			view=OP_LISTAR;
		}
		 		
		switch (op) {
		case OP_LISTAR:
			listar(request, response);
		break;
		case OP_FORM:
			detalle(request, response);
		break;
		case OP_MODIFICAR:
			detalle(request, response);
			break;
		case OP_BORRAR:
			detalle(request, response);
			break;
		case OP_DETALLE:
			detalle(request, response);
			break;
		case GUARDAR:
			crearomodificar(request, response);
			break;
		case ELIMINAR:
			eliminar(request, response);
			break;
		default:
		
			break;
		}
		
		request.getRequestDispatcher(view).forward(request, response);
	}
	
	

	protected void listar(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("videos", youtubeDAO.getAll());
		
		view=VIEW_INDEX;
				
		
	}
	
	protected void detalle(HttpServletRequest request, HttpServletResponse response) {
		if(request.getParameter("id")!=null) {
		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);
	
		Youtube video = youtubeDAO.getById(id);
		request.setAttribute("video", video);
		request.setAttribute("op", op);
		}else {
			request.setAttribute("video", new Youtube());
			request.setAttribute("op", op);
		}
		view=VIEW_FORM;
	}
	
	protected void crearomodificar(HttpServletRequest request, HttpServletResponse response) {
		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);
		
		Youtube video = new Youtube();
		video.setId(id);
		video.setNombre(request.getParameter("nombre"));
		video.setCodigo(request.getParameter("codigo"));
		
		try {
			youtubeDAO.save(video);

			listar(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//Youtube video = youtubeDAO.getById(id);
		
		
		request.setAttribute("mensaje", new Alert("success","Registro creado con exito"));
		request.setAttribute("video", video);
		request.setAttribute("op", op);
	
	}
	
	
	private void eliminar(HttpServletRequest request, HttpServletResponse response) {
			
		int id = Integer.parseInt(request.getParameter("id"));
		youtubeDAO.delete(id);
		request.setAttribute("mensaje", new Alert("success","Registro eliminado"));
		listar(request, response);
	
		
	}
	
	

}
