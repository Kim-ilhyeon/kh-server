package com.kh.employee.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.employee.model.vo.Employee;
import com.kh.employee.service.EmployeeService;
import com.kh.employee.service.EmployeeServiceImpl;

/**
 * Servlet implementation class employeePageController
 */
@WebServlet("/emp.do")
public class employeePageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public employeePageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 사원정보를 조회하여 사원관리 페이지로 응답(포워딩)
		
		// 1) 사원정보 조회
		EmployeeService eService = new EmployeeServiceImpl();
		ArrayList<Employee> list = eService.selectEmployeeList();
		
		// 2) 조회된 정보를 request 영역에 저장
		request.setAttribute("list", list);
		
		// 3) employeeList.jsp 페이지로 포워딩(응답)
		request.getRequestDispatcher("WEB-INF/views/employee/employeeList.jsp").forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
