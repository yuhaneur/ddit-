package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "grBoardNo")
public class GroupBoardVO {
	@NotNull
	@Min(0)
	private Long grBoardNo;
	@NotBlank
	@Size(max = 30)
	private String userId;
	@Size(max = 80)
	private String grBoardName;
	@Size(max = 30)
	private String grBoardCategory;
	@Size(max = 1000)
	private String grBoardDesc;
	private Long grBoardRecruitment;
	@NotBlank
	@Size(max = 1)
	private String grBoardDeleteAt;
}
