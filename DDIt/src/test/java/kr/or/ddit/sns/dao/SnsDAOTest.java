package kr.or.ddit.sns.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.io.IOException;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.ddit.spring.AbstractRootContextTest;
import kr.or.ddit.vo.SnsFeedVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class SnsDAOTest extends AbstractRootContextTest{
	
	@Autowired
	private SnsDAO dao;
	
	@Test
	void testSelectFeedList() {
		List<SnsFeedVO> snsFeedList = dao.selectFeedList();
		log.info("FeedList {} ", snsFeedList);
	}
	
	@Test
	void testSelectFeed() {
		int snsFeedNo = 1;
		SnsFeedVO snsFeed = dao.selectFeed(snsFeedNo);
		
		log.info("Feed {} ", snsFeed);
	}
	
	@Test
	void testInsertFeed() throws Exception {
		SnsFeedVO snsFeed = new SnsFeedVO();
		snsFeed.setSnsFeedNo((long) 5);
		snsFeed.setSnsFeedCn("인서트_피드내용");
		snsFeed.setUserId("A001");
		
		int chk = dao.insertFeed(snsFeed);
		log.info("성공여부 {} ", chk);
	}
	
	@Test
	void testUpdateFeed() {
		SnsFeedVO snsFeed = new SnsFeedVO();
		snsFeed.setSnsFeedCn("업뎃내용1");
		snsFeed.setAtFileNo((long) 2);
		snsFeed.setSnsFeedNo((long) 1);
		
		int chk = dao.updateFeed(snsFeed);
		log.info("성공여부 {} ", chk);
	}
	
}
