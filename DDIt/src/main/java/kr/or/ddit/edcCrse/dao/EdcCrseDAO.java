package kr.or.ddit.edcCrse.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.EdcCrseVO;

@Mapper
public interface EdcCrseDAO {

		// 교육과정 조회
		public List<EdcCrseVO> selectEdcCrseList();
		
		// 교육 과정 교육일수 뽑아오기
		public EdcCrseVO selectEdcCrse(String edcCord);
		// 교육과정 등록
		public int insertEdcCrse(EdcCrseVO edcCrseVO);
		
		// 교육과정 종료 삭제
		public int updateEdcCrse(EdcCrseVO edcCrseVO);
		
		// 종료일 구하기
		public String endDate(@Param("startDate") String startDate,@Param("edcDayCo") long edcDayCo);
		// 시작일부터 종료일까지의 휴일 개수 구하기
		public int countDate(@Param("startDate") String startDate,@Param("endDate") String endDate);
}
