package com.team05.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReservationVO {
	
	private int resno;
	private String checkin;
	private String checkout;
	private int price;
	private String reserve_type;
	private String id;
	private int pro_no;
	
	
}
