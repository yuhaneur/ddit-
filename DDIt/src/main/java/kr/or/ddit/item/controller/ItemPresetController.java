package kr.or.ddit.item.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.item.service.ItemPresetService;
import kr.or.ddit.item.service.ItemService;
import kr.or.ddit.vo.CmmnCodeVO;
import kr.or.ddit.vo.ItemPresetDetailVO;
import kr.or.ddit.vo.ItemPresetVO;
import kr.or.ddit.vo.ItemPurchaseVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/preset")
public class ItemPresetController {

	@Autowired
	private ItemPresetService preService;
	@Autowired
	private ItemService iService;
	
	@GetMapping()
	public String preset(
			Model model
	){
		List<CmmnCodeVO> itemCmmnList = iService.readItemCmmnList();
		model.addAttribute("itemCmmnList", itemCmmnList);
		return "item/itemPreset";
	}
	
	
	@GetMapping("/Storage")
	@ResponseBody
	public List<ItemPurchaseVO> itemStorageList(String hide, Long ctgry, Authentication authentication){
		
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		
		List<ItemPurchaseVO> storageList = preService.readItemStorage(userId, hide, ctgry);
		return storageList;
	}
	
	
	@GetMapping("/presetList")
	@ResponseBody
	public List<ItemPresetVO> itemPresetList(Authentication authentication){
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		
		List<ItemPresetVO> itemPresetList = preService.readItemPresetList(userId);
		return itemPresetList;
	}
	
	
	@GetMapping("/presetDetail")
	@ResponseBody
	public List<ItemPresetDetailVO> itemPresetDetail(Authentication authentication){
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		
		List<ItemPresetDetailVO> itemPresetDetailList = preService.readItemPresetDetail(userId);
		log.info("list : {}", itemPresetDetailList);
		
		return itemPresetDetailList;
	}
	
	
	@PostMapping("/presetY")
	@ResponseBody
	public void itemPresetY(String presetCode, Authentication authentication) {
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		preService.updateItemPresetY(userId, presetCode);
	}
	
	
	@PostMapping("/bkmk")
	@ResponseBody
	public void itemBkmk(ItemPurchaseVO itemPurchase, Authentication authentication) {
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		
		itemPurchase.setUserId(userId);
		preService.updateItemPurchaseBkmk(itemPurchase);
	}
	
	
	@PostMapping("/presetDetailUp")
	@ResponseBody
	public void itemPresetDetailUp(String itemCode, String detailNo, Authentication authentication) {
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		
		preService.updateItemPresetDetail(userId, itemCode, detailNo);
	}
	
	
	@PostMapping("/presetDetailRandomUp")
	@ResponseBody
	public void itemPresetDetailRandomUp(ItemPresetDetailVO preset, Authentication authentication) {
		String userId ="";
		if(authentication !=null) {
			userId = authentication.getName();
		}
		
		preService.updateItemPresetDetailRandom(userId, preset);
	}
	
	
	@PostMapping("/presetDetailDelOne")
	@ResponseBody
	public void itemPresetDetailDelOne(String presetCode, String itemCode) {
		preService.deleteItemPresetDetailOne(presetCode, itemCode);
	}
	
	@PostMapping("/presetDetailDel")
	@ResponseBody
	public void itemPresetDetailDel(String presetCode) {
		preService.deleteItemPresetDetail(presetCode);
	}
	
}




