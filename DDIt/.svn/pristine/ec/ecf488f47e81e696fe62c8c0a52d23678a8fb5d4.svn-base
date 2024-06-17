package kr.or.ddit.project.controller.advice;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;


import lombok.extern.slf4j.Slf4j;
@Slf4j
@ControllerAdvice("kr.or.ddit.project.controller")
public class ProjectControllerAdvice {
   /**
    * 게시판에 대해 특정 예외가 발생시 공통 처리하기 위한 핸들러 메소드	
    */
	@ExceptionHandler({ BoardException.class })
	public String exceptionHandler(Throwable e, HttpServletResponse response) {
		response.reset();
		log.error(String.format("프로젝트 예외 발생, %s", e.getMessage()), e);
		return "error/exceptionView";
	}
}
