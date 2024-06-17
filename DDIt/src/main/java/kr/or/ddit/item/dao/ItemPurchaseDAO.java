package kr.or.ddit.item.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.ItemPurchaseVO;

@Mapper
public interface ItemPurchaseDAO {
	/**
	 * 아이템 구매
	 * @param itemPurchase
	 * @return 등록된 레코드 수
	 */
	public int insertItemPurchase(ItemPurchaseVO itemPurchase);
	
	
	public int SelectTotalRecord();
	
	/**
	 * 보유 아이템 조회(보관함)
	 * @param userId
	 * @return 존재하지 않으면 null 반환
	 */
	public List<ItemPurchaseVO> selectItemStorage(@Param("userId") String userId, @Param("hide") String hide, @Param("ctgry") Long ctgry);
	
	
	/**
	 * 보유 아이템 상세조회
	 * @return userId, itemCode
	 */
	public ItemPurchaseVO selectItemStorageOne(@Param("userId") String userId, @Param("itemCode") String itemCode);
	
	/**
	 * 보유 아이템 즐겨찾기 등록,수정
	 * @param itemPurchase
	 * @return 수정된 레코드 수
	 */
	public int updateItemPurchaseBkmk(ItemPurchaseVO itemPurchase);
	
	/**
	 * 보유 아이템 숨김 등록,수정
	 * @param itemPurchaseCode
	 * @return 수정된 레코드 수
	 */
	public int updateItemPurchaseHide(ItemPurchaseVO itemPurchase);
}
