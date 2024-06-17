package kr.or.ddit.sns.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ddit.sns.dao.SnsLikeDAO;
import kr.or.ddit.vo.SnsLikeVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SnsLikeServiceImpl implements SnsLikeService{
	private final SnsLikeDAO dao;
	
	@Override
	public int insertFeedLike(SnsLikeVO feedLike) {
		int chk = dao.insertFeedLike(feedLike);
		return chk;
	}

	@Override
	public List<SnsLikeVO> selectFeedLikeList() {
		List<SnsLikeVO> feedLikeList = dao.selectFeedLikeList();
		return feedLikeList;
	}

	@Override
	public int insertFeedLikeCount(Long snsFeedNo) {
		int chk = dao.insertFeedLikeCount(snsFeedNo);
		return chk;
	}
	
	public int insertFeedLikeMinus(Long snsFeedNo) {
		int chk = dao.insertFeedLikeMinus(snsFeedNo);
		return chk;
	}
	
}
