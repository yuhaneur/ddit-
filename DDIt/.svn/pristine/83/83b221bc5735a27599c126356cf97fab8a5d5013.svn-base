package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class QustnrAnswerDetailVO {
	@NotNull @Min(0) private Long qustnrAnswerNo;
	@NotBlank @Size(max=20) private String qustnrAnswerCodeGr;
	 private Long qustnrAnswerOrdr;
	@Size(max=100) private String qustnrAnswerCn;
}
