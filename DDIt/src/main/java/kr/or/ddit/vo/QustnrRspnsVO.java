package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = {"qustnrNo","qustnrQuestionsNo","qustnrAnswerNo","userId"})
public class QustnrRspnsVO {
	@NotBlank @Size(max=30) private String userId;
	@NotNull @Min(0) private Long qustnrAnswerNo;
	@NotNull @Min(0) private Long qustnrQuestionsNo;
	@NotNull @Min(0) private Long qustnrNo;
}
