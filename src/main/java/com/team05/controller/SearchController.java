package com.team05.controller;

import java.io.File;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.team05.command.ProductVO;
import com.team05.command.ReviewVO;
import com.team05.command.Review_imgVO;
import com.team05.command.RoomVO;
import com.team05.command.UserVO;
import com.team05.command.util.SearchAreaVO;
import com.team05.search.service.SearchService;

@Controller
@RequestMapping("search")
public class SearchController {
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping("reservation")
	public String reservation(@RequestParam("pro_no") int pro_no,
							@RequestParam("room_no") int room_no,
							@RequestParam("pro_type") String pro_type,
							@RequestParam("time1") int time1,
							@RequestParam("time2") int time2,
							@RequestParam("price") int price) {
		
		System.out.println(pro_no);
		System.out.println(room_no);
		System.out.println(pro_type);
		System.out.println(time1);
		System.out.println(time2);
		System.out.println(price);
		return "search/reservation";
	}
	
	@RequestMapping(value = "room_info",method = RequestMethod.GET)
	public String room_info(@RequestParam("pro_no") int pro_no,Model model) {
		ArrayList<RoomVO> roomlist=searchService.getroom(pro_no);
		
		model.addAttribute("roomlist", roomlist);
		return "search/room_info";
	}
	
	
//	@RequestMapping("search_area1")
//	public String search_area(SearchAreaVO searchvo,Model model) {
//		model.addAttribute("searchvo", searchvo);
//		return "search/search_area";
//	}
	@RequestMapping("search_area")
	public String search_area(SearchAreaVO searchvo,Model model) {
		
		ArrayList<ProductVO> list=searchService.getlist(searchvo);
		model.addAttribute("list", list);
		model.addAttribute("searchvo", searchvo);
		
		System.out.println(list.toString());
		return "search/search_area";
	}
	
	
	@ResponseBody
	@RequestMapping("display/{fileloca}/{filename:.+}")
	public ResponseEntity<byte[]> display(@PathVariable("fileloca") String fileloca,
											@PathVariable("filename") String filename){
		
		String uploadpath = "D:\\spring\\upload\\"+fileloca;
		File file = new File(uploadpath+"\\"+filename);
		
		ResponseEntity<byte[]> result = null;
		try {
			HttpHeaders header = new HttpHeaders();
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			byte[] arr = FileCopyUtils.copyToByteArray(file);
			result = new ResponseEntity<byte[]>(arr,header,HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	@RequestMapping()
	public String search_room() {
		return "search/search_room";
	}
	
	@RequestMapping("select_area")
	public String select_area() {
		return "search/select_area";
	}
	
	
	@ResponseBody
	@RequestMapping("upload")
	public String upload(@RequestParam("file") MultipartFile file,
						@RequestParam("pro_no") int pro_no,
						@RequestParam("score") int score,
						@RequestParam("title") String title,
						@RequestParam("content") String content,HttpSession session) {
		try {
//			UserVO uservo=(UserVO)session.getAttribute("uservo");
//			String writer=uservo.getId();
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			String fileloca=sdf.format(date);
			System.out.println(fileloca);
			
			//2.���옣�븷 �뤃�뜑
			String uploadpath = "D:\\spring\\upload\\"+fileloca;
			File folder = new File(uploadpath);
			if(!folder.exists()) { //議댁옱�븯吏��븡�쑝硫� true
				folder.mkdir(); //�뤃�뜑�깮�꽦
			}
			
			//3.�꽌踰꾩뿉 ���옣�븷 �뙆�씪 �씠由�
			String filerealname=file.getOriginalFilename();
			long size=file.getSize();
			String fileExtension=filerealname.substring(filerealname.lastIndexOf("."),filerealname.length());
			
			UUID uuid=UUID.randomUUID();
			String uuids=uuid.toString().replaceAll("-", "");
			
			String filename = uuids+fileExtension; //蹂�寃쏀빐�꽌 ���옣�븷 �뙆�씪�씠由� 
	
			File saveFile = new File(uploadpath+"\\"+filename);
			file.transferTo(saveFile); 
			
			String id= "test";
			ReviewVO vo = new ReviewVO(0,id,pro_no,score,content,title,uploadpath,filename,filerealname,fileloca,null,null);
			boolean result = searchService.insertReview(vo);
			
			if(result) {
				return "success";
			}else {
				return "fail";
			}
		} catch (NullPointerException e) {
			
			return "fail";
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
		
		
	}
	
	@ResponseBody
	@RequestMapping("getreview")
	public ArrayList<ReviewVO> getreview(@RequestParam("pro_no") int pro_no) {
		System.out.println(pro_no);
		return searchService.getreview(pro_no);
	}
	
}
