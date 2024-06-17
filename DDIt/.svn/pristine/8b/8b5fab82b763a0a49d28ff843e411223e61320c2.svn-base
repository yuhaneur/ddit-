package kr.or.ddit.point.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.PointClVO;

@Mapper
public interface PointClDAO {
	/**
	 * 포인트분류 등록
	 * @param pointCl
	 * @return 등록된 레코드 수
	 */
	public int insertPointCl(PointClVO pointCl);
	
	/**
	 * 포인트분류 목록 조회
	 * @param 
	 * @return 존재하지 않으면, list.size()==0
	 */
	public List<PointClVO> selectPointClList();
	
	/**
	 * 포인트분류 상세 조회
	 * @param pointClCode
	 * @return 존재하지 않으면 null 반환
	 */
	public PointClVO selectPointCl(@Param("pointClCode") String pointClCode);
	
	/**
	 * 포인트분류 정보 수정
	 * @param pointCl
	 * @return 수정된 레코드 수
	 */
	public int updatePointCl(PointClVO pointCl);
	
	/**
	 * 포인트분류 정보 삭제
	 * @param pointClCode
	 * @return 삭제된 레코드 수
	 */
	public int deletePointCl(@Param("pointClCode") String pointClCode);
	
	
}
