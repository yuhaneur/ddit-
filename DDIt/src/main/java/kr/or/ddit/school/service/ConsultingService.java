package kr.or.ddit.school.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.ConsultingJournalVO;
import kr.or.ddit.vo.ConsultingVO;

public interface ConsultingService {
	/** 선생님의 상담일정 조회 */
	public List<ConsultingVO> selectCounsultingTeacherList(String userId);
	/**
	 * 상담일정 등록
	 */
	public int insertCounsulting(ConsultingVO consultingVO);
	/**
	 * 대기중인 상담목록
	 */
	public List<ConsultingVO> selectDcounsultingList(String userId2);
	
	/**
	 * 완료된 상담목록
	 */
	public List<ConsultingVO> selectFcounsultingList(String userId2);
	/**
	 * 진행중인상담목록
	 */
	public List<ConsultingVO> selectYcounsultingList(String userId2);
	/**
	 * 선생님 상담리스트 출력
	 * @param userId
	 * @return
	 */
	public List<ConsultingVO> selectConsultingList(String userId);
	/**
	 * 상담 진행상태 업데이트
	 * @param consultingVO
	 * @return
	 */
	public int updateConsultingConfmAt(ConsultingVO consultingVO);
	
	/**
	 * 상담신청 한건 조회
	 * @param consultingNo
	 * @return
	 */
	public ConsultingVO selectConsulting(long consultingNo);
	
	/**
	 * 상담일지 작성등록
	 * @param consultingJournalVO
	 * @return
	 */
	public int insertConsultingJournal(ConsultingJournalVO consultingJournalVO);
	/**
	 * 상담일지 리스트 출력
	 * @return
	 */
	public List<ConsultingJournalVO> selectConsultingJournalList(String userId);
	/**
	 * 상담일지 상세내역 조회
	 * @param consultingJournalNo
	 * @return
	 */
	public ConsultingJournalVO selectConsultingJournal(long consultingJournalNo);
	/**
	 * 상담일지 내용 수정 
	 * @param consultingJournalVO
	 * @return
	 */
	public int updateConsultingJournal(ConsultingJournalVO consultingJournalVO);
}
