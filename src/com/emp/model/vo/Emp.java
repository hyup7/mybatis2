package com.emp.model.vo;
//lombok->데이터저장용 클래스이 생성자 getter,setter,tostring,hashcode,equals,만들어
//주는 라이브러리
//lombook은 클래스선언부에 어노테이션을 설정하여 구현됨.

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Data//getter,setter,toString,hashCode,equals,기본생성자
@AllArgsConstructor//젠체 멥머변수의 매개변수있는 생성자
@NoArgsConstructor//기본생성자
@Getter
@Setter
@Builder
public class Emp {
	
	private String empId;
	private String empName;
	private String empNo;
	private String email;
	private String phone;
	private String deptCode;
	private String jobCode;
	private String salLevel;
	private int salary;
	private double bonus;
	private String managerId;
	private Date hireDate;
	private Date entDate;
	private char entYn;
	private String gender;
	
}
	
	