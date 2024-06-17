package kr.or.ddit.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class QustnrAnswerDetailGrVO {
	@NotBlank @Size(max=20) private String qustnrAnswerCodeGr;
	@Size(max=20) private String qustnrAnswerCodeNm;
}
