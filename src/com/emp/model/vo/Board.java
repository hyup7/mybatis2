package com.emp.model.vo;

import java.sql.Date;
import java.util.List;

import lombok.Data;
@Data
public class Board {
	private int BoardNo;
	private String boardTitle;
	private String boardWriter;
	private String boardContent;
	private Date boardDate;
	private List<BoardComment> comments;
}
