package kr.or.ddit;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class IndexController {
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/index.do")
	public String index(Model model) {
		return "index";
	}
}
