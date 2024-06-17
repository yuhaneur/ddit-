package kr.or.ddit.snsProfile.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.StudentVO;
import kr.or.ddit.vo.TeacherVO;
import kr.or.ddit.vo.UsersVO;

@Mapper
public interface SnsProfileDAO {
	
	/**
	 * @param userId
	 * @return 요약 프로필 가져오기
	 */
	public UsersVO selectUser(String userId);
	
	/**
	 * @param userId
	 * @return 학생 마이 프로필 정보 가져오기
	 */
	public StudentVO selectStudent(String userId);
	
	/**
	 * @param userId
	 * @return 선생 마이 프로필 정보 가져오기
	 */
	public TeacherVO selectTeacher(String userId);
	
	/**
	 * @return 선생 프로필 수정
	 */
	public int updateTeacher(TeacherVO teacher);
	
	/**
	 * @return 학생 프로필 수정
	 */
	public int updateStudent(StudentVO student);
	
	/**
	 * @param userId
	 * @return 학생인지 선생인지 검증.
	 */
	public int validateUser(String userId);
	
	// 학생 파일 저장
	public int insertAttatchStudent(@Param("studentVo") StudentVO studentVo);
	
	// 선생 파일 저장
	public int insertAttatchTeacher(@Param("teacherVo") TeacherVO teacherVo);
}
