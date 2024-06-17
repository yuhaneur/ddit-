package kr.or.ddit.Users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.Users.RandomPasswordGenerator;
import kr.or.ddit.Users.service.StudentService;
//import kr.or.ddit.email.service.EmailService;
import kr.or.ddit.vo.StudentVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/find")
public class StudentController {

	@Autowired
	StudentService service;
	
	@GetMapping("/userId")
	public String findStudentId() {
		
		return "auth/findId";
	}
	
	@PostMapping("/id")
	@ResponseBody
	public StudentVO findHandler1(@RequestBody String eamil) {
		
		log.info("eamil : {}",eamil);
		
		return service.selectStudentId(eamil);
	}
	
	@GetMapping("/userPw")
	public String findStudentPw() {
		
		return "auth/findPw";
	}
	
	@PostMapping("/Pw")
	@ResponseBody
	public StudentVO findHandler2(@RequestBody StudentVO student) {
		
		log.info("eamil : {}",student.getStudentMail());
		log.info("userId : {}",student.getUserId());
		
		StudentVO serched = service.selectStudentPw(student);
		
		return serched;
	}
}
