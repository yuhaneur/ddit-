package kr.or.ddit.teacher.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.TeacherVO;

public interface TeacherService {
	public List<TeacherVO> retrieveTeacherList();
	
	public TeacherVO selectTeacher(@Param("userId") String userId);
}
