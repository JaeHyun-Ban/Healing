package com.team05.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewVO {
	private int renum;
	private String id;
	private int pro_no;
	private int score;
	private String content;
	private String title;
	
	private String uploadpath;
	private String filename;
	private String filerealname;
	private String fileloca;
	private Timestamp regdate;
	private Timestamp updatedate;
}
