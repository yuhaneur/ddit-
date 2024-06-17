package kr.or.ddit.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "itemPresetCode")
public class ItemPresetVO {
	@NotBlank @Size(max=20) 
	private String itemPresetCode;
	@NotBlank @Size(max=30) 
	private String userId;
	@NotBlank @Size(max=2) 
	private String itemPresetApplc;
	@Size(max=20) 
	private String itemPresetNm;
	
}
