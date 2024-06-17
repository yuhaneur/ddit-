package kr.or.ddit.edcCrse.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.EdcCrseVO;

public interface EdcCrseService {
	// 교육과정 조회
	public List<EdcCrseVO> retrieveEdcCrseList();
	// 교육 과정 교육일수 뽑아오기
	public EdcCrseVO selectEdcCrse(String edcCord);
	// 교육과정 등록
	public int createEdcCrse(EdcCrseVO edcCrseVO);
	
	// 교육과정 종료 삭제
	public int modifyEdcCrse(EdcCrseVO edcCrseVO);
	
	// 휴일 포함한 종료일 구하기
	public String endDate(String startDate,long edcDayCo);
	// 시작일부터 종료일까지의 휴일 개수 구하기
	public int countDate(String startDate,String endDate);
}
