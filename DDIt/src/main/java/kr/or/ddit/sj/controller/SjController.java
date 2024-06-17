package kr.or.ddit.sj.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.edcCrse.service.EdcCrseService;
import kr.or.ddit.sj.service.SjService;
import kr.or.ddit.teacher.service.TeacherService;
import kr.or.ddit.vo.CurriculumVO;
import kr.or.ddit.vo.EdcCrseVO;
import kr.or.ddit.vo.SjManagerVO;
import kr.or.ddit.vo.SjVO;
import kr.or.ddit.vo.TeacherVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/subject")
public class SjController {
	
	@Autowired
	private SjService sjService;
	@Autowired
	private EdcCrseService edcCrseService;
	@Autowired
	private TeacherService teacherService;
	
	
	// 교과목리스트보여주기
	@GetMapping("{edcCode}")
	public String subjectList(Model model,@PathVariable String edcCode) {
		List<SjVO> sjList = sjService.selectSjList(edcCode);
		log.info("sjList : {}",sjList);
		model.addAttribute("edcCode", edcCode);
		model.addAttribute("sjList", sjList);
		return "subject/subjectList";
	}
	
	// 교과목상세목록 보여주기
	@GetMapping("detail")
	public String subjectDetail(
			Model model,
			@RequestParam("sjNo") long sjNo,
			@RequestParam("edcCrseCode") String edcCrseCode) {
		SjVO newSjvo = new SjVO();
		newSjvo.setSjNo(sjNo);
		newSjvo.setEdcCrseCode(edcCrseCode);
		// 선생님 목록 가져오기
		List<TeacherVO> teacherList =  teacherService.retrieveTeacherList();
		// 교과목 정보 가져오기
		SjVO sjvo = sjService.selectSj(newSjvo);
		// 교과목에 등록된 선생님리스트 가져오기
		List<CurriculumVO> curriculumList = sjService.selectCurriculumList(sjvo);
		List<SjManagerVO> sjManagerList = sjService.selectSjManagerList(newSjvo);
		log.info("curriculumList : {}", curriculumList);
		model.addAttribute("edcCrseCode", edcCrseCode);
		model.addAttribute("teacherList", teacherList);
		model.addAttribute("sjvo", sjvo);
		model.addAttribute("sjManagerList", sjManagerList);
		model.addAttribute("curriculumList", curriculumList);
		
		return "subject/subjectDetail";
	}
	
	// 교과목에 등록된 선생님리스트 가져오기
		@GetMapping(value =  "sjManagerList", produces = MediaType.APPLICATION_JSON_VALUE)
		@ResponseBody
		public Map<String, Object> sjManagerList(
				@RequestParam("sjNo") long sjNo,
				@RequestParam("edcCrseCode") String edcCrseCode) {
			SjVO newSjvo = new SjVO();
			newSjvo.setSjNo(sjNo);
			newSjvo.setEdcCrseCode(edcCrseCode);
			List<SjManagerVO> sjManagerList = sjService.selectSjManagerList(newSjvo);
			Map<String, Object> sjManagerMap = new HashMap<String, Object>();
			sjManagerMap.put("result", sjManagerList);
			return sjManagerMap;
		}
	
	// 교과목 담당선생님 등록
	@ResponseBody
	@PostMapping(value = "detail",produces = MediaType.APPLICATION_JSON_VALUE)
	public Map<String, Object> subjectManagerInsert( @RequestBody Map<String, Object> sjVO) {
		Map<String, Object> sjMap = new HashMap<String, Object>();
		SjVO svo = new SjVO();
		// 모델구조를 잘못만들어서 VO 를 쓸수가없어서 Map을 만들어줌 
		svo.setSjNo(Long.parseLong(String.valueOf(sjVO.get("sjNo"))));
		svo.setEdcCrseCode(String.valueOf(sjVO.get("edcCrseCode")));
		List<String> userIds =  (List) sjVO.get("userIds");
		List<SjManagerVO> sjManagerList = new ArrayList<SjManagerVO>();
		for (String userId : userIds) {
			SjManagerVO sjmanagerVo = new SjManagerVO();
			sjmanagerVo.setSjNo(svo.getSjNo());
			sjmanagerVo.setEdcCrseCode(svo.getEdcCrseCode());
			sjmanagerVo.setUserId(userId);
			sjManagerList.add(sjmanagerVo);
		}
		svo.setSjManagerList(sjManagerList);
		// 인서트 성공하면 추가된 화면 리다이렉트로 보내주기
		int cnt = sjService.createSjManager(svo);
		if(cnt>0) {
			sjMap.put("result", "ok");
		}else {
			sjMap.put("result", "등록된 교사가 있습니다.");
		}
		return sjMap;
	}
	
	// 담당교사 삭제
	@ResponseBody
	@DeleteMapping(value =  "sjManagerdelete", consumes = MediaType.APPLICATION_JSON_VALUE)
	public Map<String, String> sjManagerdelete(@RequestBody SjManagerVO sjManagerVO) {
		log.info("@@sjManagerVO {} ",sjManagerVO);
		int cnt = sjService.deleteSjManager(sjManagerVO);
		Map<String, String> result = new HashMap<String, String>();
		if(cnt>0) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	// 교과목 등록 폼
	@GetMapping("insert/{edcCode}")
	public String subjectInsertForm(Model model,@PathVariable String edcCode) {
		List<EdcCrseVO> edcList =  edcCrseService.retrieveEdcCrseList();
		model.addAttribute("edcCode", edcCode);
		model.addAttribute("edcList", edcList);
		return "subject/subjectInsert";
	}
	// 교과목 등록
	@PostMapping("insert/{edcCode}")
	public String subjectInsert(@ModelAttribute SjVO sjvo) {
		int cnt = sjService.createSj(sjvo);
		log.info("sjvo {}", sjvo);
		if(cnt>0) {
			return "redirect:/subject/"+sjvo.getEdcCrseCode();
		}
		return "redirect:subject/insert/"+sjvo.getEdcCrseCode();
	}
	
	//교과목상세 등록화면
	@GetMapping("curriculumInsert")
	public String curriculumInsertForm(Model model,
			@RequestParam("sjNo") long sjNo,
			@RequestParam("edcCrseCode") String edcCrseCode) {
		SjVO sjvo = new SjVO();
		sjvo.setSjNo(sjNo);
		sjvo.setEdcCrseCode(edcCrseCode);
		sjvo = sjService.selectSj(sjvo);
		model.addAttribute("sjvo", sjvo);
		return "subject/curriculumInsert";
	}
	
	// 수업정보 보기
	@GetMapping(value =  "curriculumDetail", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public CurriculumVO curriculumSelect(@ModelAttribute CurriculumVO curriculumVO) {
		CurriculumVO ccvo = new CurriculumVO();
		ccvo =  sjService.selectCurriculum(curriculumVO);
		return ccvo;
	}
	// 수업주제 수정
	@PutMapping(value = "curriculumUpdate",produces = MediaType.APPLICATION_JSON_VALUE,consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Map<String, String> curriculumUpdate(@RequestBody CurriculumVO curriculumVO) {
		int cnt = sjService.updateCurriculum(curriculumVO);
		Map<String, String> result = new HashMap<String, String>();
		if(cnt>0) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	// 수업주제 등록
	@PostMapping(value = "curriculumInsert",consumes = MediaType.MULTIPART_FORM_DATA_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Map<String, String> curriculumInsert(@ModelAttribute CurriculumVO curriculumVO) {
		int cnt = sjService.insertCurriculum(curriculumVO);
		log.info("curriculumVO : {} ", curriculumVO);
		Map<String, String> result = new HashMap<String, String>();
		if(cnt>0) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	// 수업주제 삭제
	@DeleteMapping(value = "curriculumDelete",produces = MediaType.APPLICATION_JSON_VALUE,consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Map<String, String> curriculumDelete(@RequestBody CurriculumVO curriculumVO) {
		int cnt = sjService.deleteCurriculum(curriculumVO);
		Map<String, String> result = new HashMap<String, String>();
		if(cnt>0) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	
	
}
