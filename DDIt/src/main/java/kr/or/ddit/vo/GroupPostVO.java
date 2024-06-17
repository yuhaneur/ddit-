package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "grPostNo")
public class GroupPostVO {
	@NotNull
	@Min(0)
	private Long grPostNo;
	@NotNull
	@Min(0)
	private Long grBoardNo;
	@Size(max = 30)
	private String userId;
	@NotBlank
	@Size(max = 30)
	private String grPostCategory;
	@Size(max = 80)
	private String grPostSj;
	@Size(max = 4000)
	private String grPostCn;
	@NotBlank
	@Size(max = 7)
	private String grPostWritingDe;
	private Long atFileNo;
	@NotNull
	@Min(0)
	private Long grPostReadco;
	@NotBlank
	@Size(max = 1)
	private String grPostDeleteAt;
}
