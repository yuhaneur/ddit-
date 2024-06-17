package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "pointClCode")
public class PointClVO {
	@NotBlank @Size(max=20) 
	private String pointClCode;
	@NotBlank @Size(max=30) 
	private String pointClNm;
	@NotNull @Min(0) 
	private Long point;
	@NotBlank @Size(max=2) 
	private String pointClAt;
}
