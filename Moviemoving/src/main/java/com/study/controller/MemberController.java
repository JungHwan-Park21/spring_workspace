package com.study.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public void joinGet() {}
	
	@PostMapping("/join")
	public String joinPost(MemberVO vo, RedirectAttributes rttr) {
		log.info(vo);
		service.insertMember(vo);
		return "redirect:/joinmember";
	}
	
	@GetMapping("/joinmember")
	public void joinmember() {}
}