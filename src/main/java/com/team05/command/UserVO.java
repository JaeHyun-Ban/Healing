package com.team05.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserVO {
	
	private String id;
	private String pw;
	private String name;
	private String phone;
	private String eamil;
	private String basic_address;
	private String detail_address;
	private String post_zipNum;
	private Timestamp regdate;
	private int grade_num;
}
