package kr.or.ddit.sns.service;

import java.io.IOException;
import java.util.List;

import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.vo.AtchFileVO;
import kr.or.ddit.vo.FollowVO;
import kr.or.ddit.vo.SnsAnswerVO;
import kr.or.ddit.vo.SnsFeedVO;

public interface SnsService{
	
	/**
	 * @return Feed 리스트 전체출력
	 */
	public List<SnsFeedVO> readFeedList();
	
	/**
	 * @return Feed 리스트 전체출력
	 */
	public List<SnsFeedVO> readMyFeedList(String userId);
	
	/**
	 * @param snsFeedNo
	 * @return 피드 상세보기
	 */
	public SnsFeedVO readFeed(int snsFeedNo);
	
	/**
	 * @return Feed 이미지들 전체출력
	 */
	public List<AtchFileVO> readImageList();
	
	/**
	 * @param snsFeedNo
	 * @return 선택한 feed 댓글 전체출력
	 */
	public List<SnsAnswerVO> readAnswerList(int snsFeedNo);
	
	/**
	 * @param feedVo
	 * @return 피드 작성 
	 * @throws IOException 
	 */
	public int createFeed(SnsFeedVO feedVo) throws IOException;
	
	/**
	 * @param feedVo
	 * @return 피드 수정
	 */
	public int updateFeed(SnsFeedVO feedVo);
	
	/**
	 * @param snsFeedNo
	 * @param userId
	 * @return 피드 삭제
	 */
	public int deleteFeed(Long snsFeedNo);
	
	/**
	 * @param answerVo
	 * @return 댓글 작성
	 */
	public int createAnswer(SnsAnswerVO answerVo);
	
	/**
	 * @param answerVo
	 * @return 댓글 수정
	 */
	public int updateAnswer(SnsAnswerVO answerVo);
	
	/**
	 * @param snsFeedNo
	 * @return 댓글 삭제
	 */
	public int deleteAnswer(SnsAnswerVO answerVo);
	
	
	/**
	 * @param userId
	 * @return 추천팔로우 리스트
	 */
	public List<FollowVO> readUnFollowList(String userId);
	
	/**
	 * @param userId
	 * @return 팔로우 추가
	 */
	public int createFollow(FollowVO followVo);
	
	/**
	 * @param userId
	 * @return 팔로잉 카운트 출력
	 */
	public int readFollwingCount(String userId);
	
	/**
	 * @param userId
	 * @return 팔로워 카운트 출력
	 */
	public int readFollwerCount(String userId);
	
	/**
	 * @param userId
	 * @return 팔로잉 리스트
	 */
	public List<FollowVO> readFollowingListList(String userId);
	
	/**
	 * @param userId
	 * @return 팔로워 리스트
	 */
	public List<FollowVO> readFollowerList(String userId);
}
