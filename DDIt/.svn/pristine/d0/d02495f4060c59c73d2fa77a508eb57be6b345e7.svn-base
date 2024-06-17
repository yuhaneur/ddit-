package kr.or.ddit.project.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.paging.PaginationRenderer;
import kr.or.ddit.paging.SimpleCondition;
import kr.or.ddit.project.service.ProjectService;
import kr.or.ddit.vo.ProjectStudentMappingVO;
import kr.or.ddit.vo.UsersVOWrapper;
import kr.or.ddit.vo.WorkVO;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/project")
public class WorkController {
	public static final String MODELNAME ="newWork"; 
	@Autowired
	private ProjectService service;
	
	@ModelAttribute(MODELNAME)
	public WorkVO newWork() {
		return new WorkVO();
	}
	
	
	
	
	@GetMapping("{projectNo}/work")
	public String projectWorkList(Model model,
			@RequestParam(required = false , defaultValue = "1") int currentPage 
			,@ModelAttribute("condition")SimpleCondition simpleCondition,@PathVariable int projectNo
			,Authentication authentication
			) { 
				UsersVOWrapper usersVOWrapper = (UsersVOWrapper) authentication.getPrincipal();
				log.info("겟 유저네임 {}",usersVOWrapper.getUsername());
				
		
				simpleCondition.setSearchType("work");
				PaginationInfo paging = new PaginationInfo(15,5);
				paging.setCurrentPage(currentPage);
				paging.setSimpleCondition(simpleCondition);
				
				List<WorkVO> work = service.retrieveWorkList(paging, projectNo);
				model.addAttribute("workList",work);
				log.info("workListㅎㅇ====>{}",work);
				
				List<ProjectStudentMappingVO> teamList = service.ReadTeam(projectNo);
				model.addAttribute("team",teamList);
				
				PaginationRenderer render = new BootstrapPaginationRenderer();
				model.addAttribute("pagingFunction", "paging");
				String pagingHTML = render.renderPagination(paging, "paging");
				model.addAttribute("pagingHTML",pagingHTML);
		
				return "project/workList";
	}
	
		@GetMapping("{projectNo}/workinsert")
		public String handler2(Model model,@PathVariable int projectNo) {
			List<WorkVO> workList = service.workList();
			model.addAttribute("workList",workList);
			List<ProjectStudentMappingVO> teamList = service.ReadTeam(projectNo);
			model.addAttribute("teamList",teamList);
			log.info("teamList===>{}",teamList);
		
			
			
			/*
			 * log.info("teamList===>{}",teamList);
			 * 
			 * log.info("userId===>{}",workList);
			 */
			return "project/workInsert";
		}
		
		
		@PostMapping("{projectNo}/workinsert")
		public String workInsert(
				@Valid @ModelAttribute(MODELNAME) WorkVO newWork
				, BindingResult errors
				, RedirectAttributes redirectAttributes
				, @PathVariable int projectNo
				
				) {
			log.info("new Work : {}",newWork);
			
			
			if(errors.hasErrors()) {
				System.out.println(errors.getAllErrors());
				redirectAttributes.addFlashAttribute(MODELNAME, newWork);
				redirectAttributes.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + MODELNAME,errors
						);
			
				return "redirect:/project/{projectNo}/workinsert";
			}else {
				service.createWork(newWork);
				return "redirect:/project/{projectNo}/work";
			}
		}
		
		
		/*
		 * @GetMapping("{workNo}") public String WorkDetail(Model model) { List<WorkVO>
		 * work = service.workList();
		 * 
		 * model.addAttribute("work",work);
		 * 
		 * return "project/workDetail"; }
		 */
		
		
		
	}
		


