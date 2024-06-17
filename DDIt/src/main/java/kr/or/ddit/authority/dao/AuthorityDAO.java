package kr.or.ddit.authority.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.AuthorityVO;

@Mapper
public interface AuthorityDAO {

	public int insertAuthority(AuthorityVO authority);
	
}
