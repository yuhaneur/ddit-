package kr.or.ddit.sns.dao;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.vo.FollowVO;
import kr.or.ddit.vo.SnsAnswerVO;
import kr.or.ddit.vo.SnsFeedVO;

@Mapper
public interface SnsDAO {
	/**
	 * @return 전체 피드 조회
	 */
	public List<SnsFeedVO> selectFeedList();
	// public int selectTotalRecordProject(@Param("paging") PaginationInfo paging);
	
	/**
	 * @return 전체 피드 조회
	 */
	public List<SnsFeedVO> selectMyFeedList(String userId);
	
	/**
	 * @return 해당 피드 전체댓글 조회
	 */
	public List<SnsAnswerVO> selectAnswerList(int snsFeedNo);
	
	/**
	 * @param snsFeedNo (int)
	 * @return 선택한 피드 하나를 조회
	 */
	public SnsFeedVO selectFeed(int snsFeedNo);
	
	/**
	 * @param feedVo
	 * @return Feed 작성
	 */
	public int insertFeed(SnsFeedVO feedVo) throws IOException;
	
	/**
	 * @param feedVo
	 * @return Feed 수정
	 */
	public int updateFeed(SnsFeedVO feedVo);
	
	/**
	 * @param feedVo
	 * @return HashTag 수정
	 */
	public int updateHashTag(SnsFeedVO feedVo);
	
	
	/**
	 * @param snsFeedNo (int)
	 * @return Feed 삭제
	 */
	public int deleteFeed(Long snsFeedNo);
	
	/**
	 * @param snsFeedNo
	 * @return HashTag 삭제 ( 피드 삭제시 같이 활성화 )
	 */
	public int deleteHashTag(Long snsFeedNo);
	
	
	/**
	 * @param answerVo
	 * @return 해당 피드에 댓글입력
	 */
	public int insertAnswer(SnsAnswerVO answerVo);
	
	
	/**
	 * @param answerVo
	 * @return 해당 댓글의 대댓글 입력
	 */
	public SnsAnswerVO insertReply(SnsAnswerVO answerVo);
	
	/**
	 * @param answerVo
	 * @return 해당 피드의 댓글업데이트 (대댓글 포함)
	 */
	public int updateAnswer(SnsAnswerVO answerVo);
	
	
	/**
	 * @param answerNo
	 * @return 해당 피드의 댓글 삭제 (대댓글 포함)
	 */
	public int deleteAnswer(SnsAnswerVO answerVo);
	
	
	/**
	 * @param followVo 
	 * @return 추천 팔로우 리스트
	 */
	public List<FollowVO> selectUnFollowList(String userId);
	
	/**
	 * @param userId
	 * @return 팔로우 추가
	 */
	public int insertFollow(FollowVO followVo);
	
	/**
	 * @param userId
	 * @return 로그인한 유저 팔로잉 수 출력
	 */
	public int selectFollowingCount(String userId);
	
	/**
	 * @param userId
	 * @return 로그인한 유저 팔로워 수 출력
	 */
	public int selectFollowerCount(String userId);
	
	/**
	 * @param userId
	 * @return 팔로잉 리스트
	 */
	public List<FollowVO> selectFollowingList(String userId);
	
	/**
	 * @param userId
	 * @return 팔로워 리스트
	 */
	public List<FollowVO> selectFollowerList(String userId);
	
}
