package kr.or.ddit.Users.service;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.ddit.spring.AbstractRootContextTest;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class CustomUsersDetailsServiceTest extends AbstractRootContextTest {

	@Autowired
	CustomUsersDetailsService service;
	
	@Test
	void testLoadUserByUsername() {
		service.loadUserByUsername("ADMIN");
		log.info("list : {}", service);
	}

}
