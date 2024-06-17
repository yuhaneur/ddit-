package kr.or.ddit.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class AdminVO {

	@NotBlank
	@Size(max = 30)
	private String userId;
	@Size(max = 30)
	private String adminName;
}
