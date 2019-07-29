package com.ipartek.formacion.controller.backoffice
;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Set;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import com.ipartek.formacion.controller.listener.UsuariosLogeadosListener;
import com.ipartek.formacion.controller.pojo.Alert;
import com.ipartek.formacion.model.dao.YoutubeDAO;
import com.ipartek.formacion.model.pojo.Youtube;
import com.itextpdf.text.Document;

/**
 * Servlet implementation class YoutubeController
 */
@WebServlet("/backoffice/youtube")
public class YoutubeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VIEW_INDEX = "youtube/index.jsp";
	private static final String VIEW_FORM = "youtube/formulario.jsp";
	private static final String VIEW_DETALLE = "youtube/detalle.jsp";
	private static String view = VIEW_INDEX;

	public static final String OP_LISTAR = "1";
	public static final String OP_FORM = "2";
	public static final String OP_MODIFICAR = "3";
	public static final String OP_BORRAR = "4";
	public static final String OP_DETALLE = "5";
	public static final String GUARDAR = "6";
	public static final String ELIMINAR = "7";

	private static YoutubeDAO youtubeDAO;
	private static String op;
	private static Youtube ultimovideo=null;
	private static ArrayList<Youtube> videos;
	
	ValidatorFactory factory;
	Validator validator;

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
		factory = Validation.buildDefaultValidatorFactory();
		validator = factory.getValidator();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doProcess(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		op = request.getParameter("op");
		if (op == null) {
			op = OP_LISTAR;
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

		view = VIEW_INDEX;

	}

	protected void detalle(HttpServletRequest request, HttpServletResponse response) {
		
		if (request.getParameter("id") != null) {
			String sid = request.getParameter("id");
			int id = Integer.parseInt(sid);
			
			Youtube video = youtubeDAO.getById(id);
			request.setAttribute("video", video);
			request.setAttribute("op", op);
			
			
			if(op.equals(OP_DETALLE)) {
				
				if(request.getSession().getAttribute("videos") == null) {
					videos = new ArrayList<Youtube>();
				}
				
				if(ultimovideo == null || ultimovideo.getId() != video.getId()) {
					videos.add(video);
					ultimovideo=video;
				}
			
				
			request.getSession().setAttribute("videos", videos);
				
			}					
			
			
		} else {
			request.setAttribute("video", new Youtube());
			request.setAttribute("op", op);
		}
		
		if(op.equals(OP_DETALLE)) {
			
			view= VIEW_DETALLE;
		}else {
			view = VIEW_FORM;
		}

	}

	protected void crearomodificar(HttpServletRequest request, HttpServletResponse response) {
		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);

		Youtube video = new Youtube();
		video.setId(id);
		video.setNombre(request.getParameter("nombre"));
		video.setCodigo(request.getParameter("codigo"));

		Set<ConstraintViolation<Youtube>> violations = validator.validate(video);
		if (violations.isEmpty()) {
			try {
				youtubeDAO.save(video);

				listar(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
				request.setAttribute("mensaje",
						new Alert("warning", "Algo no ha salido bien. Puede que el codigo este duplicado."));
			}

			// Youtube video = youtubeDAO.getById(id);

			request.setAttribute("mensaje", new Alert("success", "Registro creado con exito"));
			request.setAttribute("video", video);
			request.setAttribute("op", op);

		} else {
			// hay violaciones de las validaciones
			String mensaje = "";
			for (ConstraintViolation<Youtube> violation : violations) {
				mensaje += violation.getPropertyPath() + ": " + violation.getMessage() + "</br>";
			}
			request.setAttribute("mensaje", new Alert("warning", mensaje));
		}
	}

	private void eliminar(HttpServletRequest request, HttpServletResponse response) {

		int id = Integer.parseInt(request.getParameter("id"));
		youtubeDAO.delete(id);
		request.setAttribute("mensaje", new Alert("success", "Registro eliminado"));
		listar(request, response);

	}

}
