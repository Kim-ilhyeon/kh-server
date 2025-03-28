package com.kh.employee.service;

import java.util.ArrayList;

import com.kh.employee.model.vo.Employee;

public interface EmployeeService {

	// 인터페이스 : 상수 필드(public static final), 추상메소드(public abstract)
	
	/* 사원 목록 조회 */
	ArrayList<Employee> selectEmployeeList();
	
	/* 사원 정보 조회 */
	Employee selectEmployee(int empId);
	
	/* 사원 정보 추가 */
	int insertEmployee(Employee e);
	
	/* 사원 정보 수정 */
	int updateEployee(Employee e);
	
	/* 사원 정보 삭제(퇴사) */
	int deleteEployee(int empId);
	
}
