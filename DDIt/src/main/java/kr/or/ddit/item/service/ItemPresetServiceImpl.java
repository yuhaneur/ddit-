package kr.or.ddit.item.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ddit.item.dao.ItemPresetDAO;
import kr.or.ddit.item.dao.ItemPresetDetailDAO;
import kr.or.ddit.item.dao.ItemPurchaseDAO;
import kr.or.ddit.vo.ItemPresetDetailVO;
import kr.or.ddit.vo.ItemPresetVO;
import kr.or.ddit.vo.ItemPurchaseVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ItemPresetServiceImpl implements ItemPresetService {
	
	private final ItemPurchaseDAO itemPurchaseDao;
	private final ItemPresetDAO itemPresetDao;
	private final ItemPresetDetailDAO itemPresetDetailDao;

	
	@Override
	public List<ItemPurchaseVO> readItemStorage(String userId, String hide, Long ctgry) {
		List<ItemPurchaseVO> itemStorage = itemPurchaseDao.selectItemStorage(userId, hide, ctgry);
		return itemStorage;
	}

	@Override
	public ItemPurchaseVO readItemStorageOne(String userId, String itemCode) {
		ItemPurchaseVO itemPurchas = itemPurchaseDao.selectItemStorageOne(userId, itemCode);
		return itemPurchas;
	}
	
	
	@Override
	public int updateItemPresetDetail(String userId, String itemCode, String detailNo) {
		int cnt = itemPresetDetailDao.updateItemPresetDetail(userId, itemCode, detailNo);
		return cnt;
	}
	
	@Override
	public int updateItemPresetDetailRandom(String userId, ItemPresetDetailVO preset) {
		int cnt = itemPresetDetailDao.updateItemPresetDetailRandom(userId, preset);
		return cnt;
	}
	
	
	@Override
	public int deleteItemPresetDetailOne(String presetCode, String itemCode) {
		int cnt = itemPresetDetailDao.deleteItemPresetDetailOne(presetCode, itemCode);
		return cnt;
	}
	
	@Override
	public int deleteItemPresetDetail(String presetCode) {
		int cnt = itemPresetDetailDao.deleteItemPresetDetail(presetCode);
		return cnt;
	}
	
	
	@Override
	public int updateItemPurchaseBkmk(ItemPurchaseVO itemPurchase) {
		String table1 = "ITEM_GIFT";
		String table2 = "ITEM_PURCHASE";
		String userId = itemPurchase.getUserId();
		String itemCode = itemPurchase.getItemCode();
		String tName = readItemStorageOne(userId,itemCode).getItemPurchaseCode();
		
		if(tName.contains("GIFT")) {
			itemPurchase.setTableName(table1);
		}else if(tName.contains("PURC")) {
			itemPurchase.setTableName(table2);
		}
		
		int cnt = itemPurchaseDao.updateItemPurchaseBkmk(itemPurchase);
		return cnt;
	}

	
	@Override
	public int updateItemPurchaseHide(ItemPurchaseVO itemPurchase) {
		int cnt = itemPurchaseDao.updateItemPurchaseHide(itemPurchase);
		return cnt;
	}

	
	@Override
	public List<ItemPresetVO> readItemPresetList(String userId) {
		List<ItemPresetVO> itemPreset = itemPresetDao.selectItemPresetList(userId);
		return itemPreset;
	}
	
	
	@Override
	public List<ItemPresetDetailVO> readItemPresetDetail(String userId){
		List<ItemPresetDetailVO> itemPresetDetail = itemPresetDetailDao.selectItemPresetDetail(userId);
		return itemPresetDetail;
	}

	
	@Override
	public int updateItemPresetY(String userId, String presetCode) {
		int cnt = itemPresetDao.updateItemPresetY(userId, presetCode);
		if(cnt > 0) {
			updateItemPresetN(userId, presetCode);
		}
		return cnt;
	}

	
	@Override
	public int updateItemPresetN(String userId, String presetCode) {
		int cnt = itemPresetDao.updateItemPresetN(userId, presetCode);
		return cnt;
	}

	
}
