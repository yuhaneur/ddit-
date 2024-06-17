package kr.or.ddit.point.dao;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.ddit.spring.AbstractRootContextTest;
import kr.or.ddit.vo.PointClVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class PointClDAOTest extends AbstractRootContextTest{
	
	@Autowired
	PointClDAO dao;
	
	@Test
	void testInsertPointCl() {
		PointClVO pointCl = new PointClVO();
		pointCl.setPointClCode("TEST");
		pointCl.setPointClNm("테스트");
		pointCl.setPoint(100L);
		assertDoesNotThrow(()->dao.insertPointCl(pointCl));
		log.info("list : {}", pointCl);
	}

	@Test
	void testSelectPointClList() {
		List<PointClVO> pointCl = dao.selectPointClList();
		assertNotNull(pointCl);
		log.info("list : {}", pointCl);
	}

	@Test
	void testSelectPointCl() {
		assertDoesNotThrow(()->dao.selectPointCl("CBCR"));
	}

	@Test
	void testUpdatePointCl() {
		PointClVO pointCl = new PointClVO();
		pointCl.setPointClCode("CBCR");
		pointCl.setPointClNm("테스트");
		pointCl.setPoint(100L);
		assertDoesNotThrow(()->dao.updatePointCl(pointCl));
		log.info("list : {}", pointCl);
	}

	@Test
	void testDeletePointCl() {
		assertDoesNotThrow(()->dao.deletePointCl("CBCR"));
	}

}
