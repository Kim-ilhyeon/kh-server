package com.kh.employee.model.dao;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import java.util.Properties;

import com.kh.employee.model.vo.Employee;
import com.kh.template.JDBCTemplate;

public class EmployeeDao {
	private Properties prop = new Properties();
	
	public EmployeeDao() {
		try {
			// employee-mapper.xml 파일경로
			String filePath = EmployeeDao.class.getResource("/sql/employee-mapper.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
			
		} catch (InvalidPropertiesFormatException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/*
	 * * Statement 객체 생성 (=> Connection 객체 사용)
	 * 
	 * * SQL문 실행 후 결과받기
	 * 
	 * * 결과에 대한 처리
	 * 	- DQL : ResultSet 객체로 결과를 받아서 필요한 데이터를 차곡차곡 저장
	 * 	- DML : int로 결과를 받아서 리턴 (=> 트랜잭션 처리를 서비스에서 담당)
	 * 
	 * * 객체 반납(close) => Statement, ResultSet 객체가 있는지 확인 (생성의 역순으로)
	 */
	
	
	public ArrayList<Employee> selectEmployeeList(Connection conn) {
		
		ArrayList<Employee> list = new ArrayList<>();
		Statement stat = null;
		ResultSet rset = null;
		
		
		try {
			stat = conn.createStatement();
			
			rset = stat.executeQuery(prop.getProperty("selectEmployeeList"));
			
			while ( rset.next() ) {
				// * Employee 객체에 조회결과를 담기
				Employee emp = new Employee(
						rset.getInt("EMP_ID"),
						rset.getString("EMP_NAME"),
						rset.getString("DEPT_TITLE"),
						rset.getString("JOB_NAME"),
						rset.getString("HIRE_DATE")
						);
				// * ArrayList에 담아둔 데이터 추가
				list.add(emp);
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stat);
		}
		
		return list;
	}

	
}
