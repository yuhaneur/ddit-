package kr.or.ddit.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "lectId")
public class LectStudentVO {
	@NotBlank
	@Size(max = 10)
	private String lectId;
	@NotBlank
	@Size(max = 30)
	private String userId;
}
