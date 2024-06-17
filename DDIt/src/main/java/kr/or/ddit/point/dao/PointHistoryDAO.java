package kr.or.ddit.point.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.vo.PointHistoryVO;

@Mapper
public interface PointHistoryDAO {
	
	/**
	 * 포인트이력 등록
	 * @param pointHistory
	 * @return 등록된 레코드 수
	 */
	public int insertPointHistory(PointHistoryVO pointHistory);
	
	
	/**
	 * 포인트이력 목록 전체조회
	 * @param 
	 * @return 존재하지 않으면, list.size()==0
	 */
	public List<PointHistoryVO> selectPointHistoryListAll();
	
	
	/**
	 * 포인트이력 목록 개인별조회
	 * @param userId, clNm
	 * @return 존재하지 않으면, list.size()==0
	 */
	public List<PointHistoryVO> selectPointHistoryList(@Param("userId") String userId, @Param("clNm") String clNm);
	
	/**
	 * 사용가능포인트 조회
	 * @param userId
	 * @return 존재하지 않으면, list.size()==0
	 */
	public int selectPoint(@Param("userId") String userId);
	
	

}
