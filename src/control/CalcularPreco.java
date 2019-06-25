package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Computador;


@WebServlet("/CalcularPreco")
public class CalcularPreco extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		float valorInicial = (float) 1000.00;
		
		float memoria = Float.parseFloat(request.getParameter("memoria"));
		float hd = Float.parseFloat(request.getParameter("hd"));
		float ssd = Float.parseFloat(request.getParameter("ssd"));
		float placaVideo = Float.parseFloat(request.getParameter("placaVideo"));
		float monitor = Float.parseFloat(request.getParameter("monitor"));
		
		float valorFinal = valorInicial + memoria + hd + ssd + placaVideo + monitor;
		
		Computador pc = new Computador(valorInicial, valorFinal, memoria, hd, ssd, placaVideo, monitor);
		
		request.setAttribute("comp", pc);
		RequestDispatcher desp = request.getRequestDispatcher("formulario.jsp");
		desp.forward(request, response);
		
	}

}
