package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "grAnswerNo")
public class GroupAnswerVO {
	@NotNull
	@Min(0)
	private Long grAnswerNo;
	@NotNull
	@Min(0)
	private Long grAnswerNo2;
	@NotBlank
	@Size(max = 30)
	private String userId;
	@NotNull
	@Min(0)
	private Long postNo;
	@NotBlank
	@Size(max = 100)
	private String grAnswerCn;
	@NotBlank
	@Size(max = 7)
	private String grAnswerWritingDate;
	@Size(max = 7)
	private String grAnswerUpdateDe;
}
