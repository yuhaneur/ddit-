package kr.or.ddit.item.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.ddit.spring.AbstractRootContextTest;
import kr.or.ddit.vo.FollowVO;
import kr.or.ddit.vo.ItemGiftVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class ItemGiftDAOTest extends AbstractRootContextTest{
	
	@Autowired
	ItemGiftDAO dao;
	
	@Test
	void testInsertItemGift() {
		ItemGiftVO itemGift = new ItemGiftVO();
		itemGift.setSenderUserId("A003");
		itemGift.setAddrseUserId("A002");
		itemGift.setItemCode("ITEM2");
		int rowcnt = dao.insertItemGift(itemGift);
		assertEquals(1, rowcnt);
		log.info("list : {}", itemGift);
		
	}

	@Test
	void testSelectItemGiftList() {
		ItemGiftVO iGift = new ItemGiftVO();
		iGift.setAddrseUserId("A003");
		List<ItemGiftVO> itemGiftList = dao.selectItemGiftList(iGift);
		assertNotNull(itemGiftList);
		log.info("list : {}", itemGiftList);
	}
	
	@Test
	void testSelectGiftFollowList() {
		List<FollowVO> followList = dao.selectGiftFollowList("S001","ITEM2");
		assertNotNull(followList);
		log.info("list : {}", followList);
	}

	
	
	@Test
	void testSelectTotalRecord() {
		fail("Not yet implemented");
	}

}
