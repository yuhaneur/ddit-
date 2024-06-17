package kr.or.ddit.sj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.CurriculumVO;
import kr.or.ddit.vo.SjManagerVO;
import kr.or.ddit.vo.SjVO;

@Mapper
public interface SjDAO {
	public List<SjVO> selectSjList(@Param("edcCode") String edcCode);
	
	public SjVO selectSj(SjVO sjvo);
	
	public int insertSj(SjVO sjvo);
	
	// 교과목 담당선생님 리스트
	public List<SjManagerVO> selectSjManagerList(SjVO sjvo);
	// 교과목 담당선생님 등록
	public int insertSjManager(SjManagerVO sjManager);
	// 교과목 담당선생님 삭제(삭제여부 y)
	public int deleteSjManager(SjManagerVO sjManager);
	// 교과목 담당선생님 삭제여부 다시 n
	public int updateSjManager(SjManagerVO sjManager);
	// 교과목 담당선생님 한명 조회
	public SjManagerVO selectSjManager(SjManagerVO sjManagerVO);
	// 교과목 상세정보 리스트
	public List<CurriculumVO> selectCurriculumList(SjVO sjvo);
	// 교과목 상세수업 한개 보기
	public CurriculumVO selectCurriculum(CurriculumVO curriculumVO);
	// 교과목 상세수업 수정
	public int updateCurriculum(CurriculumVO curriculumVO);
	// 교과목 상세수업 저장
	public int insertCurriculum(CurriculumVO curriculumVO);
	// 교과목 상세수업 삭제
	public int deleteCurriculum(CurriculumVO curriculumVO);
	
	// 파일 저장
	public int insertAttatchList(@Param("curriculumVO") CurriculumVO curriculumVO);
}