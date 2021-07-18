package com.study.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	public String joinPost(@Valid MemberVO vo, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			List<ObjectError> errors = bindingResult.getAllErrors();
			for(ObjectError error:errors) {
				System.out.println(error);
			}
			return "join";
		}
		service.insertMember(vo);
		return "redirect:/joinmember";
	}
	
	@GetMapping("/joinmember")
	public void joinmember() {}
}
