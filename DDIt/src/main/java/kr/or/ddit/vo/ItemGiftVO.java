package kr.or.ddit.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "itemGiftCode")
public class ItemGiftVO {
	@NotBlank @Size(max=20) 
	private String itemGiftCode;
	@NotBlank @Size(max=30) 
	private String senderUserId;
	@NotBlank @Size(max=30) 
	private String addrseUserId;
	@NotBlank @Size(max=20) 
	private String itemCode;
	@NotBlank @Size(max=7) 
	private String itemGiftDt;
	@Size(max=2) 
	private String itemBkmk;
	@Size(max=2) 
	private String itemHide;
	
	private ItemVO item;
	
}
