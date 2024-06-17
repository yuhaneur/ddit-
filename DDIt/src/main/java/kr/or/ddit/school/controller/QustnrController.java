package kr.or.ddit.school.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.school.service.QustnrService;
import kr.or.ddit.vo.QustnrAnswerDetailGrVO;
import kr.or.ddit.vo.QustnrAnswerDetailVO;
import kr.or.ddit.vo.QustnrAnswerTyVO;
import kr.or.ddit.vo.QustnrRspnsListVO;
import kr.or.ddit.vo.QustnrRspnsVO;
import kr.or.ddit.vo.QustnrSelectorVO;
import kr.or.ddit.vo.QustnrVO;
import kr.or.ddit.vo.QustnrWrapperVO;
import kr.or.ddit.vo.UsersVOWrapper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/school")
public class QustnrController {

	@Autowired
	private QustnrService qustnrService;
	
	
	// 설문 유형 코드 가져오는곳
	@GetMapping("codeGr")
	@ResponseBody
	public List<QustnrAnswerDetailGrVO> selectCodeGrList(){
		List<QustnrAnswerDetailGrVO> codeGrList= qustnrService.selectCodeGrList();
		return codeGrList;
	}
	// 설문 유형 코드에맞는 목록 가져오는곳
	@GetMapping("codeGr/{code}")
	@ResponseBody
	public List<QustnrAnswerDetailVO> selectCodeList(@PathVariable String code){
		List<QustnrAnswerDetailVO> codeList =qustnrService.selectCodeList(code);
		return codeList;
	}
	
	// 설문리스트 화면
	@GetMapping("sulmoon/{classCode}")
	public String sulmoon(Authentication authentication, @PathVariable String classCode,Model model) {
		UsersVOWrapper usersVOWrapper = (UsersVOWrapper) authentication.getPrincipal();
		String userId = usersVOWrapper.getUsername();
		List<QustnrVO> qusList =  qustnrService.selectQustnrList(userId,classCode);
		Date date = new Date();
		List<QustnrAnswerDetailGrVO> codeGrList= qustnrService.selectCodeGrList();
		List<QustnrSelectorVO> qustnrSelectorList = qustnrService.qustnrSelectorList(classCode);
		model.addAttribute("codeGrList", codeGrList);
		model.addAttribute("date", date);
		model.addAttribute("qusList", qusList);
		model.addAttribute("classCode", classCode);
		model.addAttribute("qustnrSelectorList", qustnrSelectorList);
		
		return "school/sulmoon";
	}
	
	// 설문등록화면
	@GetMapping("sulmoonInsert")
	public String sulmoonInsertForm(Model model) {
		List<QustnrAnswerDetailGrVO> codeGrList= qustnrService.selectCodeGrList();
		log.info("codeGrList 저장정보값 넘어온거: {}",codeGrList);
		return "school/sulmoonInsert";
	}
	
	// 설문저장
	@PostMapping("sulmoon/{classCode}")
	public String sulmoonIsert(
			@ModelAttribute QustnrWrapperVO qustnrWrapperVO,
			Authentication authentication,
			@PathVariable String classCode,
			RedirectAttributes redirectAttributes
			) {
		UsersVOWrapper usersVOWrapper = (UsersVOWrapper) authentication.getPrincipal();
		String userId = usersVOWrapper.getUsername();
		int cnt = qustnrService.insertQustnrAll(qustnrWrapperVO);
		if(cnt>0) {
			redirectAttributes.addFlashAttribute("result", "설문저장확인");
		}else {
			redirectAttributes.addFlashAttribute("result", "설문저장실패");
		}
		
		log.info("qustnrWrapperVO : {} ", qustnrWrapperVO);
		return "redirect:/school/sulmoon/"+classCode;
	}
	
	// 설문 제출 화면
	@GetMapping("sulmoonDetail/{qusNo}")
	@ResponseBody
	public Map<String, Object>  sulmoonDetail(@PathVariable long qusNo,
			Authentication authentication) {
		Map<String, Object> resultMap = new HashMap<>();
		UsersVOWrapper usersVOWrapper = (UsersVOWrapper) authentication.getPrincipal();
		String userId = usersVOWrapper.getUsername();
		// 설문제출을 했는지 안했는지 확인
		int cnt = qustnrService.isSelectQustnrRspns(userId, qusNo);
		if(cnt>0) {
			resultMap.put("result","no");
		}else {
			QustnrVO qustnrVO = qustnrService.selectQustnr(qusNo);
			resultMap.put("result",qustnrVO);
		}
		return resultMap;
	}
	// 설문 제출
	@PostMapping("sulmoonDetail")
	@ResponseBody
	public Map<String, String> insertSulmoonRspns(QustnrRspnsListVO qustnrRspnsListVO) {
		Map<String, String> resultMap = new HashMap<String, String>();
		int cnt = qustnrService.insertQustnrRspns(qustnrRspnsListVO);
		if(cnt>0) {
			resultMap.put("result", "ok");
		}else {
			resultMap.put("result", "fail");
		}
		return resultMap;
	}
	// 설문에대한 통계화면
	@GetMapping("sulmoonStatistics/{qusNo}")
	public Map<String,Object> sulmoonStatistics(
			Authentication authentication,
			@PathVariable long qusNo) {
		UsersVOWrapper usersVOWrapper = (UsersVOWrapper) authentication.getPrincipal();
		String userId = usersVOWrapper.getUsername();
		Map<String,Object> resultMap = new HashMap<>();
		List<QustnrAnswerTyVO> statisticsList = new ArrayList<>();
		// 설문제출을 했는지 안했는지 확인
		int cnt = qustnrService.isSelectQustnrRspns(userId, qusNo);
		if(cnt>0) {
			QustnrVO qustnrVO=  qustnrService.selectQustnr(qusNo);
			// 설문정보 파라미터 값 넣을려고 가져온정보
			List<QustnrAnswerTyVO> qustnrAnswerList = qustnrService.selectQustnrAnswer(qusNo);
			// 답변하나하나에 대한 카운트값 넣어준 리스트
			statisticsList =qustnrService.qustnrStatistics(qustnrAnswerList);
			log.info("statisticsList : {}",statisticsList);
			resultMap.put("result", qustnrVO);
			resultMap.put("statisticsList", statisticsList);
		}else {
			resultMap.put("result", "no");
		}
		return resultMap;
	}
	
	
}
