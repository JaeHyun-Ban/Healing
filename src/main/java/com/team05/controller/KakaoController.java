package com.team05.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.stereotype.Controller;

@Controller
public class KakaoController {
	
	//REST API KEY: 04d1c80ea8f3d006804a4ab9462b1ff8
	//사이트 도메인: http://localhost:8282
	//Redirect URL: http://localhost:8282/healing/user/login
	
	
	//1.버튼 클릭시 이동하는 주소 만드는 메서드 생성
	//2.로그인 성공시 가져오는 code를 통해서 accessToken가져오기
	//3.accessToken을 가지고 프로필 정보 가져오기
	private final static String K_CLIENT_ID = "04d1c80ea8f3d006804a4ab9462b1ff8";
	private final static String K_REDIRECT_URL = "http://localhost:8282/healing/user/login";
	
	public String getAuthorizationUrl(HttpSession session) {
		
		String kakaoUrl = "https:kauth.kakao.com/oauth/authorize?"
				+ "client_id" + K_CLIENT_ID + "&redirect_uri="
				+ K_REDIRECT_URL + "&response_type=code";
		
		return kakaoUrl;
	}
	
	
	public String setAccessToke(String autorize_code) {
		
		final String RequestUrl = "https://kauth.kakao.com/oauth/token";
		final List<NameValuePair> postParams = new ArrayList<NameValuePair>();//CORBA
		
		//BasicNameValuePair클래스의 목적은 1개의 데이터를 전달하기 위한 것으로 Namve/Value값 하나만을 저장하는 구조
		postParams.add(new BasicNameValuePair("grant_type", "authorization_code"));
		
		return null;
	}
	
	
	
	
	
	
	
}






















































