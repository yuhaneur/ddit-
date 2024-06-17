package kr.or.ddit.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "lectId")
public class LectVO {
	@NotBlank
	@Size(max = 10)
	private String lectId;
	@NotBlank
	@Size(max = 30)
	private String userId;
	@NotBlank
	@Size(max = 50)
	private String lectSj;
	@Size(max = 2000)
	private String lectCn;
	@Size(max = 30)
	private String lectPlace;
	@NotBlank
	@Size(max = 7)
	private String lectBeginDe;
}
