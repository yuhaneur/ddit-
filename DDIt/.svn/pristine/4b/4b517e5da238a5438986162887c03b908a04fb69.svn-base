package kr.or.ddit.sns.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.AtchFileVO;
import kr.or.ddit.vo.SnsFeedVO;

@Mapper
public interface SnsFileDAO {
	/**
	 * 		첨부파일 저장을 위한 메소드, 파라미터 맵 형성하기 위해 @Param 사용.
	 */
	public int insertAtchFileList(@Param("feed") SnsFeedVO feed);
	
	/**
	 * 	첨부파일 조회
	 * @param atchFileNo 
	 * @return
	 */
	public List<AtchFileVO> selectAtch();
	
	/**
	 *	ATCH_DOWNCOUNT 증가를 위한 메소드 
	 * @param atchFileNo 
	 * @return
	 */
	public int incrementDowncount(int atchFileNo);
	
	/**
	 *	첨부파일 삭제 메소드 
	 * @param atchFileNo
	 * @return
	 */
	public int deleteAtch(@Param("atchFileNo") int atchFileNo);
	
	/**
	 * 	특정 피드의 첨부파일 전체 삭제 ( 현재 이 메소드의 필요유무는 모름 )
	 * @param atchFileNo
	 * @return
	 */
	public int deleteAtches(@Param("snsFeedNo") int atchFileNo);
}
