package kr.or.ddit.item.service;

import java.util.List;

import kr.or.ddit.vo.CmmnCodeVO;
import kr.or.ddit.vo.FollowVO;
import kr.or.ddit.vo.ItemGiftVO;
import kr.or.ddit.vo.ItemLikeVO;
import kr.or.ddit.vo.ItemPurchaseVO;
import kr.or.ddit.vo.ItemVO;

/**
 * @author sooji
 * 아이템 상점 Business Logic Object interface 
 *
 */
public interface ItemService {
	
	/**
	 * 신규 아이템 생성
	 * @param item
	 */
	public void createItem(ItemVO item);
	
	/**
	 * 특정 아이템 조회
	 * @param itemCode
	 * @return
	 */
	public ItemVO readItem(String itemCode, String userId);
	
	/**
	 * 아이템 전체 조회
	 * @param userId
	 * @return
	 */
	public List<ItemVO> readItemList(String userId, long ctgry);
	
	
	/**
	 * 아이템 카테고리 공통코드 목록 조회
	 * @return
	 */
	public List<CmmnCodeVO> readItemCmmnList();
	
	
	/**
	 * 아이템 좋아요 등록, 취소
	 * @param itemLike
	 * @return
	 */
	public int creatItemLike(ItemLikeVO itemLike);
	
	
	/**
	 * 아이템 구매
	 * @param itemPurchase
	 * @return
	 */
	public int creatItemPurchase(ItemPurchaseVO itemPurchase);
	
	
	/**
	 * 아이템 선물
	 * @param itemGift
	 * @return
	 */
	public int creatItemGift(ItemGiftVO itemGift);
	
	
	/**
	 * 아이템 선물 가능 친구목록
	 * @param userId, itemCode
	 * @return
	 */
	public List<FollowVO> readGiftFollowList(String userId, String itemCode);
	
	
	

}
