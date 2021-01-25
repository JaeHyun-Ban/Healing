package com.team05.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeVO {
	
	//notice
	private int nno;
	private int nviews;
	private String ntitle;
	private String nid;
	private String ncontent;
	private Timestamp regdate;
	private Timestamp updatedate;

	
	
	
	
	
	
}
