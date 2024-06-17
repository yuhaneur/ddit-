package kr.or.ddit.snsProfile.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.annotation.PostConstruct;

import org.apache.commons.lang3.function.Failable;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import kr.or.ddit.snsProfile.dao.SnsProfileDAO;
import kr.or.ddit.snsProfile.dao.SnsStudentFileDAO;
import kr.or.ddit.vo.AtchFileVO;
import kr.or.ddit.vo.GrAtchFileVO;
import kr.or.ddit.vo.SnsFeedVO;
import kr.or.ddit.vo.StudentVO;
import kr.or.ddit.vo.TeacherVO;
import kr.or.ddit.vo.UsersVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SnsProfileServiceImpl implements SnsProfileService {
	private final SnsProfileDAO snsProfileDao;
	
	@Value("#{appInfo.atchSavePath}")
	private File saveFolder; // AppInfo 설정 및 properties 파읿 빈 등록(root-context.xml)
	
	@PostConstruct
	public void init() throws IOException {
		if(!saveFolder.exists()) saveFolder.mkdirs();
	}

	/**
	 * 첨부파일 메타데이터와 2진 데이터 분리 저장
	 * @param board
	 * @return 
	 * @throws IOException 
	 */
	private int saveAttatchList(StudentVO studentVo){
			List<AtchFileVO> atchList = studentVo.getAtchList();
			int cnt = 0;
			if(atchList!=null && !atchList.isEmpty()) {
				// DB에 저장해야됨
				cnt += snsProfileDao.insertAttatchStudent(studentVo);
				// 로컬에 저장함
				for (AtchFileVO atchFileVO : atchList) {
					atchFileVO.saveToFolder(saveFolder);
				}
			}
		return cnt;
	}
	
	private int saveAttatchList2(TeacherVO teacherVo){
		List<AtchFileVO> atchList = teacherVo.getAtchList();
		int cnt = 0;
		if(atchList!=null && !atchList.isEmpty()) {
			// DB에 저장해야됨
			cnt += snsProfileDao.insertAttatchTeacher(teacherVo);
			// 로컬에 저장함
			for (AtchFileVO atchFileVO : atchList) {
				atchFileVO.saveToFolder(saveFolder);
			}
		}
		return cnt;
	}
	
	@Override
	public UsersVO readUser(String userId) {
		return null;
	}
	
	@Override
	public StudentVO readStudent(String userId) {
		StudentVO student = snsProfileDao.selectStudent(userId);
		return student;
	}
	
	@Override
	public TeacherVO readTeacher(String userId) {
		TeacherVO teacher = snsProfileDao.selectTeacher(userId);
		return teacher;
	}
	
	@Override
	public int updateStudent(StudentVO studentVo) throws IOException {
		int chk = saveAttatchList(studentVo);
		if(chk > 0) {
			studentVo.setAtchFileNo(1);
			snsProfileDao.updateStudent(studentVo);
			return chk;
		}else {
			// 인셉션 처리 들어갈 자리.
			snsProfileDao.updateStudent(studentVo);
			return chk;
		}
	}

	@Override
	public int updateTeacher(TeacherVO teacherVo) {
		int chk = saveAttatchList2(teacherVo);
		chk = snsProfileDao.updateTeacher(teacherVo);
		if(chk > 0) {
			teacherVo.setAtchFileNo(1);
			snsProfileDao.updateTeacher(teacherVo);
			return chk;
		}else {
			// 인셉션 처리 들어갈 자리.
			snsProfileDao.updateTeacher(teacherVo);
			return chk;
		}
	}

	@Override
	public int validateUser(String userId) {
		int chk = 0;
		chk = snsProfileDao.validateUser(userId);
		return chk;
	}
	
}
