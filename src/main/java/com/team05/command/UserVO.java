package com.team05.command;

import java.sql.Timestamp;
import java.util.ArrayList;

import lombok.Data;

@Data
public class UserVO {
//	-- 유저 테이블
//	create table users(
//	    id VARCHAR2(50) not null, --pk 
//	    pwd VARCHAR2(50) not null,
//	    name VARCHAR2(50) not null,
//	    phone VARCHAR2(50) not null,
//	    email VARCHAR2(50) not null,
//	    addrbasic VARCHAR2(50),
//	    addrdetail VARCHAR2(50),
//	    zipNo VARCHAR2(50),
//	    regdate date default sysdate,
//	    grade_num NUMBER(10) not null --fk
//	);
//	alter table users add CONSTRAINT user_pk PRIMARY KEY (id);
	
	private String id;
	private String pwd;
	private String name;
	private String phone;
	private String email;
	private String email2;
	private String zipNo;
	private String addrBasic;
	private String addrDetail;
	private Timestamp regdate;
	
	//마이페이지...?
	

}
