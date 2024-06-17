package kr.or.ddit.snsFollower.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.vo.FollowVO;

@Mapper
public interface SnsFollowerDao {
	/**
	 * @param userId
	 * @return 팔로워 리스트
	 */
	public List<FollowVO> selectFollowerList(Map<String, Object> followerMap);
	public int selectTotalRecordFollowerList(Map<String, Object> followerMap);
	
	/**
	 * @param userId
	 * @return 학생인지 선생인지 검증.
	 */
	public int validateUser(String userId);
}
