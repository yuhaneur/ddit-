package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class EvaluationVO {
	@NotNull @Min(0) private Long evaluationNo;
	 private Long tenacityScore;
	 private Long humanRelationshipScore;
	 private Long sincerityScore;
	@Size(max=2000) private String memo;
	@NotBlank @Size(max=30) private String userId;
}
