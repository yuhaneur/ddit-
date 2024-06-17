package kr.or.ddit.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "itemPurchaseCode")
public class ItemPurchaseVO {
	@NotBlank @Size(max=20) 
	private String itemPurchaseCode;
	@NotBlank @Size(max=30) 
	private String userId;
	@NotBlank @Size(max=20) 
	private String itemCode;
	@NotBlank @Size(max=7) 
	private String itemPurchaseDt;
	@Size(max=2) 
	private String itemBkmk;
	@Size(max=2) 
	private String itemHide;

	private String tableName;
	
	private ItemVO item;
	
	private CmmnCodeVO cmmn;
}
