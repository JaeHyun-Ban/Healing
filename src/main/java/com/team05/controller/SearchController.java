package com.team05.controller;

import java.io.File;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
import com.team05.command.util.Criteria;
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
		
		String address=searchService.getaddress(pro_no);
		String protitle=searchService.gettitle(pro_no);
		
		
		model.addAttribute("address", address);
		model.addAttribute("protitle", protitle);
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
	
	
	@RequestMapping("search_room")
	public String search_room(@RequestParam("search") String search,Model model) {
		
		ArrayList<ProductVO> productlist=searchService.searchname(search);
		model.addAttribute("productlist", productlist);
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
			
			
			String uploadpath = "D:\\spring\\upload\\"+fileloca;
			File folder = new File(uploadpath);
			if(!folder.exists()) { 
				folder.mkdir(); 
			}
			
			
			String filerealname=file.getOriginalFilename();
			long size=file.getSize();
			String fileExtension=filerealname.substring(filerealname.lastIndexOf("."),filerealname.length());
			
			UUID uuid=UUID.randomUUID();
			String uuids=uuid.toString().replaceAll("-", "");
			
			String filename = uuids+fileExtension; 
	
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
	@RequestMapping("getreview/{pro_no}/{pageNum}")
	public HashMap<String, Object> getreview(@PathVariable("pro_no") int pro_no,
										@PathVariable("pageNum") int pageNum) {
		System.out.println(pro_no);
		Criteria cri = new Criteria(pageNum,10);
		//리뷰개수
		int count=searchService.reviewtotal(pro_no);
		//리뷰점수합
		int total=searchService.reviewtotalSum(pro_no);
		double mean = (double)total /count;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("count", count);
		map.put("mean",mean);
		map.put("list",searchService.getreview(cri,pro_no));
		return map;
	}
	
}
