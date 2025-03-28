package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RandomNumberServlet
 */
@WebServlet("/randomNumber")
public class RandomNumberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RandomNumberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("@@ get 방식");
		// TODO: practice1_result.jsp 페이지로 응답하기
		// * jsp 페이지로 응답
				// 	-> RequestDispatcher 변수명 = request.getRequestDispatcher (응답 페이지 경로);
				RequestDispatcher view = request.getRequestDispatcher("views/practice1_result.jsp");
				
				// 	-> 변수명.forward(request, response);
				view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
