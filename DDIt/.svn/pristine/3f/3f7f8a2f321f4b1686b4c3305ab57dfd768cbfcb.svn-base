package kr.or.ddit.authority.dao;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.ddit.spring.AbstractRootContextTest;
import kr.or.ddit.vo.AuthorityVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class AuthorityDAOTest extends AbstractRootContextTest {

	@Autowired
	AuthorityDAO dao;
	
	@Test
	void testInsertAuthority() {
		AuthorityVO authority = new AuthorityVO();
		authority.setUserId("TEST11");
		authority.setAuth("1");
		int a = dao.insertAuthority(authority);
		log.info("result : {}",a);
	}

}
