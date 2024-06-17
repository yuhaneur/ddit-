package kr.or.ddit.school.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.AttenanceVO;
import kr.or.ddit.vo.GoingOutVO;
import kr.or.ddit.vo.StudentVO;

public interface AttenceService {
	// 학생 출석하기
	public int attenanceStudent(AttenanceVO attenanceVO);
	// 출석중복 확인
	public AttenanceVO selectAttenance(String userId);
	// 학생 퇴실하기
	public int updateCheckOut(AttenanceVO attenanceVO);
	// 학생 외출하기
	public int insertGoingOut(GoingOutVO goingOutVO);
	// 외출 중복확인
	public List<GoingOutVO> checkGoingOut(String attenanceCode);
	// 외출 복귀하기
	public int updateGoingOut(GoingOutVO goingOutVO);
	// 클래스 안에 학생정보 화면 정보 리스트
	public StudentVO selectStudentInfoList(StudentVO studentVO);
	// 출결정보 리스트
	public List<AttenanceVO> selectAttenanceList(String userId);
	/**
	 * 출석,지각,조퇴,결석 정보 가져오기
	 * @param studentVO
	 * @return
	 */
	public Map<String, Object> attenanceInfo(StudentVO studentVO);
}
