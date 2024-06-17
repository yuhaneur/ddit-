package kr.or.ddit.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.project.service.ProjectService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/project/{projectNo}")
public class ProjectCalendarController {

	@Autowired
	private ProjectService service;
	
	
	@GetMapping("calendar")
	public String calendarUI() {
		
		return"project/projectCalendar";
	}
}
