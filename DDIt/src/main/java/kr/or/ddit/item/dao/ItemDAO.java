package kr.or.ddit.item.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.CmmnCodeVO;
import kr.or.ddit.vo.ItemVO;

@Mapper
public interface ItemDAO {
	/**
	 * 아이템등록
	 * @param itemCode
	 * @return 등록된 레코드 수
	 */
	public int insertItem(ItemVO itemCode);
	
	/**
	 * 아이템 목록 조회
	 * @param userId, paging 
	 * @return 존재하지 않으면, list.size()==0
	 */
	public List<ItemVO> selectItemList(@Param("userId") String userId, @Param("ctgry") long ctgry);

	
	/**
	 * 아이템 카테고리 공통코드 목록 조회
	 * @return
	 */
	public List<CmmnCodeVO> selectItemCmmnList();
	
	
	public int SelectTotalRecord();
	
	/**
	 * 아이템 상세 조회
	 * @param itemCode, userId
	 * @return 존재하지 않으면 null 반환
	 */
	public ItemVO selectItem(@Param("itemCode") String itemCode, @Param("userId") String userId);
	
	
	/**
	 * 아이템 정보 수정
	 * @param item
	 * @return 수정된 레코드 수
	 */
	public int updateItem(ItemVO item);
	
	/**
	 * 아이템 정보 삭제
	 * @param itemCode
	 * @return 삭제된 레코드 수
	 */
	public int deleteItem(@Param("itemCode") String itemCode);

	
	
}
