package com.study.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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

@GetMapping("/join")
public String memberSign(Model model) {

	model.addAttribute("memberVO",new MemberVO());
	
	return"member/sign_form";
}

@PostMapping(value="")
public String memberlnsert(Model model,@ModelAttribute("memberVO")@Valid MemberVO memberVO,BindingResult bindingResult,RedirectAttributes rttr) {
	
	if(bindingResult.hasErrors()) {
		return"memver/sign_form";
	}
	int count=loginService.checkSignLoginid(memberVO.getMem_id());
	if(count !=0) {
		model.addAttribute("MSG",MessageUtils.getMessage("fail.Sign"));
		return "member/sign_form";
	}else {
		memberService.loginAndMemberInsert(memberVO);
		rttr.addFlashAttribute("MSG",MessageUtils.getMassage("success.Sign"));
		return"redirect:/";
	}
}

}