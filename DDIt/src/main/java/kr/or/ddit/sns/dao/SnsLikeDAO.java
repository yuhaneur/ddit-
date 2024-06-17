package kr.or.ddit.sns.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.SnsLikeVO;

@Mapper
public interface SnsLikeDAO {
	
	public int insertFeedLike(SnsLikeVO feedLike);
	
	public List<SnsLikeVO> selectFeedLikeList();
	
	public int insertFeedLikeCount(Long snsFeedNo);
	
	public int insertFeedLikeMinus(Long snsFeedNo);
}
