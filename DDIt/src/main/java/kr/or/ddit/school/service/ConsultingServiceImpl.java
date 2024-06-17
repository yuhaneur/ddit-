package kr.or.ddit.school.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import kr.or.ddit.school.dao.ConsultingDAO;
import kr.or.ddit.vo.ConsultingJournalVO;
import kr.or.ddit.vo.ConsultingVO;

@Service
public class ConsultingServiceImpl implements ConsultingService{

	@Autowired
	private ConsultingDAO dao;
	
	@Override
	public List<ConsultingVO> selectCounsultingTeacherList(String userId) {
		List<ConsultingVO> consultingList = dao.selectCounsultingTeacherList(userId);
		return consultingList;
	}

	@Override
	public int insertCounsulting(ConsultingVO consultingVO) {
		int cnt = dao.insertCounsulting(consultingVO);
		return cnt;
	}

	@Override
	public List<ConsultingVO> selectDcounsultingList(String userId2) {
		List<ConsultingVO> consultingList= dao.selectDcounsultingList(userId2);
		return consultingList;
	}

	@Override
	public List<ConsultingVO> selectFcounsultingList(String userId2) {
		List<ConsultingVO> consultingList= dao.selectFcounsultingList(userId2);
		return consultingList;
	}

	@Override
	public List<ConsultingVO> selectYcounsultingList(String userId2) {
		List<ConsultingVO> consultingList= dao.selectYcounsultingList(userId2);
		return consultingList;
	}

	@Override
	public List<ConsultingVO> selectConsultingList(String userId) {
		List<ConsultingVO> consultingList = dao.selectConsultingList(userId);
		return consultingList;
	}

	@Override
	public int updateConsultingConfmAt(ConsultingVO consultingVO) {
		int cnt = dao.updateConsultingConfmAt(consultingVO);
		return cnt;
	}

	@Override
	public ConsultingVO selectConsulting(long consultingNo) {
		ConsultingVO consultingVO = dao.selectConsulting(consultingNo);
		return consultingVO;
	}

	@Override
	public int insertConsultingJournal(ConsultingJournalVO consultingJournalVO) {
		int cnt = dao.insertConsultingJournal(consultingJournalVO);
		if(cnt>0) {
			ConsultingVO consultingVO = new ConsultingVO();
			consultingVO.setConsultingNo(consultingJournalVO.getConsultingNo());
			consultingVO.setConsultingConfmAt("F");
			cnt += dao.updateConsultingConfmAt(consultingVO);
		}
		return cnt;
	}

	@Override
	public List<ConsultingJournalVO> selectConsultingJournalList(String userId) {
		List<ConsultingJournalVO> consultingJournalList = dao.selectConsultingJournalList(userId);
		return consultingJournalList;
	}

	@Override
	public ConsultingJournalVO selectConsultingJournal(long consultingJournalNo) {
		ConsultingJournalVO consultingJournalVO=dao.selectConsultingJournal(consultingJournalNo);
		if(consultingJournalVO == null) {
			throw new NullPointerException("해당 상담일지는 없습니다.");
		}
		return consultingJournalVO;
	}

	@Override
	public int updateConsultingJournal(ConsultingJournalVO consultingJournalVO) {
		int cnt = dao.updateConsultingJournal(consultingJournalVO);
		return cnt;
	}

}
