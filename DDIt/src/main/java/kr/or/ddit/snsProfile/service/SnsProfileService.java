package kr.or.ddit.snsProfile.service;

import java.io.IOException;

import kr.or.ddit.vo.StudentVO;
import kr.or.ddit.vo.TeacherVO;
import kr.or.ddit.vo.UsersVO;

public interface SnsProfileService {
	
	public UsersVO readUser(String userId);
	
	/**
	 * @return 학생 조회
	 */
	public StudentVO readStudent(String userId);
	
	/**
	 * @param userId
	 * @return 선생 조회
	 */
	public TeacherVO readTeacher(String userId);
	
	/**
	 * @param student
	 * @return 학생 자기소개 수정
	 * @throws IOException 
	 */
	public int updateStudent(StudentVO studentVo) throws IOException;
	
	/**
	 * @param teacher
	 * @return 선생 자기소개 수정
	 */
	public int updateTeacher(TeacherVO teacher) throws IOException;
	
	/**
	 * @param userId
	 * @return 학생인지 선생인지 검증.
	 */
	public int validateUser(String userId);

}
