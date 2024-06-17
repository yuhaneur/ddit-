package kr.or.ddit.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "itemLikeCode")
public class ItemLikeVO {
	@NotBlank @Size(max=20) 
	private String itemLikeCode;
	@NotBlank @Size(max=20) 
	private String itemCode;
	@NotBlank @Size(max=30) 
	private String userId;
	
	
}
