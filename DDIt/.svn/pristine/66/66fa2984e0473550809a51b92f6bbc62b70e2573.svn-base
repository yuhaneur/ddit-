package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "grantNo")
public class GrantsVO {
	@NotNull
	@Min(0)
	private Long grantNo;
	@NotBlank
	@Size(max = 30)
	private String userId;
	@Size(max = 10)
	private String classId;
	@Size(max = 10)
	private String attendanceStandard;
	@Size(max = 10)
	private String evaluationStandard;
	@Size(max = 10)
	private String assignmentStandard;
	@NotBlank
	@Size(max = 1)
	private String consentAt;
}
