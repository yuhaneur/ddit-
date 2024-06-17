package kr.or.ddit.Users.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.Users.RandomPasswordGenerator;
import kr.or.ddit.Users.dao.StudentDAO;
import kr.or.ddit.Users.dao.UsersDAO;
import kr.or.ddit.email.service.EmailService;
//import kr.or.ddit.email.service.EmailService;
import kr.or.ddit.vo.StudentVO;
import kr.or.ddit.vo.UsersVO;


@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentDAO dao;
	
	@Autowired
	UsersDAO usersDao;
	
	@Autowired
	EmailService emailService;
	
	@Autowired
	RandomPasswordGenerator rpg;
	
	@Override
	public int insertStudent(StudentVO student) {
		
		return dao.insertStudent(student);
	}

	@Override
	public StudentVO selectStudentId(String email) {
		return dao.selectStudentId(email);
	}

	@Override
	public StudentVO selectStudentPw(StudentVO vo) {
		StudentVO serched = dao.selectStudentPw(vo);
		if(serched!=null) {
			String password = rpg.generateRandomPassword(8);
			String id = serched.getUserId();
			UsersVO user = new UsersVO();
			user.setUserId(id);
			user.setUserPw(password);
			int result = usersDao.updateUsersPw(user);
			if(result>0) {
				String email = serched.getStudentMail();
				String title = "DDIT 비밀번호 변경 안내 메일입니다.";
				String content = "안녕하세요 "+serched.getStudentName() +"님,\r\n"
						+ "\r\n"
						+ serched.getUserId()+"계정의 비밀번호가 "+password+" 로 성공적으로 변경되었습니다."
						+ "\r\n"	
								+ " 새로운 비밀번호를 사용하여 로그인하실 수 있습니다.\r\n"
						+ "\r\n"
						+ "만약 본인이 비밀번호 변경을 요청하지 않으셨다면, 즉시 저희 고객 지원팀에 연락해 주시기 바랍니다.\r\n"
						+ "\r\n"
						+ "감사합니다.\r\n"
						+ "\r\n"
						+ "DDIT 드림\r\n"
						+ "";
				
				emailService.sendSimpleEmail(email, title, content);
			}
		}
		return serched;
	}

	
}
