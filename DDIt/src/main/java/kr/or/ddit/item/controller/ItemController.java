package kr.or.ddit.item.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.item.service.ItemService;
import kr.or.ddit.point.service.PointService;
import kr.or.ddit.vo.CmmnCodeVO;
import kr.or.ddit.vo.FollowVO;
import kr.or.ddit.vo.ItemGiftVO;
import kr.or.ddit.vo.ItemLikeVO;
import kr.or.ddit.vo.ItemPurchaseVO;
import kr.or.ddit.vo.ItemVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/item")
public class ItemController {

	@Autowired
	private ItemService iService;
	@Autowired
	private PointService pService;
	
	
	@GetMapping
	public String item(){
		return "item/itemShop";
	}
	
	
	@GetMapping("/list")
	@ResponseBody
	public List<ItemVO> itemList(long ctgry, Authentication authentication) {
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		
		List<ItemVO> itemList = iService.readItemList(userId, ctgry);
		return itemList;
	}
	
	
	@GetMapping("/cmmnList")
	@ResponseBody
	public List<CmmnCodeVO> cmmnList(){
		List<CmmnCodeVO> cmmnList = iService.readItemCmmnList();
		return cmmnList;
	}
	
	
	@GetMapping("/one")
	@ResponseBody
	public ItemVO itemOne(String itemCode, Authentication authentication) {
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		ItemVO itemOne = iService.readItem(itemCode, userId);
		return itemOne;
	}
	
	
	@GetMapping("/point")
	@ResponseBody
	public int myPoint(Authentication authentication) {
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		int point = pService.readPoint(userId);
		return point;
	}
	
	@PostMapping("/like")
	@ResponseBody
	public void insertItemLike(ItemLikeVO itemLike, Authentication authentication) {
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		itemLike.setUserId(userId);
		iService.creatItemLike(itemLike);
		
	}
	
	
	@PostMapping("/purchase")
	@ResponseBody
	public String insertItemPurchase(ItemPurchaseVO itemPurchase, Authentication authentication) throws UnsupportedEncodingException {
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		itemPurchase.setUserId(userId);
		int res = iService.creatItemPurchase(itemPurchase);
		if(res==1) {
			return "success";
		}else {
			return "fail";
		}
		
	}
	
	@PostMapping("/gift")
	@ResponseBody
	public String insertItemGift(ItemGiftVO itemGift, Authentication authentication) throws UnsupportedEncodingException {
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		itemGift.setSenderUserId(userId);
		int res = iService.creatItemGift(itemGift);
		if(res==1) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	
	@GetMapping("/giftFollow")
	@ResponseBody
	public List<FollowVO> giftFollowList(String itemCode, Authentication authentication) {
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		List<FollowVO> giftFollowList = iService.readGiftFollowList(userId, itemCode);
		log.info("list : {}", giftFollowList);
			return giftFollowList;
	}
	
	
	
}
