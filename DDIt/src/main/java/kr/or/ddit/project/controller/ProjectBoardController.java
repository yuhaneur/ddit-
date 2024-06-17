package kr.or.ddit.project.controller;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
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
import kr.or.ddit.vo.GrAtchFileVO;
import kr.or.ddit.vo.ProjectPostVO;
import kr.or.ddit.vo.UsersVOWrapper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/project/{projectNo}")

public class ProjectBoardController {
	public static final String MODELNAME="newBoard";
	
	public static final String MODELNAME1="updateBoard";
	
	@Autowired
	private ProjectService service;
	
	@ModelAttribute(MODELNAME)
	public ProjectPostVO newBoard() {
		return new ProjectPostVO();
	}
	
	@GetMapping("post")
	public String postList(Model model
			,@RequestParam(required = false , defaultValue = "1") int currentPage
			,@ModelAttribute("condition")SimpleCondition simpleCondition
			,@PathVariable int projectNo
			,Authentication authentication
			) {
		UsersVOWrapper usersVOWrapper = (UsersVOWrapper) authentication.getPrincipal();
		log.info("겟 유저네임 {}",usersVOWrapper.getUsername());
		
		simpleCondition.setSearchType("post");
		PaginationInfo paging = new PaginationInfo(10,5);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simpleCondition);
		
		List<ProjectPostVO> post = service.selectPostList(paging, projectNo);
		model.addAttribute("postList",post);
		
		PaginationRenderer render = new BootstrapPaginationRenderer();
		model.addAttribute("pagingFunction", "paging");
		String pagingHTML = render.renderPagination(paging, "paging");
		model.addAttribute("pagingHTML",pagingHTML);
			
		return "project/postList";
	}
	
	@GetMapping("postinsert")
	public String handler(Model model) {
		
		return "project/postInsert";
	}
	@PostMapping("postinsert")
	public String postInsert(
			@PathVariable(value="projectNo") int projectNo,
			@Valid @ModelAttribute(MODELNAME) ProjectPostVO newBoard
			, BindingResult errors
			, RedirectAttributes redirectAttributes
			) {
		log.info("newBoard : {} ",newBoard);
		if(errors.hasErrors()) {
			System.out.println(errors.getAllErrors());
			redirectAttributes.addFlashAttribute(MODELNAME, newBoard);
			redirectAttributes.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + MODELNAME,errors
					);
			return "redirect:/project/postinsert";
		}else {
			service.insertPost(newBoard);
			return "redirect:/project/{projectNo}/post";
		}
		
	}
	@GetMapping("{projectPostNo}")
	public String postDetail(ProjectPostVO projectPostVO, Model model) {
		log.info("projectPostNo찍혀라잇:{}",projectPostVO);
		ProjectPostVO post = service.readPost(projectPostVO);
		
		model.addAttribute("post",post);
		log.info("post찍혀라잇:{}", post);
		log.info("AtchList:{}=====>>>>",post.getAtchList());
		return "project/postDetail";
		
	}
	@GetMapping("{projectPostNo}/atch/{atchFileNo}/{atchFileTurn}")
	public ResponseEntity<Resource> atchDownload(GrAtchFileVO grAtchFileVO) {
		
		GrAtchFileVO atch = service.selectAttatch(grAtchFileVO);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		headers.setContentLength(atch.getFileMg());
		ContentDisposition contentDisposition = 
			ContentDisposition.attachment()
						.filename(atch.getFileName(), Charset.defaultCharset())
										.build();
		headers.setContentDisposition(contentDisposition);
		return ResponseEntity.ok()
						.headers(headers)
						.body(atch.getBinary());
	}
	
	@DeleteMapping("postdelete")
	@ResponseBody
	public Map<String, String> postDelete(
			@RequestBody ProjectPostVO projectPostVO
			){
		
		log.info("projectPostNo나와 :{} ", projectPostVO);
		
		int cnt = service.deletePost(projectPostVO);
		Map<String, String> result = new HashMap<String, String>();
		if(cnt>0) {
			result.put("result", "ok");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	@GetMapping("{projectPostNo}/postupdate")
	public String UpdateUI(@PathVariable int projectNo , @PathVariable int projectPostNo, Model model) {
		ProjectPostVO paramVO = new ProjectPostVO();
		paramVO.setProjectPostNo((long) projectPostNo);
		paramVO.setProjectNo((long) projectNo);
		
		
		ProjectPostVO post = service.readPost(paramVO);
		model.addAttribute(MODELNAME1, post);
		return "project/postUpdate";
	}
	
	
	@PutMapping("{projectPostNo}/postupdate")
	public String postUpadte(
			@PathVariable int projectNo , @PathVariable int projectPostNo,
			@Valid @ModelAttribute(MODELNAME1) ProjectPostVO updateBoard
			, BindingResult errors
			, RedirectAttributes redirectAttributes
			) {
		log.info("updateBoard : {} ",updateBoard);
		if(errors.hasErrors()) {
			System.out.println(errors.getAllErrors());
			redirectAttributes.addFlashAttribute(MODELNAME, updateBoard);
			redirectAttributes.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + MODELNAME,errors
					);
			return "redirect:/project/{projectPostNo}/postupdate";
		}else {
			service.updatePost(updateBoard);
			return "redirect:/project/{projectNo}/{projectPostNo}";
		}
		
	}
	
	@DeleteMapping("{projectPostNo}/atch/{atchFileNo}/{atchFileTurn}")
	@ResponseBody
	public String deleteAttatch(GrAtchFileVO grAtchFileVO) {
		service.deleteAttatch(grAtchFileVO);
		return "SUCCESS";
	}
	
}
