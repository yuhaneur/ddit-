package kr.or.ddit.item.dao;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.ddit.spring.AbstractRootContextTest;
import kr.or.ddit.vo.ItemPresetDetailVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class ItemPresetDetailDAOTest extends AbstractRootContextTest{
	
	@Autowired
	ItemPresetDetailDAO dao;
	
	@Test
	void testUpdateItemPresetDetail() {
		int rowcnt = dao.updateItemPresetDetail("A003","ITEM3","1");
		assertEquals(1, rowcnt);
	}

	@Test
	void testSelectItemPresetDetail() {
		List<ItemPresetDetailVO> preset = dao.selectItemPresetDetail("A003");
		assertNotNull(preset);
		log.info("list : {}", preset);
		
	}

	@Test
	void testUpdateItemPresetDetailRandom() {
		ItemPresetDetailVO preset = new ItemPresetDetailVO();
		preset.setDetailNo(1L);
		preset.setItemPresetCode("I_PRS1");
		int rowcnt = dao.updateItemPresetDetailRandom("A003", preset);
		assertEquals(1, rowcnt);
	}

	@Test
	void testDeleteItemPresetDetail() {
		int rowcnt = dao.deleteItemPresetDetail("I_PRS3");
		assertEquals(1, rowcnt);
	}
	
	@Test
	void testDeleteItemPresetDetailOne() {
		int rowcnt = dao.deleteItemPresetDetailOne("I_PRS3","ITEM4");
		assertEquals(1, rowcnt);
	}

}

