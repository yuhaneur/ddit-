package kr.or.ddit.lect.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lect")
public class LectController {
	@GetMapping("/list.do")
	public String lectListTest() {
		return "lect/lectList";
	}
	
	@GetMapping("/detail.do")
	public String lectDetailTest() {
		return "lect/lectDetail";
	}
	
	@GetMapping("/write.do")
	public String lectWriteTest() {
		return "lect/lectWrite";
	}
}
