package kr.or.ddit.vo;

import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UsersVOWrapper extends User {

	private final UsersVO realUser;

	public UsersVOWrapper(UsersVO realUser, List<GrantedAuthority> authorities) {
		super(realUser.getUserId(), realUser.getUserPw(), authorities);
		this.realUser = realUser;
	}
	
	public UsersVO getRealUser() {
		return realUser;
	}
}
