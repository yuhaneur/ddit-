package kr.or.ddit.vo;

import java.io.Serializable;
import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "userId")
public class UsersVO implements Serializable{

	@NotBlank 
	@Size(max=30) 
	private String userId;
	
	@NotBlank 
	@Size(max=30) 
	private String userPw;
	
	@Size(max=1) 
	private String userUseAt;
	
	private List<AuthorityVO> authorityList;
	
	// 프로필 조회 시 개인 일부정보 가져오기 위함.
	private StudentVO student;
	private TeacherVO teacher;
	
	// 자기소개 데이터 받기위한 가상 컬램 매핑?
	private String teacherIntro;
	private String studentIntro;
	
	
	
}
