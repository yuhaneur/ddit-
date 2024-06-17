package kr.or.ddit.item.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ddit.item.dao.ItemDAO;
import kr.or.ddit.item.dao.ItemGiftDAO;
import kr.or.ddit.item.dao.ItemLikeDAO;
import kr.or.ddit.item.dao.ItemPurchaseDAO;
import kr.or.ddit.point.dao.PointHistoryDAO;
import kr.or.ddit.vo.CmmnCodeVO;
import kr.or.ddit.vo.FollowVO;
import kr.or.ddit.vo.ItemGiftVO;
import kr.or.ddit.vo.ItemLikeVO;
import kr.or.ddit.vo.ItemPurchaseVO;
import kr.or.ddit.vo.ItemVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ItemServiceImpl implements ItemService {
	
	private final ItemDAO itemDao;
	private final ItemLikeDAO itemLikeDao;
	private final ItemPurchaseDAO itemPurchaseDao;
	private final PointHistoryDAO pointDao;
	private final ItemGiftDAO itemGiftDao;
	
	
	@Override
	public void createItem(ItemVO item) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ItemVO readItem(String itemCode, String userId) {
		ItemVO item = itemDao.selectItem(itemCode, userId);
		return item;
	}

	@Override
	public List<ItemVO> readItemList(String userId, long ctgry) {
		List<ItemVO> itemList = itemDao.selectItemList(userId, ctgry);
		return itemList;
	}

	@Override
	public int creatItemLike(ItemLikeVO itemLike) {
		int cnt = itemLikeDao.insertItemLike(itemLike);
		return cnt;
	}

	@Override
	public int creatItemPurchase(ItemPurchaseVO itemPurchase) {
		String userId = itemPurchase.getUserId();
		String itemCode = itemPurchase.getItemCode();
		int point = pointDao.selectPoint(userId);
		ItemVO itemVo = itemDao.selectItem(itemCode, userId);
		long itemPc = itemVo.getItemPc();
		
		if(point>=itemPc) {
			itemPurchaseDao.insertItemPurchase(itemPurchase);
			return 1;
		}else {
			return 0;
		}
		
	}

	@Override
	public int creatItemGift(ItemGiftVO itemGift) {
		String userId = itemGift.getSenderUserId();
		String itemCode = itemGift.getItemCode();
		int point = pointDao.selectPoint(userId);
		ItemVO itemVo = itemDao.selectItem(itemCode, userId);
		long itemPc = itemVo.getItemPc();
		
		if(point>=itemPc) {
			itemGiftDao.insertItemGift(itemGift);
			return 1;
		}else {
			return 0;
		}
	}

	@Override
	public List<FollowVO> readGiftFollowList(String userId, String itemCode) {
		List<FollowVO> follow = itemGiftDao.selectGiftFollowList(userId, itemCode);
		return follow;
	}

	@Override
	public List<CmmnCodeVO> readItemCmmnList() {
		List<CmmnCodeVO> cmmnList = itemDao.selectItemCmmnList();
		return cmmnList;
	}



}
