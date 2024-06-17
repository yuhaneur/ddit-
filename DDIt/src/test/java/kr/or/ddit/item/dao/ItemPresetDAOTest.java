package kr.or.ddit.item.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.ddit.spring.AbstractRootContextTest;
import kr.or.ddit.vo.ItemPresetVO;
import kr.or.ddit.vo.ItemVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class ItemPresetDAOTest extends AbstractRootContextTest{

	@Autowired
	ItemPresetDAO dao;
	
	@Test
	void testSelectItemPresetList() {
		List<ItemPresetVO> preset = dao.selectItemPresetList("A003");
		assertNotNull(preset);
		log.info("list : {}", preset);
	}
	
	@Test
	void testUpdatePresetY() {
		int cnt = dao.updateItemPresetY("A003", "I_PRS2");
		assertEquals(1, cnt);
		log.info("list : {}", cnt);
	}
	
	
}
