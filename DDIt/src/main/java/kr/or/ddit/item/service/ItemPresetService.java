package kr.or.ddit.item.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.ItemPresetDetailVO;
import kr.or.ddit.vo.ItemPresetVO;
import kr.or.ddit.vo.ItemPurchaseVO;

/**
 * @author sooji
 * 보유 아이템, 프리셋
 */
public interface ItemPresetService {
	
	/**
	 * 보유 아이템 조회(보관함)
	 * @param userId
	 * @return
	 */
	public List<ItemPurchaseVO> readItemStorage(@Param("userId") String userId, @Param("hide") String hide, @Param("ctgry") Long ctgry);
	
	
	/**
	 * 보유 아이템 상세 조회
	 * @param userId, itemCode
	 * @return
	 */
	public ItemPurchaseVO readItemStorageOne(@Param("userId") String userId, @Param("itemCode") String itemCode);
	
	
	/**
	 * 프리셋 디테일 아이템 등록
	 * @param userId, itemCode, detailNo
	 * @return
	 */
	public int updateItemPresetDetail(@Param("userId") String userId, @Param("itemCode") String itemCode, @Param("detailNo") String detailNo);
	
	
	/**
	 * 프리셋 디테일 아이템 램덤등록
	 * @param userId,preset
	 * @return 수정된 레코드 수
	 */
	public int updateItemPresetDetailRandom(@Param("userId") String userId, ItemPresetDetailVO preset);
	
	
	/**
	 * 프리셋 디테일 아이템 삭제
	 * @return presetCode, itemCode
	 */
	public int deleteItemPresetDetailOne(@Param("presetCode") String presetCode, @Param("itemCode") String itemCode);
	
	/**
	 * 프리셋 디테일 아이템 전체삭제
	 * @return presetCode, itemCode
	 */
	public int deleteItemPresetDetail(@Param("presetCode") String presetCode);
	
	/**
	 * 보유 아이템 즐겨찾기 등록삭제
	 * @param itemPurchase
	 * @return
	 */
	public int updateItemPurchaseBkmk(ItemPurchaseVO itemPurchase);
	
	
	/**
	 * 보유 아이템 숨김 등록삭제
	 * @param itemPurchase
	 * @return
	 */
	public int updateItemPurchaseHide(ItemPurchaseVO itemPurchase);
	
	/**
	 * 아이템 프리셋 목록
	 * @param userId
	 * @return
	 */
	public List<ItemPresetVO> readItemPresetList(@Param("userId") String userId);
	
	
	/**
	 * 아이템 프리셋 디테일 목록
	 * @param userId
	 * @return
	 */
	public List<ItemPresetDetailVO> readItemPresetDetail(@Param("userId") String userId);
	
	
	/**
	 * 프리셋 적용 Y로 수정
	 * @param userId, presetCode
	 * @return
	 */
	public int updateItemPresetY(@Param("userId") String userId, @Param("presetCode") String presetCode);
	
	
	/**
	 * 프리셋 적용 N으로 수정
	 * @param userId, presetCode
	 * @return
	 */
	public int updateItemPresetN(@Param("userId") String userId, @Param("presetCode") String presetCode);
	
	
	
}
