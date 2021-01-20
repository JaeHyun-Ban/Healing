package com.team05.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("search")
public class SearchController {
	
	@RequestMapping("reservation")
	public String reservation() {
		return "search/reservation";
	}
	
	@RequestMapping("room_info")
	public String room_info() {
		return "search/room_info";
	}
	
	@RequestMapping("search_area")
	public String search_area() {
		return "search/search_area";
	}
	
	@RequestMapping("search_room")
	public String search_room() {
		return "search/search_room";
	}
	
	@RequestMapping("select_area")
	public String select_area() {
		return "search/select_area";
	}
	
	
}
