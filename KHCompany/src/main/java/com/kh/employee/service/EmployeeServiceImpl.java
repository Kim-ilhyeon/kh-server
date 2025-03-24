package com.kh.employee.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.employee.model.vo.Employee;
//import static com.kh.template.JDBCTemplate.getConnection;
import static com.kh.template.JDBCTemplate.*;
// => JDBCTemplate 클래스의 모든 static 메소드를 import 한것!! (= 클래스명 생략하고 메소드 호출 가능하다.)
import com.kh.employee.model.dao.EmployeeDao;

public class EmployeeServiceImpl implements EmployeeService {
	private EmployeeDao eDao = new EmployeeDao();
	
	
	/**
	 * 사원 전체 목록 조회
	 */
	@Override
	public ArrayList<Employee> selectEmployeeList() {
		
		// * Connection 객체 생성
		Connection conn = getConnection();
		
		// * DAO에게 Connection 객체를 전달 (필요한 기능 요청)
		ArrayList<Employee> list = eDao.selectEmployeeList(conn);		// TODO : DAO에게 요청
		
		// * Connection 객체 반납
		close(conn);
		
		// * 결과를 Controller에게 반납
		return list;
		
	}

	@Override
	public Employee selectEmployee(int empId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertEmployee(Employee e) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateEployee(Employee e) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteEployee(int empId) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
}
