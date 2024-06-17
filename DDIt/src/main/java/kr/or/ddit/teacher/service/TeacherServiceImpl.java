package kr.or.ddit.teacher.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.teacher.dao.TeacherDAO;
import kr.or.ddit.vo.TeacherVO;

@Service
public class TeacherServiceImpl implements TeacherService{
	
	@Autowired
	private TeacherDAO dao;
	@Override
	public List<TeacherVO> retrieveTeacherList() {
		return dao.selectTeacherList();
	}
	@Override
	public TeacherVO selectTeacher(String userId) {
		
		return dao.selectTeacher(userId);
	}
	
}
