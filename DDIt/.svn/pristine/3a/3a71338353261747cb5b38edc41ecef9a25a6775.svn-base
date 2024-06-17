package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = {"pointCode", "userId"})
public class PointHistoryVO {
	@NotBlank @Size(max=20) 
	private String pointCode;
	@NotBlank @Size(max=30) 
	private String userId;
	@NotBlank @Size(max=7) 
	private String pointDt;
	@NotBlank @Size(max=20) 
	private String pointClNm;
	@NotNull @Min(0) 
	private Long point;
	@NotNull @Min(0) 
	private Long pointAccmlt;
	
	private PointClVO pointCl;
	
}
