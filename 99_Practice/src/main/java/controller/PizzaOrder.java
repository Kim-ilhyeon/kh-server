package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PizzaOrder
 */
@WebServlet("/pizza.order")
public class PizzaOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PizzaOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("@@Get 호출됨");
		
		RequestDispatcher view = request.getRequestDispatcher("views/orderResult.jsp");
		
		view.forward(request, response);
		
		String pizza = request.getParameter("pizza");
		String[] arr = pizza.split(" ");
		System.out.println(arr[0]);
		String name = pizza.split(" ")[0];
		System.out.println(name);
		int pPrice = Integer.parseInt(pizza.split(" ")[1]);
		
		
		String[] toping = request.getParameterValues("toping");
		
		String[] side = request.getParameterValues("side");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
