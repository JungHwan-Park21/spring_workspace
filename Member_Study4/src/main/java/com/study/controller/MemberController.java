package com.study.controller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.domain.MemberVO;
import com.study.service.MemberService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MemberController {
	
	@Setter(onMethod_ = @Autowired)
	private MemberService service;
	
	@GetMapping("/join")
	public String join(@ModelAttribute MemberVO vo) {
		return "/join";
		}
	
	@PostMapping("/join")
	public String joinPost(@Valid MemberVO vo, BindingResult BindingResult) {
		if( BindingResult.hasErrors() ) {

			// 에러를 List로 저장
			List<ObjectError> list = BindingResult.getAllErrors();
			for( ObjectError error : list ) {
				System.out.println(error);
			}
			return "/join";
		}
		service.insertMember(vo);
		return "redirect:/joinmember";
	}
	
	
	
}



