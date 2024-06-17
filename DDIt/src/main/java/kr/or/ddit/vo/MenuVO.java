package kr.or.ddit.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class MenuVO {

	@NotBlank
	@Size(max = 20)
	private String menuId;
	@Size(max = 20)
	private String upperMenuId;
	@Size(max = 50)
	private String menuSe;
	private Long menuOrdr;
	@Size(max = 50)
	private String menuName;
	@Size(max = 500)
	private String menuDesc;
	@Size(max = 100)
	private String menuUrl;
	@Size(max = 1)
	private String useAt;
}
