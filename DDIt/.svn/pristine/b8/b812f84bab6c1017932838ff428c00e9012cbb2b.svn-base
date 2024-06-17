package kr.or.ddit.teacher.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.TeacherVO;

@Mapper
public interface TeacherDAO {
	public List<TeacherVO> selectTeacherList();
	
	public TeacherVO selectTeacher(@Param("userId") String userId);
}
