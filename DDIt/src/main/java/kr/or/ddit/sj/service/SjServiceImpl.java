package kr.or.ddit.sj.service;

import java.io.File;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import kr.or.ddit.sj.dao.SjDAO;
import kr.or.ddit.vo.AtchFileVO;
import kr.or.ddit.vo.CurriculumVO;
import kr.or.ddit.vo.GrAtchFileVO;
import kr.or.ddit.vo.SjManagerVO;
import kr.or.ddit.vo.SjVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class SjServiceImpl implements SjService{
	
	@Autowired
	private SjDAO dao; 
	
	@Value("#{appInfo.atchSavePath}")
	private File saveFolder;
	
	@Override
	public List<SjVO> selectSjList(String edcCode) {
		return dao.selectSjList(edcCode);
	}

	@Override
	public SjVO selectSj(SjVO sjvo) {
		return dao.selectSj(sjvo);
	}

	@Override
	public int createSj(SjVO sjvo) {
		return dao.insertSj(sjvo);
	}

	@Override
	public List<SjManagerVO> selectSjManagerList(SjVO sjvo) {
		return dao.selectSjManagerList(sjvo);
	}

	@Override
	public int createSjManager(SjVO sjvo) {
		List<SjManagerVO> sjManagerList =  sjvo.getSjManagerList();
		int cnt = 0;
		SjManagerVO sjManagerVo = new SjManagerVO();
		for (SjManagerVO sjManager : sjManagerList) {
			sjManagerVo= dao.selectSjManager(sjManager);
			if(sjManagerVo==null) {
				cnt += dao.insertSjManager(sjManager);
			}else {
				log.info(sjManagerVo.getSjDeleteAt());
				if(sjManagerVo.getSjDeleteAt().equals("Y")) {
					cnt += dao.updateSjManager(sjManager);
				}
				continue;
			}
		}
		return cnt;
	}

	@Override
	public int deleteSjManager(SjManagerVO sjManager) {
		
		return dao.deleteSjManager(sjManager);
	}

//	@Override
//	public int updateSjManager(SjManagerVO sjManager) {
//		// TODO Auto-generated method stub
//		return 0;
//	}

	@Override
	public List<CurriculumVO> selectCurriculumList(SjVO sjvo) {
		return dao.selectCurriculumList(sjvo);
	}

	// 파일저장
	private int saveAttatchList(CurriculumVO curriculumVO) {
		List<GrAtchFileVO> atchList = curriculumVO.getAtchList();
		int cnt = 0;
		if(atchList!=null && !atchList.isEmpty()) {
			// DB에 저장해야됨
			cnt += dao.insertAttatchList(curriculumVO);
			// 로컬에 저장함
			for (GrAtchFileVO atchFileVO : atchList) {
				atchFileVO.saveToFolder(saveFolder);
			}
		}
		return cnt;
	}
	// 수업주제 저장
	@Override
	public int insertCurriculum(CurriculumVO curriculumVO) {
		// 파일을 먼저 저장하고 
		int count = saveAttatchList(curriculumVO);
		int cnt = 0 ;
		// 파일 저장할게 있으면 MAX값 
		if(count>0){
			curriculumVO.setAtchFileNo(1l);
			cnt = dao.insertCurriculum(curriculumVO);
		}else {
			// 파일 저장할게없으면 vo안에있는 파일넘버를 null
			cnt = dao.insertCurriculum(curriculumVO);
		}
		// 수업주제 저장성공하면
		if(cnt>0) {
			// 파일 저장함과
		}
		return cnt;
	}

	@Override
	public int deleteCurriculum(CurriculumVO curriculumVO) {
		int cnt = dao.deleteCurriculum(curriculumVO);
		return cnt;
	}

	@Override
	public CurriculumVO selectCurriculum(CurriculumVO curriculumVO) {
		CurriculumVO currivo = new CurriculumVO();
		currivo = dao.selectCurriculum(curriculumVO);
		return currivo;
	}

	@Override
	public int updateCurriculum(CurriculumVO curriculumVO) {
		int cnt = dao.updateCurriculum(curriculumVO);
		return cnt;
	}
	

}
