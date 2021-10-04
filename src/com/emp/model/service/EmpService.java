package com.emp.model.service;
import static com.common.SqlSessionTemplate.getSession;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.emp.model.dao.EmpDao;
import com.emp.model.vo.Board;
import com.emp.model.vo.Emp;
import com.emp.model.vo.Employee2;

public class EmpService {
	private EmpDao dao= new EmpDao();
	public List<Emp> selectEmpAll(int cPage,int numPerpage) {
		SqlSession session =getSession();
		List<Emp> list=dao.selectEmpAll(session,cPage,numPerpage);
		session.close();
		return list;
	}
	public int selectEmpCount() {
		SqlSession session =getSession();
		int count=dao.selectEmpCount(session);
		session.close();
		return count;
	}

	public List<Emp> searchEmp(Map<String, Object> param) {
		SqlSession session =getSession();
		List<Emp> list=dao.searchEmp(session,param);
		session.close();
		return list;
	}
	public Employee2 selectOneEmp(String no) {
		SqlSession session =getSession();
		Employee2 e=dao.selectOneEmp(session,no);
		session.close();
		return e;
	}
	public Board selectBoard(int no) {
		SqlSession session=getSession();
		Board b =dao.selectBoard(session,no);
		session.close();
		return b;
	}




}
