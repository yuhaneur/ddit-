package kr.or.ddit.point.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.point.service.PointService;
import kr.or.ddit.vo.PointHistoryVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/point")
public class PointController {
	
	@Autowired
	private PointService pService;

	
	@GetMapping
	public String pointHistory(){
		return "point/pointHistory";
	}
	
	@GetMapping("/list")
	@ResponseBody
	public List<PointHistoryVO> pointHistoryList(String clNm, Authentication authentication){
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		List<PointHistoryVO> historyList = pService.readPointHistoryList(userId, clNm);
		log.info("list : {}", historyList);
		return historyList;
	}
}
