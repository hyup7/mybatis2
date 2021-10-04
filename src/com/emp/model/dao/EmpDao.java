package com.emp.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.emp.model.vo.Board;
import com.emp.model.vo.Emp;
import com.emp.model.vo.Employee2;

public class EmpDao {

	public List<Emp> selectEmpAll(SqlSession session, int cPage, int numPerpage) {
		//RowBounds클래스는 생성할떄 매개변수 있는 생성자를 이용
		//매개변수는 데이터의 구역을 구분할 수 있는 숫자로 대입
		//2개의 매개변수를 받음
		//1.offset ->시작-> (cPage-1)*numPerPage
		//2.limit - >범위 -> numPerpage
		RowBounds row=new RowBounds((cPage-1)*numPerpage, numPerpage);
		return session.selectList("emp.selectEmpAll",null,row);
	}

	public List<Emp> searchEmp(SqlSession session, Map<String, Object> param) {
		return session.selectList("emp.searchEmp",param);
	}

	public int selectEmpCount(SqlSession session) {
		return session.selectOne("emp.selectEmpCount");
	}

	public Employee2 selectOneEmp(SqlSession session, String no) {
		return session.selectOne("emp.selectEmpOne",no);
	}

	public Board selectBoard(SqlSession session,int no) {
		return session.selectOne("emp.selectBoard",no);
	}



}
