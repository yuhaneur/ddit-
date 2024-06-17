package kr.or.ddit.snsFollower.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.snsFollower.dao.SnsFollowerDao;
import kr.or.ddit.vo.FollowVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SnsFollowerServiceImpl implements SnsFollowerService {
	private final SnsFollowerDao FollowerDao;
	
	@Override
	public List<FollowVO> readFollowerList(Map<String, Object> followerMap) {
		int totalRecord = FollowerDao.selectTotalRecordFollowerList(followerMap);
		((PaginationInfo)followerMap.get("paging")).setTotalRecord(totalRecord);
		List<FollowVO> follwerList = FollowerDao.selectFollowerList(followerMap);
		return follwerList;
	}
}
