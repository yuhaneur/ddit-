package kr.or.ddit.Users.dao;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.ddit.spring.AbstractRootContextTest;
import kr.or.ddit.vo.StudentVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class StudentDAOTest extends AbstractRootContextTest {
	
	@Autowired
	StudentDAO dao;
	
	@Test
	void test() {
		StudentVO student = new StudentVO();
		student.setUserId("TEST11");
		int a = dao.insertStudent(student);
		log.info("result : {}",a);
	}
}
