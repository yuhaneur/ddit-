package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class QustnrRspnsListVO {
	private String[] userId;
	private Long[] qustnrAnswerNo;
	private Long[] qustnrQuestionsNo;
	private Long[] qustnrNo;
}
