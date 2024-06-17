package kr.or.ddit.item.dao;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.fail;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.ddit.spring.AbstractRootContextTest;
import kr.or.ddit.vo.CmmnCodeVO;
import kr.or.ddit.vo.ItemVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class ItemDAOTest extends AbstractRootContextTest {
	
	@Autowired
	ItemDAO dao;
	
	@Test
	void testInsertItem() {
		ItemVO item = new ItemVO();
		item.setItemCtgry(1L);
		item.setItemNm("반짝반짝");
		item.setItemEffect("border");
		item.setItemPc(100L);
		item.setItemRgsDe("2024-05-15");
		item.setItemEndDe("9999-12-31");
		item.setItemDeleteAt("N");
		assertDoesNotThrow(()->dao.insertItem(item));
		log.info("list : {}", item);
		
	}

	@Test
	void testSelectItemList() {
		List<ItemVO> itemList = dao.selectItemList("A003",2L);
		assertNotNull(itemList);
		log.info("list : {}", itemList);
	}
	
	
	@Test
	void testSelectItemCmmnList() {
		List<CmmnCodeVO> cmmnList = dao.selectItemCmmnList();
		assertNotNull(cmmnList);
		log.info("list : {}", cmmnList);
	}
	
	
	@Test
	void testSelectTotalRecord() {
		fail("Not yet implemented");
	}

	@Test
	void testSelectItem() {
		assertDoesNotThrow(()->dao.selectItem("ITEM3","A003"));
	}

	@Test
	void testUpdateItem() {
		ItemVO item = new ItemVO();
		item.setItemCtgry(1L);
		item.setItemNm("딩글딩글");
		item.setItemEffect("DIV");
		item.setItemPc(66L);
		item.setItemRgsDe("2024-05-01");
		item.setItemEndDe("9999-12-31");
		item.setItemDeleteAt("N");
		item.setItemCode("ITEM3");
		int rowcnt = dao.updateItem(item);
		assertEquals(1, rowcnt);
	}

	@Test
	void testDeleteItem() {
		int rowcnt = dao.deleteItem("ITEM3");
		assertEquals(1, rowcnt);
	}

}
