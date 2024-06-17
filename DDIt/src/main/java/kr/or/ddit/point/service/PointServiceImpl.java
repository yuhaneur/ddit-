package kr.or.ddit.point.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.point.dao.PointHistoryDAO;
import kr.or.ddit.vo.PointHistoryVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PointServiceImpl implements PointService{

	private final PointHistoryDAO pointdao;

	@Override
	public int readPoint(String userId) {
		return pointdao.selectPoint(userId);
	}

	@Override
	public int creatPointHistory(PointHistoryVO pointHistory) {
		int cnt = pointdao.insertPointHistory(pointHistory);
		return cnt;
	}

	@Override
	public List<PointHistoryVO> readPointHistoryList(String userId, String clNm) {
		List<PointHistoryVO> pointList = pointdao.selectPointHistoryList(userId, clNm);
		return pointList;
	}
	
	


}
