package kr.or.ddit.edcCrse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.edcCrse.dao.EdcCrseDAO;
import kr.or.ddit.vo.EdcCrseVO;

@Service
public class EdcCrseServiceImpl implements EdcCrseService{

	@Autowired
	private EdcCrseDAO dao;

	@Override
	public List<EdcCrseVO> retrieveEdcCrseList() {
		return dao.selectEdcCrseList();
	}

	@Override
	public int createEdcCrse(EdcCrseVO edcCrseVO) {
		int cnt = dao.insertEdcCrse(edcCrseVO);
		if(cnt>0)return cnt;
		return cnt;
	}

	@Override
	public int modifyEdcCrse(EdcCrseVO edcCrseVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public EdcCrseVO selectEdcCrse(String edcCord) {
		EdcCrseVO edcCrseVO = dao.selectEdcCrse(edcCord);
		return edcCrseVO;
	}

	@Override
	public String endDate(String startDate,long edcDayCo) {
		return dao.endDate(startDate,edcDayCo);
	}

	@Override
	public int countDate(String startDate, String endDate) {
		
		return dao.countDate(startDate, endDate);
	}

}
