package kr.or.ddit.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.paging.PaginationRenderer;
import kr.or.ddit.paging.SimpleCondition;
import kr.or.ddit.project.service.ProjectService;
import kr.or.ddit.vo.CmmnCodeVO;
import kr.or.ddit.vo.ProjectStudentMappingVO;
import kr.or.ddit.vo.UsersVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/project/{projectNo}")
public class SettingController {
	public static final String MODELNAME="newTeam";
	
	@Autowired
	private ProjectService service;
	
	@ModelAttribute(MODELNAME)
	public ProjectStudentMappingVO newTeam() {
		return new ProjectStudentMappingVO();
	}
	
	@GetMapping("teamList1")
	public String listUI(@PathVariable int projectNo, Model model ,@ModelAttribute CmmnCodeVO cmmnCodeVO,@RequestParam(required = false , defaultValue = "1") int currentPage 
			,@ModelAttribute("condition")SimpleCondition simpleCondition ) {
		
		PaginationInfo paging =new PaginationInfo(5,10);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simpleCondition);
		List<ProjectStudentMappingVO> psm = service.myTeamList(paging, projectNo);
		
		model.addAttribute("psmList",psm);
		log.info("psmList찾아요!!!:{}",psm);
		
		PaginationRenderer render = new BootstrapPaginationRenderer();
		model.addAttribute("pagingFunction", "pagingMyteam");
		String pagingHTML = render.renderPagination(paging, "pagingMyteam");
		model.addAttribute("pagingHTML",pagingHTML);
		List<CmmnCodeVO> code = service.CmmnCodeList();
		log.info("codeList찾기{}:" ,code);
		model.addAttribute("codeList",code);
		return "project/setting";
	}
	
	@GetMapping(value="teamList2", produces = MediaType.APPLICATION_JSON_VALUE)
	public String teamList(Model model,
			@RequestParam(required = false , defaultValue = "1") int currentPage 
			,@ModelAttribute("condition")SimpleCondition simpleCondition,@PathVariable int projectNo
			
			) {
		simpleCondition.setSearchType("user");
		PaginationInfo paging =new PaginationInfo(5,10);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simpleCondition);
		
		List<UsersVO> user = service.retrieveUserList(paging, projectNo);
		
		log.info("userList찾기:{}",user);
		
		model.addAttribute("userList",user);
		
		
		PaginationRenderer render = new BootstrapPaginationRenderer();
		model.addAttribute("pagingFunction", "paging");
		String pagingHTML = render.renderPagination(paging, "paging");
		model.addAttribute("pagingHTML",pagingHTML);
		
		return "jsonView";
		
	}
	@GetMapping("teaminsert")
	public String insertHandler(Model model) {
		
		return "project/setting";
	}
	
	//요청URI : /projct/20/teaminsert
	//요청파라미터(JSON) : {"cbox": "A010","cmmnCodeGr": "3"}
	@PostMapping("/teaminsert")
	@ResponseBody
	public String myTeamInsert(
			@PathVariable(value="projectNo") int projectNo,
			@Valid @ModelAttribute(MODELNAME) ProjectStudentMappingVO newTeam
			,BindingResult errors
			,RedirectAttributes redirectAttributes
			,@RequestBody ProjectStudentMappingVO projectStudentMappingVO 
			) {
		log.info("myTeamInsert->projectNo : " + projectNo);
		
		//2. RequestBody
		//{"userId": "A010","projectRole": "3"}
		log.info("myTeamInsert->projectStudentMappingVO : " + projectStudentMappingVO);
		
		//1. /project/20/teaminsert?userId=A010&projectRole=3
		//ProjectStudentMappingVO(userId=A010, projectNo=20, projectRole=null, deleteAt=null)
		log.info("new myTeam :{}",newTeam);
		
		
		if(errors.hasErrors()) {
			System.out.println(errors.getAllErrors());
			redirectAttributes.addFlashAttribute(MODELNAME, newTeam);
			redirectAttributes.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + MODELNAME,errors
					);
			return "redirect:/project/teaminsert";
		}else {
			service.insertTeam(newTeam);
			return "redirect:/project";
		}
	}
	@DeleteMapping("teamdelete")
	@ResponseBody
	public Map<String, String> myTeamDelete(
			@RequestBody ProjectStudentMappingVO projectStudentMappingVO
			) {
				/* userId = userId.replace("\"",""); */
		
		log.info("userId나와라잇!!!!! :{}",projectStudentMappingVO);
		int cnt = service.deleteTeam(projectStudentMappingVO);
		Map<String, String> result = new HashMap<String, String>();
		if(cnt>0) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
		
		
	}
	
	@PutMapping("teamupdate")
	@ResponseBody
	public Map<String, String> myTeamUpdate( @RequestBody ProjectStudentMappingVO projectStudentMappingVO){
		log.info("넘어왔냐잇??? :{}",projectStudentMappingVO );
		
		int cnt = service.updateTeam(projectStudentMappingVO);
		Map<String, String> result = new HashMap<String, String>();
		
		if(cnt>0) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
}
	


