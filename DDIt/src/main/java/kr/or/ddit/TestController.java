package kr.or.ddit;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.apache.tiles.request.Request;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class TestController {

	@PreAuthorize("hasRole('ADMIN')")
	@GetMapping("/test.do")
	public String test(Authentication authentication) {
		if(authentication != null) {
			log.info("{}",authentication.getName());
			Cookie cookie = new Cookie(null, null);
		}
		
		return "test";
	}
	
	@GetMapping("/test2.do")
	public String test2() {
		return "test2";
	}
	
	@GetMapping("/test3.do")
	public String test3() {
		return "test3";
	}

}
