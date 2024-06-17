package kr.or.ddit.point.service;

import java.util.List;

import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.vo.PointHistoryVO;

public interface PointService {
	
	/**
	 * 사용가능 포인트 조회
	 * @param userId
	 * @return
	 */
	public int readPoint(String userId);
	
	/**
	 * 포인트 이력 등록
	 * @param pointHistory
	 * @return
	 */
	public int creatPointHistory(PointHistoryVO pointHistory);
	
	
	/**
	 * 포인트 이력 목록 (사용자별)
	 * @param userId, clNm
	 * @return
	 */
	public List<PointHistoryVO> readPointHistoryList(String userId, String clNm);
	
}
