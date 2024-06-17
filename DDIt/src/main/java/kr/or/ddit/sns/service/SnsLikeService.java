package kr.or.ddit.sns.service;

import java.util.List;

import kr.or.ddit.vo.SnsLikeVO;

public interface SnsLikeService {
	/**
	 * @param feedLike
	 * @return 피드 좋아요 등록 / 취소
	 */
	public int insertFeedLike(SnsLikeVO feedLike);
	
	/**
	 * @return 피드 좋아요 조회
	 */
	public List<SnsLikeVO> selectFeedLikeList();
	
	/**
	 * @param snsFeedNo
	 * @return 피드 좋아요 카운트증가
	 */
	public int insertFeedLikeCount(Long snsFeedNo);
	
	/**
	 * @param snsFeedNo
	 * @return 피드 좋아요 마이너스
	 */
	public int insertFeedLikeMinus(Long snsFeedNo);
}
