package kr.or.ddit.Users.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.StudentVO;

@Mapper
public interface StudentDAO {

	public int insertStudent(StudentVO student);
	
	public StudentVO selectStudentId(String email);
	
	public StudentVO selectStudentPw(StudentVO vo); 
	
}
