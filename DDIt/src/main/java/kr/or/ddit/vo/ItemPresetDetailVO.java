package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = {"detailNo", "itemPresetCode"})
public class ItemPresetDetailVO {
	@NotNull @Min(0) 
	private Long detailNo;
	@NotBlank @Size(max=20) 
	private String itemPresetCode;
	@NotBlank @Size(max=20) 
	private String itemCode;
	
	private ItemVO item;
	
	private GrAtchFileVO gafile;
	
	private String userName;

}
