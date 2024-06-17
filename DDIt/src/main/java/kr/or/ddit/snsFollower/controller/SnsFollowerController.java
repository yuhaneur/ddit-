package kr.or.ddit.snsFollower.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.paging.PaginationRenderer;
import kr.or.ddit.paging.SimpleCondition;
import kr.or.ddit.snsFollower.service.SnsFollowerService;
import kr.or.ddit.vo.FollowVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/follower")
public class SnsFollowerController {
	
	@Autowired
	private SnsFollowerService service;
	
	@GetMapping("/list.do")
	public String followerList(
		@RequestParam(required = false , defaultValue = "1") int currentPage
		,@ModelAttribute("condition")SimpleCondition simpleCondition
		,Authentication authentication
		,Model model
	) {
		//	파라미터로 받을 예정.
		String userId = authentication.getName();
		if(authentication != null) {
			log.info("유저 아이디 : {}",authentication.getName());
		}
		
		log.info("사용자:{} ", userId);
		log.info("검색 : {}", simpleCondition);
		
		PaginationInfo paging = new PaginationInfo(18,5);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simpleCondition);
		log.info("페이징 : {} ", paging);
		
		Map<String, Object> followerMap = new HashMap<>();
		
		followerMap.put("userId", userId);
		followerMap.put("paging", paging);
		
		List<FollowVO> follower = service.readFollowerList(followerMap);
		model.addAttribute("followerList", follower);
		
		PaginationRenderer render = new BootstrapPaginationRenderer();
		model.addAttribute("pagingFunction", "paging");
		String pagingHTML = render.renderPagination(paging, "paging");
		model.addAttribute("pagingHTML",pagingHTML);
		
		return "sns/snsFollower";
	}
	
}
