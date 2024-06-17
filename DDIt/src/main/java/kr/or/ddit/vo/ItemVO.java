package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "itemCode")
public class ItemVO {
	@NotBlank
	@Size(max = 20)
	private String itemCode;
	@NotNull
	@Min(0)
	private Long itemCtgry;
	@NotBlank
	@Size(max = 30)
	private String itemNm;
	@NotBlank
	private String itemEffect;
	@NotNull
	@Min(0)
	private Long itemPc;
	@NotBlank
	@Size(max = 7)
	private String itemRgsDe;
	@NotBlank
	@Size(max = 7)
	private String itemEndDe;
	@NotBlank
	@Size(max = 2)
	private String itemDeleteAt;
	@Size(max=50) 
	private String itemImge;

	private int likeCnt;
	private String itemMyitem;

	private ItemLikeVO itemLike;

	private CmmnCodeVO itemCmmn;

}
