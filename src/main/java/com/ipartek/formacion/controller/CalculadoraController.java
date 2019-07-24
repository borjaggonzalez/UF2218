package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.controller.pojo.Alert;

/**
 * Servlet implementation class CalculadoraController
 */
@WebServlet("/calculadora")
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String OP_SUMAR = "sumar";
	public static final String OP_RESTAR = "restar";
	public static final String OP_MULTI = "multiplicar";
	public static final String OP_DIVIDIR = "dividir";
	private float num1;
	private float num2;
	private float total;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CalculadoraController() {
		super();
		// TODO Auto-generated constructor stub
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

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String op = request.getParameter("op");
		switch (op) {
		case OP_SUMAR:
			sumar(request, response);
			break;
		case OP_RESTAR:
			restar(request, response);
			break;
		case OP_MULTI:
			multiplicar(request, response);
			break;
		case OP_DIVIDIR:
			dividir(request, response);
			break;

		default:

			break;
		}

		request.setAttribute("op", op);
		request.getRequestDispatcher("calculadora/index.jsp").forward(request, response);

	}

	private void sumar(HttpServletRequest request, HttpServletResponse response) {
		num1 = 0.00F;
		num2 = 0.00F;
		total = 0.00F;
		String dato1 = request.getParameter("numero1");
		String dato2 = request.getParameter("numero2");
		try {

			if (!dato1.isEmpty()) {
				num1 = Float.parseFloat(dato1);
			}
			if (!dato2.isEmpty()) {

				num2 = Float.parseFloat(dato2);
			}
		} catch (NumberFormatException e) {
			num1 = 0.00F;
			num2 = 0.00F;
			total = 0.00F;
			request.setAttribute("mensaje", new Alert("warning", "No has metido un valor valido"));
			
		}

		total = num1 + num2;
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("total", total);

	}

	private void restar(HttpServletRequest request, HttpServletResponse response) {
		num1 = 0.00F;
		num2 = 0.00F;
		total = 0.00F;
		String dato1 = request.getParameter("numero1");
		String dato2 = request.getParameter("numero2");
		try {

			if (!dato1.isEmpty()) {
				num1 = Float.parseFloat(dato1);
			}
			if (!dato2.isEmpty()) {

				num2 = Float.parseFloat(dato2);
				

			}
		} catch (NumberFormatException e) {
			num1 = 0.00F;
			num2 = 0.00F;
			total = 0.00F;
			request.setAttribute("mensaje", new Alert("warning", "No has metido un valor valido"));
			
		}

		total = num1 - num2;
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("total", total);

	}

	private void multiplicar(HttpServletRequest request, HttpServletResponse response) {
		num1 = 0.00F;
		num2 = 0.00F;
		total = 0.00F;
		String dato1 = request.getParameter("numero1");
		String dato2 = request.getParameter("numero2");

		try {

			if (!dato1.isEmpty()) {
				num1 = Float.parseFloat(dato1);
			}
			if (!dato2.isEmpty()) {

				num2 = Float.parseFloat(dato2);
				

			}
		} catch (NumberFormatException e) {
			num1 = 0.00F;
			num2 = 0.00F;
			total = 0.00F;
			request.setAttribute("mensaje", new Alert("warning", "No has metido un valor valido"));
			
		}

		total = num1 * num2;
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("total", total);

	}

	private void dividir(HttpServletRequest request, HttpServletResponse response) {
		num1 = 0.00F;
		num2 = 0.00F;
		total = 0.00F;
		String dato1 = request.getParameter("numero1");
		String dato2 = request.getParameter("numero2");
		String mensaje = "No se puede dividir entre 0";
		try {

			if (!dato1.isEmpty()) {
				num1 = Float.parseFloat(dato1);
			}
			if (!dato2.isEmpty()) {

				num2 = Float.parseFloat(dato2);
				

			}
		} catch (NumberFormatException e) {
			num1 = 0.00F;
			num2 = 0.00F;
			total = 0.00F;
			request.setAttribute("mensaje", new Alert("warning", "No has metido un valor valido"));
			
		}
		
		if(0.00 != num1 && 0.00 != num2) {
			total = num1 / num2;
		}else {
			request.setAttribute("mensaje", mensaje);
		}
	

		if (0.00 != num1 && 0.00 == num2) {
			request.setAttribute("mensaje", mensaje);
		} else {
			request.setAttribute("total", total);
		}

		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		
	}
}
