package kr.or.ddit.message.controller;

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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.message.service.MessageService;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.paging.PaginationRenderer;
import kr.or.ddit.paging.SimpleCondition;
import kr.or.ddit.vo.MessageVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/message")
public class MessageController {
	
	@Autowired
	private MessageService service;
	
	@GetMapping("/list.do")
	public String messageListTest(
		@RequestParam(required = false , defaultValue = "1") int currentPage
		,@ModelAttribute("condition")SimpleCondition simpleCondition
		,Authentication authentication
		,Model model
	) {
		String userId = authentication.getName();
		if(authentication != null) {
			log.info("유저 아이디 : {}",authentication.getName());
		}
		
		//	파라미터로 받을 예정.
		log.info("사용자:{} ", userId);
		log.info("검색 : {}", simpleCondition);
		
		simpleCondition.setSearchType("message");
		PaginationInfo paging = new PaginationInfo(7,5);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simpleCondition);
		log.info("페이징 : {} ", paging);
		
		Map<String, Object> messageMap = new HashMap<>();
		
		messageMap.put("userId", userId);
		messageMap.put("paging", paging);
		
		List<MessageVO> message = service.readMessageList(messageMap);
		model.addAttribute("messageList", message);
		
		PaginationRenderer render = new BootstrapPaginationRenderer();
		model.addAttribute("pagingFunction", "paging");
		String pagingHTML = render.renderPagination(paging, "paging");
		model.addAttribute("pagingHTML",pagingHTML);
		
		log.info("paging : ============ {}", pagingHTML);
		return "message/messageList";
	}
	
	// 메세지 보관
	@ResponseBody
	@PostMapping("/important.do")
	public Map<String, String> messageImportant(
		@RequestBody int messageNo
	) {
		log.info("보관할 메세지 번호 : {}", messageNo);
		Map<String, String> result = new HashMap<>();
		int chk = service.importantMessage(messageNo);
		if(chk == 1) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	// 메세지 보관해제
	@ResponseBody
	@PostMapping("/importantRevert.do")
	public Map<String, String> messageImportantRevert(
			@RequestBody int messageNo
			) {
		log.info("보관할 메세지 번호 : {}", messageNo);
		Map<String, String> result = new HashMap<>();
		int chk = service.importantMessageRevert(messageNo);
		if(chk == 1) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	// 중요 쪽지함 이동
	@GetMapping("/importantList.do")
	public String messageImportantList(
		@RequestParam(required = false , defaultValue = "1") int currentPage
		,@ModelAttribute("condition")SimpleCondition simpleCondition
		,Authentication authentication
		,Model model
	) {
		String userId = authentication.getName();
		if(authentication != null) {
			log.info("유저 아이디 : {}",authentication.getName());
		}
		
		simpleCondition.setSearchType("message");
		PaginationInfo paging = new PaginationInfo(7,4);
		log.info("페이징 : {} ", paging);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simpleCondition);
		
		Map<String, Object> messageMap = new HashMap<>();
		
		messageMap.put("userId", userId);
		messageMap.put("paging", paging);
		
		
		List<MessageVO> message = service.readImportantMessageList(messageMap);
		model.addAttribute("messageList", message);
		
		PaginationRenderer render = new BootstrapPaginationRenderer();
		model.addAttribute("pagingFunction", "paging");
		String pagingHTML = render.renderPagination(paging, "paging");
		model.addAttribute("pagingHTML",pagingHTML);
		
		log.info("paging : ============ {}", pagingHTML);
		return "message/messageImportant";
	}
	
	// 메세지 삭제
	@ResponseBody
	@PostMapping("/delete.do")
	public Map<String, String> messageDelete(
		 @RequestBody int messageNo
	) {
		log.info("삭제할 메세지 번호 : {}", messageNo);
		Map<String, String> result = new HashMap<>();
		int chk = service.deleteMessage(messageNo);
		if(chk == 1) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	// 메세지 복구
	@ResponseBody
	@PostMapping("/revert.do")
	public Map<String, String> messageRevert(
			@RequestBody int messageNo
			) {
		log.info("삭제할 메세지 번호 : {}", messageNo);
		Map<String, String> result = new HashMap<>();
		int chk = service.revertMessage(messageNo);
		if(chk == 1) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	// 메세지 영구삭제
	@ResponseBody
	@PostMapping("/hardDelete.do")
	public Map<String, String> messageHardDelete(
			@RequestBody int messageNo
			) {
		log.info("삭제할 메세지 번호 : {}", messageNo);
		Map<String, String> result = new HashMap<>();
		int chk = service.deleteHardMessage(messageNo);
		if(chk == 1) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	// 휴지통 이동
	@GetMapping("/deleteList.do")
	public String messageDelTest(
		@RequestParam(required = false , defaultValue = "1") int currentPage
		,@ModelAttribute("condition")SimpleCondition simpleCondition
		,Authentication authentication
		,Model model
	) {
		String userId = authentication.getName();
		if(authentication != null) {
			log.info("유저 아이디 : {}",authentication.getName());
		}
		
		simpleCondition.setSearchType("message");
		PaginationInfo paging = new PaginationInfo(10,4);
		log.info("페이징 : {} ", paging);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simpleCondition);
		
		Map<String, Object> messageMap = new HashMap<>();
		
		messageMap.put("userId", userId);
		messageMap.put("paging", paging);
		
		List<MessageVO> message = service.readDeleteMessageList(messageMap);
		model.addAttribute("messageList", message);
		
		PaginationRenderer render = new BootstrapPaginationRenderer();
		model.addAttribute("pagingFunction", "paging");
		String pagingHTML = render.renderPagination(paging, "paging");
		model.addAttribute("pagingHTML",pagingHTML);
		
		log.info("paging : ============ {}", pagingHTML);
		return "message/messageDel";
	}
	
	// 메세지 상세보기
	@GetMapping("/{messageNo}")
	public String messageDetailTest(
		@PathVariable int messageNo
		,Model model
	) {
		log.info("messageNo : {}", messageNo);
		MessageVO messageVo = service.readMessage(messageNo);
		log.info("상세 {} ", messageVo);
		model.addAttribute("message",messageVo);
		return "message/messageDetail";
	}
	
	// 메세지 작성 폼
	@GetMapping("/writeForm.do")
	public String messageInsertForm(
		
	) {
		return "message/messageWrite";
	}
	
	// 메세지 작성
	@PostMapping("/write.do")
	public String messageInsert(
		@ModelAttribute MessageVO message
	) {
		log.info("메세지 : {}", message);
		service.createMessage(message);
		return "redirect:list.do";
	}
	
	// 메세지 답장 폼
	@GetMapping("/resendForm{messageNo}")
	public String messageResendForm(
		@PathVariable int messageNo
		,Model model
	) {
		log.info("messageNo : {}", messageNo);
		MessageVO messageVo = service.readMessage(messageNo);
		log.info("상세 {} ", messageVo);
		model.addAttribute("reMessage",messageVo);
		return "message/messageResend";
	}
}
