package kr.or.ddit.Users.service;

import kr.or.ddit.vo.StudentVO;


public interface StudentService {

	public int insertStudent(StudentVO student);
	
	public StudentVO selectStudentId(String email);
	
	public StudentVO selectStudentPw(StudentVO vo); 
	
}
