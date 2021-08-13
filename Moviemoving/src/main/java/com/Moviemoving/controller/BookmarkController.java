package com.Moviemoving.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.Moviemoving.domain.CategoryListVO;
import com.Moviemoving.mapper.BookmarkMapper;
import com.Moviemoving.service.BookmarkService;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class BookmarkController {
	
	private BookmarkService service;
	
	
	/*
	 * @GetMapping("/Bookmark") public String insert(@ModelAttribute BookmarkMapper
	 * mapper, HttpSession session) {
	 * 
	 * //@ModelAttribute는 sumit된 form의 내용을 저장해서 전달받거나, 다시 뷰로 넘겨서 출력하기 위해 사용되는 오브젝트
	 * 이다.
	 * 
	 * //도메인 오브젝트나 mapper의 프로퍼티에 요청 파라미터를 바인딩해서 한번에 받으면 @ModelAttribute 라고 볼 수 있다.
	 * 
	 * //@ModelAttribute는 컨트롤러가 리턴하는 모델에 파라미터로 전달한 오브젝트를 자동으로 추가해준다.
	 * 
	 * 
	 * //로그인 여부를 체크하기 위해 세션에 저장된 아이디 확인
	 * 
	 * String userid=(String)session.getAttribute("userid"); if(userid==null) {
	 * 
	 * //로그인하지 않은 상태이면 로그인 화면으로 이동
	 * 
	 * return "redirect:/member/login.do"; } mapper.setUser_id(User_id);
	 * BookmarkService.insert(mapper); //보고싶어요 테이블에 저장됨 return
	 * "redirect:/shop/cart/list.do"; //장바구니 목록으로 이동 }
	 */
	
	@GetMapping("/mypage")
	public String getMovie (@RequestParam("MovieInfo_no") Long MovieInfo_no, CategoryListVO cateList, Model model) {
		log.info("mypage");
		model.addAttribute("cateList", service.getList(MovieInfo_no));
		return "mypage";
	}	

}
