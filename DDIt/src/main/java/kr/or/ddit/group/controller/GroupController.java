package kr.or.ddit.group.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/group")
public class GroupController {
	
	@GetMapping("/list.do")
	public String groupListTest() {
		return "group/groupList";
	}
	
	@GetMapping("/detail.do")
	public String groupDetailTest() {
		return "group/groupDetail";
	}
	
	@GetMapping("/write.do")
	public String groupWriteTest() {
		return "group/groupWrite";
	}
	
}
