package com.Moviemoving.controller;

import java.util.List;

import javax.validation.Valid;

import org.hibernate.validator.internal.util.logging.Log_.logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Moviemoving.domain.MemberVO;
import com.Moviemoving.service.MemberService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MemberController {
	
	@Setter(onMethod_ = @Autowired)
	private MemberService service;
	
	@GetMapping("/Member")
	public String Member(@ModelAttribute MemberVO vo) {
		return "/Member";
		}
	
	@PostMapping("/Member")
	public String joinPost(@Valid MemberVO vo, BindingResult BindingResult) {
		if( BindingResult.hasErrors() ) {

			// 에러를 List로 저장
			List<ObjectError> list = BindingResult.getAllErrors();
			for( ObjectError error : list ) {
				System.out.println(error);
			}
			return "/Member";
		}
		service.insertMember(vo);
		return "redirect:/joinmember";
	}
	
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(String User_id) throws Exception{
		logger.info("memberIdChk() 진입");
		
		int result = MemberService.idCheck(User_id);
		
		logger.info("결과값 = " + result);
		
		if(result != 0) {
			
			return "fail";	// 중복 아이디가 존재
			
		} else {
			
			return "success";	// 중복 아이디 x
			
		}		
		
	} // memberIdChkPOST() 종료	
	
	
}
