package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = {"qustnrNo","qustnrQuestionsNo","qustnrAnswerNo"})
public class QustnrAnswerTyVO {
	@NotNull @Min(0) private Long qustnrAnswerNo;
	@NotNull @Min(0) private Long qustnrQuestionsNo;
	@NotNull @Min(0) private Long qustnrNo;
	@NotNull @Min(0) private String questionnaireAnswer;  // 설문답변내용
	private int count; // 통계
}
