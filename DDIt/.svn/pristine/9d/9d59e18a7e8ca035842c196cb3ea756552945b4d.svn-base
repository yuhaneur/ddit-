package kr.or.ddit.school.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.AssignmentPresentnHistVO;
import kr.or.ddit.vo.AssignmentVO;

@Mapper
public interface AssignmentDAO {
	/**
	 * 과제등록
	 * @param assignmentVO
	 * @return
	 */
	public int insertAssignment(AssignmentVO assignmentVO);
	/**
	 * 과제 파일등록
	 * @param assignmentVO
	 * @return
	 */
	public int insertAttatchList(@Param("assignmentVO") AssignmentVO assignmentVO);
	/**
	 * 과제리스트 출력
	 * @return
	 */
	public List<AssignmentVO> selectAssignmentList(@Param("classCode") String classCode);
	
	/**
	 * 과제 한건 조회
	 * @param userId
	 * @param assignmentCode
	 * @return
	 */
	public AssignmentVO selectAssignment(@Param("assignmentCode") String assignmentCode);
	/**
	 * 과제 제출등록
	 * @param assignmentPresentnHistVO
	 * @return
	 */
	public int insertAssignmentPresentnHist(AssignmentPresentnHistVO assignmentPresentnHistVO);
	/**
	 * 과제제출 파일등록
	 * @param assignmentVO
	 * @return
	 */
	public int insertAttatchList2(@Param("assignmentPresentnHistVO") AssignmentPresentnHistVO assignmentPresentnHistVO);
	/**
	 * 과제 하나에 제출한 사람들 리스트
	 * @param assignmentCode
	 * @return
	 */
	public List<AssignmentPresentnHistVO> selectAssignmentPresentnHistList(@Param("assignmentCode") String assignmentCode);
}
