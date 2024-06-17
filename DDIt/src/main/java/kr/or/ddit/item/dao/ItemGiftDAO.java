package kr.or.ddit.item.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.FollowVO;
import kr.or.ddit.vo.ItemGiftVO;

@Mapper
public interface ItemGiftDAO {
	/**
	 * 아이템선물 등록
	 * @param itemGift
	 * @return 등록된 레코드 수
	 */
	public int insertItemGift(ItemGiftVO itemGift);
	
	
	/**
	 * 아이템 선물목록 조회
	 * @param userId, paging 
	 * @return 존재하지 않으면, list.size()==0
	 */
	public List<ItemGiftVO> selectItemGiftList(ItemGiftVO userId);
	
	
	/**
	 * @param userId
	 * @return
	 */
	public List<FollowVO> selectGiftFollowList(@Param("userId") String userId, @Param("itemCode")String itemCode);
	
	public int SelectTotalRecord();
	
		
	
}
