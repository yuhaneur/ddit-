package kr.or.ddit.project.dao;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.ddit.spring.AbstractRootContextTest;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class ProjectDaoTest extends AbstractRootContextTest{
	
	@Autowired
	ProjectDao dao;

	@Test
	void selectProjectList() {
		dao.selectProjectList(null).forEach(p->log.info("project:{}",p));
		
	}

}
