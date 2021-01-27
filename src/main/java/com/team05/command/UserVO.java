package com.team05.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVO {
//	-- 유저 테이블
//	create table users(
//	    userId VARCHAR2(50) not null, --pk 
//	    userPwd VARCHAR2(50) not null,
//	    userName VARCHAR2(50) not null,
<<<<<<< HEAD
//		userAge VARCHAR2(30) not null,
=======
>>>>>>> 0d6bf2c7ab26bc809b41439ca9d65d36f7199246
//	    phone VARCHAR2(50) not null,
//	    email VARCHAR2(50) not null,
//	   	email2 VARCHAR2(50) not null,
//	    addrBasic VARCHAR2(50),
//	    addrDetail VARCHAR2(50),
//	    zipNo VARCHAR2(50),
//	    regdate date default sysdate
//	);
//	alter table users add CONSTRAINT user_pk PRIMARY KEY (userId);
	
	private String userId;
	private String userPwd;
	private String userName;
	private String userAge;
	private String phone;
	private String email;
	private String email2;
	private String zipNo;
	private String addrBasic;
	private String addrDetail;
	private Timestamp regdate;
	
	//마이페이지...?
	

}
