package kr.or.ddit.snsProfile.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.AtchFileVO;
import kr.or.ddit.vo.SnsFeedVO;
import kr.or.ddit.vo.StudentVO;

@Mapper
public interface SnsStudentFileDAO {
	/**
	 * 		첨부파일 저장을 위한 메소드, 파라미터 맵 형성하기 위해 @Param 사용.
	 */
	public int insertAtchFileList(@Param("img") StudentVO studentVo);
	
	/**
	 * 	첨부파일 조회
	 * @param atchFileNo 
	 * @return
	 */
	public List<AtchFileVO> selectAtch();
	
}
