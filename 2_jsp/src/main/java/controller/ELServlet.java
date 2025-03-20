package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.vo.Student;

/**
 * Servlet implementation class ELServlet
 */
@WebServlet("/el.do")
public class ELServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ELServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * * JSP 내장 객체 종류 *
		 *   => 데이터를 담을 수 있는 공간
		 *   
		 *   1) ServletContext (Application scope)
		 *   	: 한 어플리케이션당 단 1개 존재하는 객체
		 *   	  해당 영역에 데이터를 담을 경우 어플리케이션 전역에서 사용가능
		 *   2) HttpSession (session scope)
		 *   	: 한 브라우저당 1개 존재하는 객체
		 *   	(해당 영역에 데이터를 담을 경우 jsp/servlet 단에서 사용 가능
		 *   
		 *   3) HttpServletRequest (request scope)
		 *   	: 요청마다 매번 생성되는 객체
		 *      해당 영역에 데이터를 담을 경우 request 객체를 포워딩 받는 응답 jsp에서만 사용가능
		 *      
		 *   4) PageContext (page scope)
		 *      : jsp 마다 존재하는 객체
		 *        해당 페이지에서만 사용가능
		 *   ------------------------------------------
		 *   - 위에 4개의 객체들에
		 *   		데이터를 담을 때 xxx.setAttribute("키값", 데이터);
		 *   		데이터를 꺼낼 때 xxx.getAttribute("키값");
		 *   		데이터를 지울 때 xxx.removeAttribute("키값");
		 */
		
		// request scope 에 데이터 담기
		request.setAttribute("classRoom", "A 강의장");
		request.setAttribute("student", new Student("김일현", 25, "남자"));
		
		// session scope 에 데이터 담기
		HttpSession session = request.getSession();
		session.setAttribute("academy", "KH정보교욱원");
		session.setAttribute("student2", new Student("임성준", 26, "남자"));
		
		// request, session scope 에 동일한 키 값으로 데이터 담기
		request.setAttribute("scope", "request!!");
		session.setAttribute("scope", "session!!");
		
		// application scope 에 데이터 담기
		ServletContext application = request.getServletContext();
		application.setAttribute("scope", "application!!");
		
		// jsp 페이지로 응답하기
		request.getRequestDispatcher("views/2_EL/1_el.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
