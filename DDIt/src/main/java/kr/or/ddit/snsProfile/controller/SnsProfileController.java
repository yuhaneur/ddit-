package kr.or.ddit.snsProfile.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.sns.service.SnsService;
import kr.or.ddit.snsProfile.service.SnsProfileService;
import kr.or.ddit.vo.FollowVO;
import kr.or.ddit.vo.SnsAnswerVO;
import kr.or.ddit.vo.SnsFeedVO;
import kr.or.ddit.vo.StudentVO;
import kr.or.ddit.vo.TeacherVO;
import kr.or.ddit.vo.UsersVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/snsProfile")
public class SnsProfileController {
	
	@Autowired
	private SnsProfileService service;
	
	@Autowired
	private SnsService Followservice;
	
	// 학생인지 선생인지를 구분해서 return 시킬 것.
	// 프로필 수정 폼 이동
	@GetMapping("/myProfile.do")
	public String snsMyProfileUpdate(
		Model model
		,Authentication authentication
	) {
		String userId = authentication.getName();
		if(authentication != null) {
			log.info("유저 아이디 : {}",authentication.getName());
		}
		List<SnsFeedVO> feedList = Followservice.readMyFeedList(userId);
		model.addAttribute("feedList",feedList);
		log.info("아이디 : {}", userId);
		log.info("마이피드리스트 : {}", feedList);
		int chk = 0;
		chk = service.validateUser(userId);
		log.info("chk : {}",chk);
		if(chk == 1) {
			TeacherVO teacher = service.readTeacher(userId);
			model.addAttribute("teacher", teacher);
			return "sns/snsTeacherProfile";
		}else {
			StudentVO student = service.readStudent(userId);
			model.addAttribute("student", student);
			return "sns/snsStudentProfile";
		}
	}
	
	// 선생 자기소개 수정 후 뷰 이동 프로필
	@ResponseBody
	@PostMapping("/teacherProfile.do")
	public Map<String, String> snsTeacherProfile(
		@RequestBody TeacherVO teacherVo, Model model
	) throws IOException {
		int chk = service.updateTeacher(teacherVo);
		Map<String, String> result = new HashMap<>();
		if(chk > 0) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	// 학생 자기소개 수정 후 뷰 이동 프로필
	@ResponseBody
	@PostMapping( value = "/studentProfile.do", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public Map<String, String> snsStudentProfile(
		StudentVO studentVo
	) throws IOException {
		log.info("테스트로그 =========== {} ",studentVo);
		
		int chk = service.updateStudent(studentVo);
		Map<String, String> result = new HashMap<>();
		if(chk > 0) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	// 프로필 팔로워 리스트
	@GetMapping("/myFollower{userId}")
	public List<FollowVO> snsMyFollowerList(
		@PathVariable String userId
	){
		List<FollowVO> list = Followservice.readFollowerList(userId);
		return list;
	}
	
	// 클릭한 상대방 프로필창으로 이동
	@GetMapping("/{userId}")
	public String snsProfileTest(
		@PathVariable String userId, Model model
	) {
		log.info("아이디 : {} ", userId);
		int chk = 0;
		chk = service.validateUser(userId);
		log.info("chk : {}",chk);
		if(chk == 1) {
			TeacherVO teacher = service.readTeacher(userId);
			model.addAttribute("teacher", teacher);
			return "sns/snsTeacherProfileView";
		}else {
			StudentVO student = service.readStudent(userId);
			model.addAttribute("student", student);
			return "sns/snsStudentProfileView";
		}
	}
	
	// 팔로워 리스트
	@GetMapping("/followers")
	public String snsFollowers(
		Model model
	) {
		return "sns/snsFollower";
	}
}
