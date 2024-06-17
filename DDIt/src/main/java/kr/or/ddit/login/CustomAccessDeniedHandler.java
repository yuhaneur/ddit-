package kr.or.ddit.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.slf4j.Slf4j;


@Slf4j
public class CustomAccessDeniedHandler implements AccessDeniedHandler {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException ) throws IOException, ServletException {

	   log.debug("체킁: {}",accessDeniedException.getMessage());
		
	   request.getSession().setAttribute("forbidden", "접근 권한이 없습니다.");
        // 이전 요청 URL을 가져옵니다.
        String previousRequestUrl = request.getHeader("Referer");

        // 이전 요청 URL이 존재하는지 확인합니다.
        if (previousRequestUrl != null && !previousRequestUrl.isEmpty()) {
            // JavaScript를 사용하여 알림 메시지를 전송합니다.
        	
            // 이전 요청 페이지로 사용자를 다시 리다이렉트합니다.
            response.sendRedirect(previousRequestUrl);
        } else {
            // 이전 요청 URL이 사용할 수 없는 경우 홈페이지로 리다이렉트합니다.
            response.sendRedirect("/");
        }
		
	}
}