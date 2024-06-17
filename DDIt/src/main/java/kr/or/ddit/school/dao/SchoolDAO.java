package kr.or.ddit.school.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.tiles.autotag.core.runtime.annotation.Parameter;

import kr.or.ddit.vo.CalendarVO;
import kr.or.ddit.vo.ClassAllocationVO;
import kr.or.ddit.vo.ClassVO;
import kr.or.ddit.vo.EvaluationVO;
import kr.or.ddit.vo.GrAtchFileVO;
import kr.or.ddit.vo.LectureRoomVO;
import kr.or.ddit.vo.ScheduleVO;
import kr.or.ddit.vo.SjManagerVO;
import kr.or.ddit.vo.SjMapping;
import kr.or.ddit.vo.SjVO;
import kr.or.ddit.vo.StudentVO;

@Mapper
public interface SchoolDAO {
	/**
	 강의실 조회해오기
	 * @return
	 */
	public List<LectureRoomVO> selectLectureRoomList();
	/**
	 클래스 목록조회
	 * @return
	 */
	public List<ClassVO> selectClassList();
	/**
	 클래스 단건조회
	 * @param classCode
	 * @return
	 */
	public ClassVO selectClass(String classCode);
	/**
	 클래스 등록
	 * @param classVO
	 * @return
	 */
	public int insertClass(ClassVO classVO);
	/**
	 클래스 수정
	 * @param classVO
	 * @return
	 */
	public int updateClass(ClassVO classVO);

	/**
	 클래스에 들어올 선생님들 조회
	 * @param sjManagerVO
	 * @return
	 */
	public List<SjVO> selectClassInteacher(SjManagerVO sjManagerVO);
	/**
	 클래스에 들어올 선생님들 저장
	 * @param sjMappingVO
	 * @return
	 */
	public int insertClassInteacher(SjMapping sjMappingVO);
	/**
	 클래스에 교과담당 선냉님들 출력
	 * @param classCode
	 * @return
	 */
	public List<SjMapping> selectSjTeacherList(String classCode);
	/**
	 클래스 교과담당 선생님 수업배분 저장
	 * @param classAllocationVO
	 * @return
	 */
	public int insertClassAllocation(ClassAllocationVO classAllocationVO);
	
	/**
	 클래스 시간표 만들기위한 데이터조회
	 * @param classCode
	 * @return
	 */
	public ClassVO scheduleInfo(String classCode);
	/**
	 시간표 저장 
	 * @param scheduleVO
	 * @return
	 */
	public int insertSchedule(ScheduleVO scheduleVO);
	
	/**
	 시간표 담당 선생님 수정 (클래스코드,교과목 번호 가져와서 담당선생님 이름 싹다바꾸기)
	 * @param scheduleVO
	 * @return
	 */
	public int updateSchedule(ScheduleVO scheduleVO);
	/**
	 * 클래스당 시간표 출력 (클래스코드)
	 * @param classCode
	 * @return
	 */
	public List<ScheduleVO> selectScheduleList(@Param("classCode") String classCode);
	/**
	 * 교육기간 내에 휴일이 아닌 날짜들 가져오기
	 * @param startDate
	 * @param endDate
	 * @return
	 */
	public List<CalendarVO> selectNoHolidayList(@Param("startDate") String startDate,@Param("endDate") String endDate);
	
	/**
	 * 클래스에 배정된 수업목록 보기
	 * @param classCode
	 * @return
	 */
	public List<SjMapping> selectClassInSubjectList(@Param("classCode") String classCode);
	/**
	 * 수업에 있는 파일 목록불러오기
	 * @param fileNo
	 * @return
	 */
	public List<GrAtchFileVO> selectFileList(@Param("fileNo") long fileNo);
	/**
	 * 파일한건 조회하기
	 * @param fileNo
	 * @param fileTurnNo
	 * @return
	 */
	public GrAtchFileVO selectFile(@Param("fileNo") long fileNo, @Param("fileTurnNo") long fileTurnNo);
	
	/**
	 * 클래스에 속해있지 않은 학생들 조회
	 * @return
	 */
	public List<StudentVO> selectClassNotStudentList();
	
	/**
	 * 클래스에 속해있는 학생들 조회
	 * @param classCode
	 * @return
	 */
	public List<StudentVO> selectStudentList(@Param("classCode") String classCode);
	/**
	 * 학생 평가보기
	 * @param userId
	 * @return
	 */
	public EvaluationVO selectEvaluation(@Param("userId") String userId);
	/**
	 * 학생 평가 업데이트
	 * @param evaluationVO
	 * @return
	 */
	public int updateEvaluation(EvaluationVO evaluationVO);
	/**
	 * 학생 클래스 배정
	 * @param studentVO
	 * @return
	 */
	public int updateStudentClass(StudentVO studentVO);
	/**
	 * 학생이 클래스에 등록됬을때 학생평가지가 등록됨
	 * @param evaluationVO
	 * @return
	 */
	public int insertEvaluation(EvaluationVO evaluationVO);
	
	/**
	 * 클래스 코드 뽑기
	 * @param userId
	 * @return
	 */
	public StudentVO selectClassCode(@Param("userId") String userId);
	/**
	 * 선생님이 속한 클래스리스트 
	 * @param userId
	 * @return
	 */
	public List<ClassVO> selectTeacherClass(@Param("userId") String userId);
}
