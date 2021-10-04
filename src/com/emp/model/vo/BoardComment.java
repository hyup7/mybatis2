package com.emp.model.vo;

import java.sql.Date;

import lombok.Data;
@Data
public class BoardComment {
	private int commentNo;
	private String commentContent;
	private String commentWriter;
	private Date commentDate;
	
}
