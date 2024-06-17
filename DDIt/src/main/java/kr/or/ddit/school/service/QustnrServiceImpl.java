package kr.or.ddit.school.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.school.dao.QustnrDAO;
import kr.or.ddit.vo.QustnrAnswerDetailGrVO;
import kr.or.ddit.vo.QustnrAnswerDetailVO;
import kr.or.ddit.vo.QustnrAnswerTyVO;
import kr.or.ddit.vo.QustnrQuestionsVO;
import kr.or.ddit.vo.QustnrRspnsListVO;
import kr.or.ddit.vo.QustnrRspnsVO;
import kr.or.ddit.vo.QustnrSelectorVO;
import kr.or.ddit.vo.QustnrTrgterVO;
import kr.or.ddit.vo.QustnrVO;
import kr.or.ddit.vo.QustnrWrapperVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class QustnrServiceImpl implements QustnrService{

	@Autowired
	private QustnrDAO dao;
	
	@Override
	public List<QustnrVO> selectQustnrList(String userId,String classCode) {
		List<QustnrVO> qustnrList =  dao.selectQustnrList(userId,classCode);
		return qustnrList;
	}

	@Override
	public List<QustnrAnswerDetailGrVO> selectCodeGrList() {
		return dao.selectCodeGrList();
	}

	@Override
	public List<QustnrAnswerDetailVO> selectCodeList(String qustnrAnswerCode) {
		return dao.selectCodeList(qustnrAnswerCode);
	}

	@Override
	public List<QustnrSelectorVO> qustnrSelectorList(String classCode) {
		List<QustnrSelectorVO> qustnrSelectorList =dao.qustnrSelectorList(classCode);
		return qustnrSelectorList;
	}

	@Override
	public int insertQustnr(QustnrVO qustnrVO) {
		int cnt = dao.insertQustnr(qustnrVO);
		return cnt;
	}

	@Override
	public int insertQustnrQuestions(QustnrQuestionsVO qustnrQuestionsVO) {
		int cnt = dao.insertQustnrQuestions(qustnrQuestionsVO);
		return cnt;
	}

	@Override
	public int insertQustnrAnswer(QustnrAnswerTyVO qustnrAnswerTyVO) {
		int cnt = dao.insertQustnrAnswer(qustnrAnswerTyVO);
		return cnt;
	}
	
	@Override
	public int insertQustnrAll(QustnrWrapperVO qustnrWrapperVO) {
		int cnt = 0;
		
		String writer = qustnrWrapperVO.getUserId();	// 작성자
		String subject = qustnrWrapperVO.getQustnrSj();	// 설문제목
		String endDate = qustnrWrapperVO.getQustnrEndDt();	// 설문마감일
		String classCode = qustnrWrapperVO.getClassCode();	// 클래스코드
		List<String> users = qustnrWrapperVO.getUsers(); // 설문 대상자들
		
		List<String> contents =  qustnrWrapperVO.getQustnrCn(); // 설문 내용들
		List<String> qustnrAnswerCnList = qustnrWrapperVO.getQustnrAnswerCn(); // 설문 내용에 대한 답변들
		List<String> answerType = qustnrWrapperVO.getAnswerType(); // 설문 내용에대한 답변 타입(ex : Q001,Q002....)
		
		// 설문 저장
		QustnrVO qustnrVO = new QustnrVO();
		qustnrVO.setUserId(writer);
		qustnrVO.setClassCode(classCode);
		qustnrVO.setQustnrEndDt(endDate);
		qustnrVO.setQustnrSj(subject);
		cnt += dao.insertQustnr(qustnrVO);
		
		Long qustnrNo = qustnrVO.getQustnrNo(); // 설문 번호
		
		// 설문 대상자 저장
		for (String user : users) {
			QustnrTrgterVO qustnrTrgterVO = new QustnrTrgterVO();
			qustnrTrgterVO.setQustnrNo(qustnrNo);
			qustnrTrgterVO.setUserId(user);
			cnt += dao.insertQustnrSelector(qustnrTrgterVO);
		}
		
		
		// 설문 문제 저장
		List<Long> qustnrQuestionsNoList = new ArrayList<>();
		for(long i=1; i<=contents.size();i++) {
			qustnrQuestionsNoList.add(i);
		}
		
		// 설문 내용 여러개 저장
		for(int i=0 ; i<contents.size();i++) {
			QustnrQuestionsVO qustnrQuestionsVO = new QustnrQuestionsVO();
			String qustnrCn = contents.get(i);
			qustnrQuestionsVO.setQustnrNo(qustnrNo);	// 설문 번호
			qustnrQuestionsVO.setQustnrCn(qustnrCn);	// 설문 내용
			qustnrQuestionsVO.setQustnrQuestionsNo(qustnrQuestionsNoList.get(i)); // 설문 문제번호
			cnt += dao.insertQustnrQuestions(qustnrQuestionsVO);
		}
		List<Long> qqno = new ArrayList<Long>();
		
		// Q002 일때만 qustnrAnswerCn 여기서 2개의 값만 뺀다. 
		// 나머지는 5개씩 뺀다.
		for (long i =1; i<=answerType.size();i++) {
			if(answerType.get((int) (i-1)).equals("Q002")) {
				qqno.add(i);
				qqno.add(i);
			}else {
				qqno.add(i);
				qqno.add(i);
				qqno.add(i);
				qqno.add(i);
				qqno.add(i);
			}
		}
		
		// 설문 답변내용 저장
		for (long i=0; i<qustnrAnswerCnList.size();i++) {
			QustnrAnswerTyVO qustnrAnswerTyVO = new QustnrAnswerTyVO();
			qustnrAnswerTyVO.setQustnrNo(qustnrNo);// 설문 번호
			qustnrAnswerTyVO.setQustnrQuestionsNo(qqno.get((int)i));	// 설문 문제번호
			qustnrAnswerTyVO.setQuestionnaireAnswer(qustnrAnswerCnList.get((int)i));
			cnt += dao.insertQustnrAnswer(qustnrAnswerTyVO);
		}
		return cnt;
	}

	@Override
	public QustnrVO selectQustnr(Long qustnrNo) {
		QustnrVO qustnrVO =dao.selectQustnr(qustnrNo);
		if(qustnrVO==null) {
			throw new NullPointerException("그런 설문 없지요");
		}
		return qustnrVO;
	}

	@Override
	public int insertQustnrRspns(QustnrRspnsListVO qustnrRspnsListVO) {
		String[] userIds =  qustnrRspnsListVO.getUserId();
		Long[] qustnrNos= qustnrRspnsListVO.getQustnrNo();
		Long[] qustnrQuestionsNos =qustnrRspnsListVO.getQustnrQuestionsNo();
		Long[] qustnrAnswerNos = qustnrRspnsListVO.getQustnrAnswerNo();
		int cnt = 0;
		for(int i=0;i<userIds.length; i++) {
			QustnrRspnsVO qustnrRspnsVO = new QustnrRspnsVO();
			String userId = userIds[i];
			long qustnrNo =qustnrNos[i];
			long qustnrQuestionsNo = qustnrQuestionsNos[i];
			long qustnrAnswerNo = qustnrAnswerNos[i];
			qustnrRspnsVO.setUserId(userId);
			qustnrRspnsVO.setQustnrNo(qustnrNo);
			qustnrRspnsVO.setQustnrQuestionsNo(qustnrQuestionsNo);
			qustnrRspnsVO.setQustnrAnswerNo(qustnrAnswerNo);
			cnt += dao.insertQustnrRspns(qustnrRspnsVO);
		}
		
		return cnt;
	}

	@Override
	public int isSelectQustnrRspns(String userId, long qustnrNo) {
		int  cnt = dao.isSelectQustnrRspns(userId, qustnrNo);
		return cnt;
	}

	@Override
	public List<QustnrAnswerTyVO> qustnrStatistics(List<QustnrAnswerTyVO> qustnrAnswerTyList) {
		List<QustnrAnswerTyVO> statisticsList = new ArrayList<>();
		// 문제번호가 달라질때마다 문제번호에 대한 답변 갯수 가져오기
		for(QustnrAnswerTyVO answerTyVO :qustnrAnswerTyList) {
			int count = dao.qustnrStatistics(answerTyVO);
			answerTyVO.setCount(count);
			// ex) 1번문제 1번답 몇명이 골랐는지가들어있는 vo 1개
			statisticsList.add(answerTyVO);
		}
		return statisticsList;
	}

	@Override
	public List<QustnrAnswerTyVO> selectQustnrAnswer(long qustnrNo) {
		List<QustnrAnswerTyVO> answerTyVOList = dao.selectQustnrAnswer(qustnrNo);
		return answerTyVOList;
	}

}
