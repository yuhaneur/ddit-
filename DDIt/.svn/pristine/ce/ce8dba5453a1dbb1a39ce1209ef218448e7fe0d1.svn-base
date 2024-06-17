package kr.or.ddit.Users.dao;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.ddit.spring.AbstractRootContextTest;
import kr.or.ddit.vo.UsersVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class UsersDAOTest extends AbstractRootContextTest {

	@Autowired
	UsersDAO dao;
	
	@Test
	void testSelectMemberForAuth() {
		UsersVO user = dao.selectUsersForAuth("ADMIN");
		log.info("list : {}", user);
	}
	
	@Test
	void testInsertUsers() {
		UsersVO user = new UsersVO();
		user.setUserId("test9999");
		user.setUserPw("1234");
		int a= dao.insertUsers(user);
		log.info("result : {}", a);
	}
}
